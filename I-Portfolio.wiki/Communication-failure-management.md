---
### Responsible - [[ Jonathan Balakumar | Team-Members#jonathan-balakumar ]]
---

### Completion: 
<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Update%20github%20percentage%20bar/100%25%20updated.PNG">
</p>

---

### Dani Subsystem
The Dani robot features will be mostly autonomous with a few commands being sent to the DaNI from the control center, With the DaNI sending updated information back about the map. The DaNI has a protocol that will command it to save all the data being collected on the MyRio, as a text file, which can then be accessed through another VI. If the DaNI loses connection with the control center it will complete its current task and wait to see if the connection can be re-established. If the connection cant be re-established for a while the system will reboot. At this point the DaNI can access the saved text file to continue from its last position. 

The data is saved in the order of: 
1. DaNI Location
2. DaNI Angle
3. Map Dimensions
4. Map

### Tri-Track/Laser Navigation Subsystems
The Tri-Track is being navigated by the laser navigation subsystem, whilst also using its camera to identify items such as the black box. The issue that may arise is the Tri-Track may lose sight of the laser mark it is meant to follow; this is where we will need to have a protocol for the laser to relocate the Tri-Track. Once the Tri-Track loses the laser it will send an error to laser and allow it to calculate the last moment they were working; this will then prompt the laser to go back to the last position the system was fully functioning and this should solve the issue.

In the case that the laser/gimbal navigation subsystem loses connection with the central system (which it receives the data to guide the tri-track), there is a wired joystick onto the control board, which will allow manual navigation (by a user) of the laser and therefore the tri-track.

---