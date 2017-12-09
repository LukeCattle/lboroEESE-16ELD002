---
### Responsible - [[ Ben Peall | Team-Members#benjamin-peall ]]
---
# Tri-track (Pickup and retrieval)
### Completion: 
<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Update%20github%20percentage%20bar/100%25%20updated.PNG">
</p>

---

### [Click to Play](https://www.youtube.com/watch?v=2AxlCHH80IQ&feature=youtu.be)
<a href="https://www.youtube.com/watch?v=2AxlCHH80IQ&feature=youtu.be" target="_blank"><img src="https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Video%20Demos/Video%20Screen%20Shots/BlackBoxSC.jpg" 
alt="Jasper 'Rotate Left Command" width="800" height="400" border="10" /></a>

For this capability, the Tri-track will retrieve and place the black box in the pickup zone. In order for the Tri-track to complete these task, there is a number of subroutines that will be carried out.
 
It has been assumed that the DaNI bot will be able to guide the tri-track to the proximity of the black box.
Firstly, the Tri-track will align itself with the centre of the black box; to do this a python library called open cv has been used.

Open cv has a variety of functions that simplify image processing, 2 methods of image detection have been used to accurately find the location of the black box and how far the Tri-track needs to move to center itself with the box, the first of these methods is called template matching in which the program scans a preinstalled image of the black box over the image and finds a location in which the template matches the image. The output of from this stage can be seen below;

![](https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/template%20match.png)
#### Figure 1. Visualized template match

After the region in the image that contains the black box has been found the image is cropped to just the region which contains the black box, now a red color mask is applied to this new image, from this contours can be found within the mask, the largest one is assumed to be the black box, the extremities of this contour can be found  of which will be the left and right side of the black box. A visualised output from this stage can be seen below.

![](https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/contour%20detection.png) 
#### Figure 2. Visualization of the black box edge detection


After the left and right side of the black box has been found, these locations are translated back to the original image, using the original length of the black box, the real width of each pixel can be found for regions around the black box, this allows for the distance which the Tri-Track needs to move can be found. Below is a method used to visualise this the blue lines indicate the location of the black box found by the program and the green line is the centre of the image, where the black box needs to be. 

![](https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/location%20of%20black%20box.png) 

#### Figure 3. Visualisation of the final black box localisation 



The output from this process as a number which represents the distance in cm the tri-track needs to move to centre itself on the black box, also the sign of the number indicates which direction this will need to be in. The command line output can be seen below 

![](https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/distmove%20output.png)

#### Figure 4. Command line use of the location function with output


Once the Tri-track and black box are lined up, the Tri-track will take another photo. Using this photo, the Tri-track can find the distance to the black box, this works by using triangle similarity. This method takes the width of the black box in pixels and a pre-calculated calibration constant and uses these to find the distance to it. The Tri-track will then take this distance and move to a set distance way from the black box. A subroutine can now be run that will pick up the black box from this set point. From this the Tri-track can move the arm into a position for moving the black box. Within these routines a model is included of each servo, and the servo driver to allow for accurate open loop control of the system.  . Below is the output of the code used to find the servo angles. 

![](https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/servo%20angles.png)

#### Figure 5. Command line output of the kinematics program 

The same program that picks up the black box will be able to place the black box when it reaches the location in which it is to be placed. 


