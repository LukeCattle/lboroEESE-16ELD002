---
### Responsible: [[ Callum Newman | Team-Members#callum-newman]]
---
### Completion: 
<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Update%20github%20percentage%20bar/100%25%20updated.PNG">
</p>

## Utilising the Kinect V1 depth sensor

The Kinect V1 starts by sending out infrared beams across the room. Depending on how close an object is, it will alter the number of infrared dots in an area. An infrared camera detects these dots to calculate how far object is away from the camera. The Kinect produces this data in a similar form to a normal picture but instead of an RGB value for each pixel, the depth picture contains the spectrum density of infrared dots for each pixel. This can be used to form a depth match picture shown below in figure 1, where the colour depends on how far away the objects are. 

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Kinect%20dual%20depth%20real%20image.PNG">
</p>

#### Figure 1. Kinect depth sensor displayed as a colour image

The data collected from the Kinect can be converted from the density spectrum into a distance using equation 1 below.

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Kinect%20equation%20screenshot.PNG">
</p>

#### Equation 1. Conversion fro spectral density to distance[1]

Using the equation above to the raw data from the Kinect into distances and information from the IMU on the DaNI bot it is possible to update the GUI map with the location of each object. The Labview code running the Kinect is programmed to only use the data about what is directly in front of the Kinect and rotate the DaNI 180 degrees to update the map. The DaNI rotates between 2 and 3 degrees each time it rotates. This has caused the distances between objects being read to be great at large distances. Due to this the max distance that the Kinect can read, 8 meters, has been shortened down to 1.5m for greater accuracy on the map.

### References

[1] What is the depth image received from Kinect. [online]. stackoverflow. [viewed 07/04/2017]. http://stackoverflow.com/questions/6253620/what-is-the-depth-image-received-from-kinect retrieved 02/05/2017