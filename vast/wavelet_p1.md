
# Signal Processing and Wavelet Analysis: Part One

## Motivation and Background

Time-series data refers to when data is collected over time, making the order of the data collection and not just the value important. Time-series data can include anything from atmospheric data over a year where the maximum and minimum values corresponds to specific days in a year. 

[Graph Temperature over a Year, nino3]

For the purpose of an example, imagine a short piece of music. Each note in the piece can be any note from A to F. Each note varies based on frequency to produce different pitches and notes. Frequency measures the amount of cycles over a single second. A higher frequency is associated with a higher pitch, like an A note, while a lower frequency is associated with a lower pitch, like a C notes.

| Note   | Freq   |
|--------|--------|
| A note | 440 hz |
| B note | 494 hz |
| C note | 261 hz |
| D note | 293 hz |
| E note | 330 hz |
| F note | 350 hz |


[Graph Frequency vs. Pitch]

However, just graphing that a B and a D note appear in the piece does not encapulsate all the information. What is the order? BDDB is very different from DDDDBD. This is the importance of time and order in data that is lost in first passes of signal processing with tools like Fourier Transform.

### Advantages (and Disadvantages) of Fourier Transform

The first step of processing new data includes developing a basic understanding of the kinds of frequencies that are present. Are there prevailing patterns? Is one frequency more dominant? How much of the dominant frequencies overcome background noise?

Fourier Transform is a tool that can be used to pull out frequencies from raw data. For a musical example, a Fourier Transform will return the frequencies of all the notes that are present. Jingle Bells is a simple muiscal piece that is taught to beginners and children since it can be entirely played with one hand: 

"Jingle Bells, Jingle Bells, Jingle All the Way" as EEE EEE EGCDE

[Graph of Raw Data]

A Fourier Transform of the first lyrics would return the frequency of the notes--E, G, D--with no information about their order or prevalance.

[Fourier Transform Graphed Example]

The frequency data, known as the frequency domain, contains a great deal of important information. Depending on the resolution of the raw data, Fourier Transform will return precision information about the frequencies present in the data. This precision comes at the cost of any information about the order that the frequencies appear.

There will always be a compromise between the precision of the time domain and the frequency domain. Knowing more precise information about the exact frequnecy of a signal means that less information can be known about the time and order of the data and the reverse is true. Fourier Transform prioritizes precision of the frequency domain at the cost of information about the time and order.

Fourier Transform remains one of the most popular and common methods to analysis signal information. It can provide a large swath of data and compared to other Fourier Transforms in different time frames can be used to compare how a frequency changes over time.

[Example of Frequency of Temperatures in Summer vs. Winter]

#### Porque los dos? Heisenberg's Uncertainty Principle!

Short-Time Fourier Transform: Sometimes also referred to as Windowed Fourier Transform

## A Solution for Time and Frequency: Wavelets

Instead of just returning the frequency of notes present in a piece of music, wavelet transform will return the frequency of the notes and the order in which they appear over time. But what about the Unvertainty Principle? It is not possible to known both the precise time and frequency domain of a raw signal. However, wavelets overcome this by returning both with a reduced precision in the resolution of frequency. Wavelets and wavelet transforms can be used to track both the frequency and the time in which a frequency is present. Wavelets are a time-frequency representation, and are capable of providing both information about the frequency of a signal as well as the time it appeared.

[Wavelet Example]

This is ideal for analysis time-series data. Returning to the music example, a wavelet transform would return not only the frequencies of a note (with less precision and a large possible range) but also the time step in the piece when it appeared.

[Musical Example]

No tool should be used in isolation. Using Wavelet analysis does not prevent running the same raw signal through a Fourier Transform. Instead, it can be thought as a step in the process of signal analysis. Starting with Fourier Transform, the low of resolution in Wavelet transform can be overcome.

## References

["Jingle Bells Sheet Music"](https://www.jamminwithyou.com/jwy-blog/jingle-bells-piano)
