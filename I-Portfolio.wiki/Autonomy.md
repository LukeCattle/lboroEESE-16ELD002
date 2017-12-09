---
### Responsible - All
---
# Autonomy
### Completion: 
<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Update%20github%20percentage%20bar/100%25%20updated.PNG">
</p>

---

As a group we believe full autonomy is an achievable goal. The aim is to create a fully autonomous system which completes all the required tasks in the allocated time. If for some reason a problem occurs, we have agreed manual override is the best way to fix it. This has led to two modes for our system, Manual mode and Autonomous mode. Implementing a manual mode is for a last resort for the worst possible circumstances.

---

## Autonomy levels 
If we use the current DOD (department of defense) robot levels of autonomy shown in the table below; there are four possible levels. Our target is to get our system to level four. Level four is fully autonomous, this means our system will perform tasks without human interaction. However if an unknown emergency situation occurs, the human can intervene.
<p align="center">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/robots-dod-levels-of-autonomy.jpg" width="700">
</p>
Taken from: https://bernadettekeefemd.com/2016/04/27/robotsrobotics-in-healthcare/


---

## Autonomous Mode

### DaNI Robot
Current Level - Level 3

The Dani robot will complete tasks autonomously but will get user inputs on what task needs to be completed. The DaNI will navigate autonomously with the use of a Kinect collecting data on object and hazard locations with its RGB camera and depth sensor. The kinect will be able to autonomously navigate around with the use of an IMU allowing it to ensure it is turning correctly and correct itself if it doesn't move in a straight line. The DaNI will also have an array of microphones mounted on it allowing it to locate the black box.

### Tri-Track Robot
Current level - Level 3

The Tri-Track will use a pi camera to identify and locate the laser from the ROV laser guidance system. The robot will then follow the laser guided path like a 'cat and mouse' system. It will have its own backup ultrasonic sensors to detect obstacles in its path as we do not want the system to navigate entirely relative to what the DaNI has identified. It will enter the airlock, locate the control panel, then proceed to rotating the valve until the correct pressure is shown on the control panel screen. It will then complete this task by manipulating the switch. Next, it will identify the black box, and then cautiously pick it up and carefully place it in the drop off zone without tilting it over the 20-degree threshold. The threshold angle will be maintained by using an IMU gimbal to counteract any movement that moves it away from the black box's level position.

### ROV
Current level - Level 3

The ROV will receive the necessary data from the central system ([GUI](https://github.com/lboroEESE-16ELD002/I-Portfolio/wiki/Graphical-User-Interface)) and use the information to direct the tri-track in the correct route. As the GUI will have all of the collected information from the DaNI system, it will be able to avoid obstacles and danger zones (by the detected hazard targets). The route will be calculated automatically by the central system which will then relay the route to the gimbal system to navigate the laser accordingly. 

The safe route information collected by the DaNI is sent in packets, so not all the information is sent at once, and so the tri-tack doesn't have to wait for the DaNI to complete the entire route before it can start to complete its tasks/capabilities. 

---
