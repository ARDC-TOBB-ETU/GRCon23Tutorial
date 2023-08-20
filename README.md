# GRCon23Tutorial
Introductory Tutorial for SDR and GNU Radio Beginners

This course consists of many labs and each lab is built on Jupyter Notebook. Jupyter Notebook is chosen to present information and to guide participant what to do. Jupyter makes the course interactive and we will explore signals around in a hands-on fashion. Every notebook contains tasks that participant will attempt.  

## Installation
First, go to the GitHub page that contains installation instructions and jupyter notebooks. You can search GitHub for "ARDC-TOBB-ETU", to find the repository "GRCon23Tutorial". Download the zip file or clone the repo into your system. After that extract it if necessary, then change into the folder.  

We will be using conda to install tools necessary for the rest of the workshop. I prefer installing miniconda which is faster and it includes less packages. If you have conda (miniconda or anaconda) already installed you may skip conda installation section, jump into create an environment. 

Installation depends on the operating system you use. So, follow one of the following sections depending on your system. Installation steps for Linux and Mac users are nearly the same. 
```
If you don't want to touch your system at all, you can use [DragonOS_FocalX](https://sourceforge.net/projects/dragonos-focal/files/latest/download) live USB boot option. 
The image already contains many popular tools related to SDR world. 
After you boot your system up, connect to the WiFi and then just proceed to the Linux installation section to complete the installation. 
``` 

### Windows
Install miniforge for Windows from this [address](https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Windows-x86_64.exe). This will install base environment with Python 3.9. For Windows, double click on the downloaded installer executable and follow the prompts. By default, this will install miniforge to your user directory at C:\Users\USERNAME\miniforge3 (if you choose install only for me, **preferred**) or C:\ProgramData\miniforge3 (in case you choose install for all users) and add a "Miniforge Prompt" entry to your start menu. Running the "Miniforge Prompt" should bring up a console window where your base conda environment is activated and you can use the conda command. 

So, first start a miniforge prompt, this will bring up a console with (base) at the beginning. Create an environment using command below. This will install lots of packets in verbose mode. So you will see lots of messages in your terminal. It will take a few minutes to finish, depending on your speed and your PC configuration (3-4 minutes in my case). 

    conda config --append channels conda-forge
    conda create --name GRCon23 --file requirements.txt

### Linux and MacOS
Run `./install.sh`. This will download and install miniforge, create an environment, then install all necessary packages for you. Mac users should install Homebrew to use wget. wget can be installed with `homebrew install wget`. 

## Opening Notebooks
We have to first activate our newly installed environment. If you are using Windows just open a miniforge command prompt. In Linux /MacOS you need a `source` command for this. After `conda activate` command gets executed, note that (base) at the beggining of the prompt will change into (GRCon23). After GRCon23 environment is activated, we can start jupyter-lab. 
    
    source "${HOME}/conda/etc/profile.d/conda.sh"
    conda activate GRCon23
    jupyter-lab

## Using RTL-SDRs
In order to use RTL-SDR within GNU Radio, drivers must first be installed. This is described in the SDR notebook. We will use zadig software for Windows. Linux users may `blacklist` RTL so that default DVB-T driver is not loaded when dongle is plugged in.  
    
## Labs

You can find brief lab content in the following table. 

| Lab Title             | Description |
| :-------------------- | :----------- |
| **Lab DSP** | GNU Radio will be introduced. It will be leveraged to generate mono/stereo sound, make filtering on generated sound. Sound card will be utilized to learn fundamental DSP concepts like sampling rate, aliasing, filtering (FIR, cutoff frequency, transient range, taps), decimation. |
| **Lab SDR** | SDR hardware used throughout the labs is introduced: RTL-SDR. General purpose SDR application gqrx is explored to receive samples from RTL-SDR. Spectrum monitoring (live and waterfall), demodulation is illustrated with gqrx.   |
| **Lab WBFM** | WBFM signal may contain more than one signal: mono, stereo, sub-channels, HD, and a data channel. Flow-graphs are created to demodulate WBFM signals in GNU Radio. Mono/stereo sound, single/multi channel, real-time demodulation examples will be presented.  |

As you complete the labs, you will be able to
* Understand core concepts in communication systems like sampling theorem, bandwidth, frequency bands, modulation types
* Use SDR to explore signals around
* Have an idea behind general purpose SDR applications
* Know how IQ data is stored and parsed
* Apply signal processing in Python in order to demodulate both analog and digital signals
* Gather knowledge on WBFM signals and demodulation
