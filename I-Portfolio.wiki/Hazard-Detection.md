---
### Responsible: [[ Callum Newman | Team-Members#callum-newman]] , [[ Luke Cattle | Team-Members#luke-cattle ]]
---
### Completion: 
<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Update%20github%20percentage%20bar/100%25%20updated.PNG">
</p>

---
### [Click to Play](https://www.youtube.com/watch?v=Fklt9J_-KGc&feature=youtu.be)
<a href="https://www.youtube.com/watch?v=Fklt9J_-KGc&feature=youtu.be" target="_blank"><img src="https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Video%20Demos/Video%20Screen%20Shots/HazardDetectionSC.jpg" 
alt="Jasper 'Rotate Left Command" width="800" height="400" border="10" /></a>

---
# Target detection

Using the Kinect camera to get RGB data of the local environment in front of the Kinect the DaNI is able to locate where the Hazard marker shown in figure 1 are located.

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Target%20screen%20shot.PNG">
</p>

#### Figure 1. Hazard targets 

The hazard marker has three different colours; red, yellow and black. It has been chosen to detect the yellow part of the marker as it makes up most of the marker. The process starts by taking a picture and then finding all the pixels that have an RGB value between set thresholds. The thresholds used to detect the yellow on the marker in figure 2 are; 125 to 255 for red, 0 to 200 for Green, and 0 to 100 for Blue. If the pixel has RGB values within this range the pixel turns white, if the values are out of this range it turns black. Once this black and white image has formed it is passed through a filter to get rid of small amounts of noise in the image. The concentration of white is then located and a red box is placed around it for visual purposes. An example of the output is shown in figure 3, this is what happens when figure 2 is put through the process. The resulting image can then be analysed to locate the distance to the marker from the DaNI.

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Target%20screen.png">
</p>

#### Figure 2. Hazard Visual Marker on a Laptop Screen

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/target%20detection.png">
</p>

#### Figure 3. Detection Screen and Threshold Value Bar for the Hazard Visual Markers (Yellow)

Comparing figure 2 and 3 shows that the program has detected and highlighted the yellow part of the hazard visual markers.

---
# Calculating the distance

To calculate the distance from the DaNI to the marker using the image produced above a method called triangle similarity[1] is being used. This method works by placing the marker of known width, W, a set distance, D, away from the camera and a picture is taken and analysed with the method above. The width of the marker in terms of pixels, P, is then noted down. This width can be calculated easily in the LabVIEW code as it is the distance on the red box from left to right. Using the values W, D and P the perceived focal length F can be calculated using equation 1 below. 

F = (P x  D) / W
#### Equation 1. Calculating the perceived focal length

The focal length stays constant as long as the width, W, of the object stays the same. As it is a circle that is being located it is safe to assume that this width should not change. With the focal length known equation 2 below can be used to detect the marker at different distances.

D’ = (W x F) / P
#### Equation 2. Calculating the distance of the marker from the DaNI. 

Once the distance to the marker has been established the GUI map can be updated to reflect where the marker is. The method above works best when the marker is in the centre of the picture. To ensure the marker is detected in this position the DaNI looks for the marker whilst doing its 180-degree scan for objects and only updates the map if the marker is located in the middle of the picture.

---
## References

[1] Adrian Rosebrock. Find the distance from the camera to object/marker using Python and OpenCV. [online]. pyimagesearch. [viewed 24/03/2017]. http://www.pyimagesearch.com/2015/01/19/find-distance-camera-objectmarker-using-python-opencv/ retrieved 02/05/2017