---
### Responsible: [[ Luke Cattle | Team-Members#luke-cattle ]] , [[ Ben Peall | Team-Members#benjamin-peall ]]
---
### Completion: 
<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Update%20github%20percentage%20bar/100%25%20updated.PNG">
</p>

---

### Introduction:

### [Click to Play](https://www.youtube.com/watch?v=SX-lIvgwLjA)
<a href="https://www.youtube.com/watch?v=SX-lIvgwLjA" target="_blank"><img src="https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Video%20Demos/Video%20Screen%20Shots/BeaconDetectionSC.jpg" 
alt="Jasper 'Rotate Left Command" width="800" height="400" border="10" /></a>

**Figure 1. LED Beacon Detection Demonstration**


As part of the mission scenario set out by the PST, Team ICARUS is required to demonstrate their system has the capability of detecting and using two LED beacons to improve navigation of the mission environment.

The beacons are arranged in such a way as illustrated by Figure 1; which also provides a view of the beacons when they are aligned. Using this information available to us before the mission a system has been developed that allows the beacons to be used to guide the Tri-Track sub-system when it is navigating the canyon section. 

<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Beacons.png">

**Figure 2**

The Tri-Track system has the capability to follow a red LED/laser due to the laser gimbal system. It was decided the Tri-Track could also use this capability with slight alterations to follow and align itself correctly on the beacons.

Using a pi camera, the Tri-Track takes an image and analyses it for green and red. Once it has found both the green and red it will decide which is the best direction to go. Forwards, backwards, left or right. For the purpose of following the beacon; only forward, left and right will be implemented. 

This capability is also very similar to the Tri-Tracks adapted  [[ Cat and Mouse laser system | Cat-&-Mouse-Laser-System#responsible---ben-peall ]].


