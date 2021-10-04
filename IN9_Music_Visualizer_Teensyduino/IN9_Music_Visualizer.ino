
#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <SerialFlash.h>
#include <math.h>

int min_output = 25;
int max_output = 230; //maxiumum 0-255 PWM output for tubes, a tweakable value
//float exp_scalar = log(max_output); // exp scalar calculated from max_output. the maximum input to the exponential scaling function is expected to be 2.0f. saturation of max_output will be dealt with.

int increment = 4;
int decrement = 1;

typedef struct { // each channel is a frequency band, with one output tube, and other scalars for a pleasing visualization.
  int pin; // output pin
  int freq; // output pin freq
  int n_lo; // lower bound of FFT data
  int n_hi; // higher bound of FFT data
  float scale; // adjustable scale for more "sensitive" or noisy bands, default 1
  float level[4]; // an FIFO array of the past 16 values. The FFT is already oversampled, but this will help
  int out; // the output value, 0-255.

  void ch_init() {
    analogWriteFrequency(pin, freq);
  }

  void ch_write() {
    analogWrite(pin, out);
  }

  void ch_decrement() {
    out--;
    if (out < min_output) out = min_output;
    analogWrite(pin, out);
  }

  void ch_update(AudioAnalyzeFFT1024 fft1024) {
    int tmp_out = fft1024.read(n_lo, n_hi) * scale * 1024;

    if (tmp_out > max_output) tmp_out = max_output;
    if (tmp_out < min_output) tmp_out = min_output;

    if (tmp_out < out) {
      if (out >= 150) {
        out = out - decrement * 2;
      }
      else {
        out = out - decrement;
      }
    }
    if (tmp_out > out) {
      if (out >= 150) {
        out = out + increment / 4;
      }
      else {
        out = out + increment;
      }
    }
    if (tmp_out = out) out = tmp_out;
  }
} ch;

ch channel[11] = {
  {30,  1000,   0,    2,    0.8,    0,    0}, //C0 to F2
  {29,  1000,   3,    4,    0.8,    0,    0}, //F2 to F3
  {10,  1000,   5,    6,    1,    0,    0}, //F3 to C4
  {9,   1000,   6,    8,    1,    0,    0}, //C4 to C4
  {8,   1000,   8,    10,   1,    0,    0}, //C4 to F4
  {7,   1000,   9,   12,   1,    0,    0},  // F4 to A4
  {6,   1000,   12,   18,   1,    0,    0}, // A4 to C5
  {5,   1000,   18,   24,   1,    0,    0},  // C5 to G5
  {4,   1000,   24,   48,   1,    0,    0}, //G5 to C6
  {3,   1000,   48,   96,  1,    0,    0}, //C6 to C7
  {2,   1000,   96,  192,  0.8,    0,    0} //C7 and >
};

ch *pt;

// GUItool: begin automatically generated code
AudioInputAnalog         adc1;
AudioAnalyzePeak         peak1;
AudioAnalyzeFFT1024      fft;
AudioConnection          patchCord1(adc1, fft);
AudioConnection          patchCord2(adc1, peak1);
// GUItool: end automatically generated code

void setup() {
  
  for (int i = 0; i < 11; i++) {
    pt = &channel[i];
    pt->ch_init();
  }
  pinMode(13, OUTPUT);
  digitalWrite(13, HIGH);

  AudioMemory(12);
  fft.windowFunction(AudioWindowHanning1024);
  
  Serial.begin(9600);
  Serial.println("Setup Complete!");
}

void loop() {

  if (fft.available()) {
    if (peak1.read() > 0.1) {
      for (int i = 0; i < 11; i++) {
        pt = &channel[i];
        pt->ch_update(fft);
        pt->ch_write();
      }
    }
    else {
      for (int i = 0; i < 11; i++) {
        pt = &channel[i];
        pt->ch_decrement();
      }
    }
  }
  digitalWrite(13, !digitalRead(13));
  delay(7);
}
