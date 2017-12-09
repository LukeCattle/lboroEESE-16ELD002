---
### Responsible - [[ Jonathan Balakumar | Team-Members#jonathan-balakumar ]], [[ Callum Newman | Team-Members#callum-newman]]
---
# Navigation using the laser
---
### Completion: 
<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Update%20github%20percentage%20bar/100%25%20updated.PNG">
</p>

---

### [Click to Play](https://www.youtube.com/watch?v=AgW6seKAQSM&feature=youtu.be)
<a href="https://www.youtube.com/watch?v=AgW6seKAQSM&feature=youtu.be" target="_blank"><img src="https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Video%20Demos/Video%20Screen%20Shots/LaserGimbleSC.jpg" 
alt="Jasper 'Rotate Left Command" width="800" height="400" border="10" /></a>

## Where does laser get the route data from?
The route will be calculated automatically by the central system which will then relay the route to the gimbal system to navigate the laser accordingly. The program defined in the section above is the source of the data that will be given to the ROV laser system to move the laser into the required position.

## How will the laser navigate the Tri-Track system?
The Tri-Track will use a pi camera to identify and locate the laser from the ROV laser guidance system. The robot will then follow the laser guided path like a 'cat and mouse' system. 

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/laser%20dot%20concept.PNG">
</p>

#### Figure 1. Laser Navigation on Tri-Track System

## Where will this system be mounted?
This system will be mounted above the map in a position that the laser point can be able to navigate into every part of the map without being blocked or reflected by other objects/obstacles. 

A gimbal mount has been manufactured for the two servos which control the system and the laser. Figure 1 shows 3D image of the designed mount. 

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/concept%20drawing/Laser%20Gimbal%20Concept.PNG">
</p>

#### Figure 2. 3D Design of Laser/Gimbal Navigation Mount

This mount allows the mounting of the system onto an overhead support which allows a view of all parts of the map. 
The mount also gives the necessary movement to allow the two gimbals to manipulate the laser to be able to point it in the necessary direction without any friction, obstacles or other issues.


<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Laser%20Mount.png">
</p>

#### Figure 3. Laser Mount 


Figure 3 shows where the laser will be mounted so that the gimbals will be able to have the rotation necessary to cover the entire map, from the overhead position.

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/LaserRender.PNG">
</p>


#### Figure 4. Laser mount render

Figure 4 shows a rendered image of the laser mount


---

### Responsible - [[ Ben Peall | Team-Members#benjamin-peall ]]

---

## How will the Raspberry Pi follow the laser?
The Raspberry Pi will make use of the image processing techniques developed for identifying placing and retrieving the black box. In particularity the method of color detection. This code makes uses of a technique which maps the contours of a specific color and then assumes that the largest of these is the laser dot. To make the detection of the contours easier first the frame is cropped down to a specific region in which the laser dot will be in, then a mask is applied to make the laser dot easier to detected within the image, then a find contour function can be run to find the dot. This process has been developed using a method set to allow it to work with live video to speed up the tracking process.
The output of this process is as follows 

![](https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/laser%20dot%20detectiong.png) 

#### Figure 5. Visualization of the laser dot detection

Once that program has found the location of the laser it then needs to decide how the Tri-track will move according to a set of predetermined rules. An illustrated version of way that the rules map to the image taken can be seen below.

![](https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/dotsections.png) 
#### Figure 6. Illustrated rules to image map   

When the program as a whole is run it gives the following output, the first line indicates that a frame has been captured, 
the second line is the location of the laser dot in x,y pixel coordinates, the final line indicates that at that moment in time the Tri-track will remain stationary.  

![](https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/dot%20output.png)

#### Figure 7. Command line output of the laser dot detection program

--- 
# Navigation, using the DANI LED tail
---

### [Click to Play](https://www.youtube.com/watch?v=a7ADB0WgJyE&t=20s)
<a href="https://www.youtube.com/watch?v=a7ADB0WgJyE&t=20s" target="_blank"><img src="https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Video%20Demos/Video%20Screen%20Shots/Cat%26MouseSC.jpg" 
alt="Portfolio Walkthrough Video Guide" width="1000" height="500" border="10" /></a>

The laser gimble idea works very well, however the laser that was purchased didn't shine bright enough on the ground. This was due to the low power. A more powerful laser wasn't allowed to be purchased according to health and safety regulations.

Because of this, a second navigation method was created. The LED tail system. This Tri-track, very similar to following the laser, now follows a red led hanging on the back of the DANI. The DANI will lead the Tri-Track to mission objectives then indicate a job needs to be done, by changing the colour of the trailing LED. The Tri-track will complete the mission objective and return to the DANI, to then follow it to the next target.
