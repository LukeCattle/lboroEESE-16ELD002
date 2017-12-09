---
### Responsible - [[ Callum Newman | Team-Members#callum-newman]]
---
# Route finding and navigation
### Completion: 
<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Update%20github%20percentage%20bar/100%25%20updated.PNG">
</p>

---

### [Click to Play](https://www.youtube.com/watch?v=0IlpEn5hGf4)
<a href="https://www.youtube.com/watch?v=0IlpEn5hGf4" target="_blank"><img src="https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Video%20Demos/Video%20Screen%20Shots/Route%20finding%20and%20navigationSC.jpg"
alt="Jasper 'Rotate Left Command" width="800" height="400" border="10" /></a>

---

For the user interface the grid shown in figure 1 below will be used to show the location of obstacles and hazards, the robots, the mission objective, empty and unexplored areas and the robots routes. Each section of the grid represents 5x5cm in the real world. Table 1 below highlights what each colour represents. Figure 1 below shows a realistic example of what might be seen on the user interface for an area being explored. Figures 2 to 4 show a simplified map where the robot is only 5x5cm for demonstration purposes of how the navigation algorithm works. Please note that when the examples talk about the priority system and A* plan score systems they have there own criteria and point schemes shown in table 4 and 5, table 2 and 3 are the criteria and point scheme that will be used by the DaNI.


|Colour|Meaning|
| -------------| ------------- |
|White |Explored area but no obstacles|
|Black|Obstacles detected by Kinect depth sensor|
|Dark Blue|Target location to be travelled to|
|Light Blue |Route to be taken|
|Grey|Unexplored area|
|Dark Green|Front of Robot|
|Light Green|Robot locations|
|Red|Known location of a mission objective|
|Yellow|Hazards detected by Kinect colour sensor|
#### Table 1. Map colour key

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Portfolio%20GUI%20screenshots/Example%20map.PNG">
</p>

#### Figure 1. User interface map

|Criteria|Value increase/decrease|
| -------------| ------------- |
|Area is next to an obstacle or hazard|Decrease by 3|
|Area next to an unexplored area|Increase by 2|
|Area next to a black box|Decrease by 2|
|Area is an obstacle or hazard|Value set to zero|
|Area is unexplored|Value set to zero|
|Area is a black box|Value set to zero|
|Area is current robot location|Value set to zero|
#### Table 2. Actual priority system conditions and increase/decrease values

|Criteria|Points increase/decrease|
| -------------| ------------- |
|Area next to an obstacle or hazard|Increase by 50 points|
|Area next to unexplored area|Increase by 10 points|
|Area next to current robot location|Increase by 1 point|
|Area next to black box|Increase by 40 point|
|Area is an obstacle or hazard|Points set to 1000|
|Area is an unexplored|Points set to 800|
|Area is robots current location|Points set to 50|
|Area is a black box|Points set to 900|
#### Table 3. Actual A* plan weighting condition and point increase/decrease values

---
# Deciding where to move
In order for the DaNI to move around it has to make a decision on where to move. A system called the Priority system has been created in order for the DaNI to decide on where the best place to move is. This system works by analysing the pre-existing map to locate areas that have not been explored and chose which area to move to based on the DaNI’s proximity to these areas. In order to decide whether the DaNI should move to a certain area each coordinate analyses what is located around it. Each coordinate is given a value of 15 to start with and then the value is increased or decreased depending on what the neighbouring areas are. For example, if there is a wall next to a coordinate its value will decrease by 2 or if the area is an unexplored area its value will increase by 2, a full table of conditions and value increase and decrease amounts can be found below in table 2. Using this method the area with the highest value should be near unexplored areas and away from walls. Below figure 2 shows an example map on the right and a grid showing each coordinates priority score. The highest score is 24 and three areas have this score so the DaNI will move to the closest area which is coordinate 5,2.

|Criteria|Value increase/decrease|
| -------------| ------------- |
|Area is next to a wall|Decrease by 2|
|Area next to an unexplored area|Increase by 3|
|Area next to a mission objective location|Decrease by 1|
|Area is a wall|Value set to zero|
|Area is unexplored|Value set to zero|
|Area is a mission objective location|Value set to zero|
|Area is current robot location|Value set to zero|
#### Table 4. Example priority system conditions and increase/decrease values

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Porfolio%20figure%202.JPG">
</p>

#### Figure 2. Example map

---
# Deciding on the route
Now the DaNI knows its target location it can calculate the safest route to the target location. The same method as above can be used to calculate the safest route with a few alteration to the scoring system. The safest route is worked out using the A* route plan on Labview. The A* plan works by finding the quickest route between 2 points but the each square can be weighted to make it less likely to be used, where the lower the weighting the more likely to be used. What has been done to keep the DaNI away from walls and other areas is each area starts with a score of zero and the areas score increases by a number of points for nearby adjacent area depending on what it contains. The score is also changed depending on what each coordinate is. For example if the area is a wall it will automatically gain 100 points as the DaNI cannot go in this area. A full table of these point increase and decrease values can be found below in table 3. Figure 3 below shows the grid of each areas weighting score on the right and the chosen route highlighted in blue on the left. 

|Criteria|Points increase/decrease|
| -------------| ------------- |
|Area next to wall|Increase by 2 points|
|Area next to current robot location|Increase by 1 point|
|Area next to mission objective|Increase by 1 point|
|Area is a wall|Points set to 100|
|Area is an unexplored|Points set to 25|
|Area is robots current location|Points set to 50|
|Area is a mission objective location|Points set to 50|
#### Table 5. Example A* plan weighting condition and point increase/decrease values

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Portfolio%20figure%203.JPG">
</p>

#### Figure 3. Example map with route

Once the DaNI has moved to the target area it will use the Kinect to see if the unexplored area has any obstacles in it and update the map. The process is then started again and a new target location and route is chosen as shown below in figure 4. The DaNI will keep exploring areas till all areas have been explored and then it will return home.

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Portfolio%20figure%204.JPG">
</p>

#### Figure 4. Example map after DaNI has moved

---

# Executing the Route

Using the IMU and knowing the distance it moves in a specific direction the DaNI is able to identify whether it has moved into the correct space. If that statement (of being in the correct space) returns a value a true it will continue to execute the remaining part of the route; if not it will recalculate from the position it is currently in. The use of the IMU is also to ensure that the movement of the DaNI is in a straight line at the correct angle.