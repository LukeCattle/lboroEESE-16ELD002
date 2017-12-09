
---
### Responsible: [[ Josh Crawford | Team-Members#josh-crawford ]] , [[ Chris Gunn | Team-Members#christopher-gunn ]]
---
# Black Box Acoustic Detection
### Completion: 
<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Update%20github%20percentage%20bar/60%25%20updated.PNG">
</p>

---
As part of the mission scenario there is a black box is capable of emitting three separate frequencies that must be detected using a microphone array. Using an array of microphones mounted on the DaNI robot acoustic localisation can be achieved. The microphones will measure the difference between the peak amplitudes of the signal that one microphone receives in comparison to the other microphone, this is illustrated in Figure 1. If the amplitude difference is above a certain threshold then the DaNI will turn right to face the black box more front on and if it is the negative value then the DaNI will turn to the left to reduce the value.
<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/micconceptdrawing.jpg">
</p>

#### Figure 1 - Concept Drawing


<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Speaker%20Frequency.jpg">
</p>

#### Figure 2 - Frequencies of the black box

The frequencies will be 600 Hz, 1500 Hz and 8000 Hz. The microphones will receive and amplify the signal as they have built in adjustable gain pots to increase the small signal. 
The DaNI will have three separate band pass filters with center frequencies being the three frequencies above. The cutoff frequencies will be 50 Hz either side of the center frequencies to keep the amount of noise to a minimum. 
The amplified and filtered signal will then be fed into the myRIO for processing. 

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/2.-passive-band-pass-filter-circuit.jpg">
</p>

#### Figure 3 - Filter Circuit 

In LabVIEW, the power spectral density is measured to check the black box signal. A voltage threshold is put in place to distinguish between the black box frequency and the background noise. If the voltage levels of the two microphones are above the thresholds the system will begin comparing the time delays of the microphones.   

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Power%20Sprectral%20Density.jpg">
</p>

#### Figure 4 - Power Spectrum Density






