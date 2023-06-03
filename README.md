# GRCon23Tutorial
Introductory Tutorial for SDR and GNU Radio Beginners

This course consists of many labs and each lab is built on Jupyter Notebook. Jupyter Notebook is chosen to present information and to guide participant what to do. Jupyter makes the course interactive and we will explore signals around in a hands-on fashion. Every notebook contains tasks that student will attempt. You can find solutions to the tasks in the solution notebook. 

## Labs

You can find brief lab content in the following table. 

| Lab Title             | Description |
| :-------------------- | :----------- |
| **Lab DSP** | GNU Radio will be introduced. It will be leveraged to generate mono/stereo sound, make filtering on generated sound. Sound card will be utilized to learn fundamental DSP concepts like sampling rate, aliasing, filtering (FIR, cutoff frequency, transient range, taps), decimation. |
| **Lab SDR** | SDR hardware used throughout the labs is introduced: RTL-SDR. General purpose SDR application gqrx is explored to receive samples from RTL-SDR. Spectrum monitoring (live and waterfall), demodulation is illustrated with gqrx.   |
| **Lab Python** | In this lab we will take a look at important Python libraries like numpy, scipy we'll see how to use them inside Jupyter Notebook interactive environment.  |
| **Lab WBFM** | WBFM signal may contain more than one signal: mono, stereo, sub-channels, HD, and a data channel. Flow-graphs are created to demodulate WBFM signals in GNU Radio. Mono/stereo sound, single/multi channel, real-time demodulation examples will be presented.  |

As you complete the labs, you will be able to
* Understand core concepts in communication systems like sampling theorem, bandwidth, frequency bands, modulation types
* Use SDR to explore signals around
* Have an idea behind general purpose SDR applications
* Know how IQ data is stored and parsed
* Apply signal processing in Python in order to demodulate both analog and digital signals
* Gather knowledge on WBFM signals and demodulation
