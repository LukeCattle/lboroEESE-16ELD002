---
### Responsible - [[ Josh Crawford | Team-Members#josh-crawford ]] , [[ Jonathan Balakumar | Team-Members#jonathan-balakumar ]]
---
### Completion: 
<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Update%20github%20percentage%20bar/100%25%20updated.PNG">
</p>

---

# Collaborative Platform Integration Document

## Introduction:
The following document outlines the ways in which Team ICARUS has integrated various platforms to form a cohesive system/sub-system.

Each sub-system has been broken down so that the examples of platform integration can be explored within the context of the sub-system. The system wide system architecture can be seen in Figure 1 which outlines the entire solution for context. 

## System-wide solution/ architecture:

![](https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Management%20Documents/System%20Architecture%20Diagram.png)

**Figure 1**

## DaNI System:
The DaNI sub-system has been extensively modified to service the ambitions of the design team. The standard chassis has been replaced with a Tri-Track chassis to make use of the tracks, which improve the robot’s capabilities with respect to moving across complex environments. 

The standard SBRIO board found on the DaNI has been replaced with a MyRIO, this is on order to support the use of the Kinect sensor system, which uses software on the MyRIO to detect close by objects. This affects voltage outputs on the RIO which drive the robot’s motors.

## ROV: 
There is a gimbal and laser system, mounted onto the above ROV stand, to navigate the Tri-Track system around the map whilst also avoiding all obstacles, whilst leading it to the black box and fuselage. This information is collected from the DaNI system, via the RF LAN, and fed into the central system which then relays the data to the gimbal system. The ROV has been designed to work with a grid system developed in National Instruments LabVIEW, which provides the monitoring terminal with a visual representation of the operating environment and the area the ROV is focused on at any given time.

## Tri-Track:
The Tri-Track system has been developed using a Pi cam and Raspberry Pi, which in turn control the arm mounted on the robot, this arm is responsible for transporting the black box as well as placing it in the drop zone. Manual control can be assumed via the RF Net if the autonomous arm fails. 

