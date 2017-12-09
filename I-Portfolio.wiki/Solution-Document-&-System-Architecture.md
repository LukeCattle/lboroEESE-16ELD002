## Introduction:
The following document outlines the solutions that have been selected to achieve the necessary capabilities stated in the capabilities map found in Figure 1.

The solutions have been broken down so that each capability is mapped to the solution used to implement that capability. Contained within these sections is a description of the solution, as well as the technology used in the solution and the current progress of the solution. Any demonstrated capabilities will contain a link to proof that this capability has been met.

### Progress % Overview:
### Key:
20% - Research stage: During this stage the team have brainstormed ideas and research into the plausibility of each idea 
                      is being researched 

40% - Initial development: Once an idea has been researched the team will finalize a plan for implementation of the sub-
                           system and start initial creation

60% - Testing, Revisions and Improvements: After the system has been created it will be fully tested against the 
                                           requirements

80% - Integration and Testing: Once the sub-system has met its requirements it will be integrated into whole system and 
                               tested

100% - Complete: After successful integration and testing the subsystem can be viewed as completed

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Update%20github%20percentage%20bar/All%20bars%20updated.PNG">
</p>

---

## [Capabilities Map:](https://github.com/lboroEESE-16ELD002/I-Portfolio/wiki/Capabilities-Map)

![](https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Capabilities%20Mapping/Capabilities%20Map.png)

**Figure 1**

### Solution Method

<p align="center">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/SysArchProgress.png" width="500">
</p

**Figure 2**

## [System-wide Solution/ Architecture:](https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Management%20Documents/System%20Architecture%20Diagram.png)

![](https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Management%20Documents/System%20Architecture%20Diagram.png)

**Figure 3**

Figure 3 sets out the overall system architecture that implements the solution Team ICARUS have decided on. At the heart of the solution lies the RF LAN which shall be used to relay information from the ROV, DaNI, Tri-Track and monitoring terminal. System updates from both the DaNI and Tri-Track shall be sent to the monitoring terminal through the LAN. 

The DaNI shall be responsible for forging a path to the black box/ fuel panel, using the Kinect and ultra-sonic sensors to navigate, and will then feedback the most suitable route to the ROV system which will then map this route using a gimbal mounted laser.

This path will then be followed by the Tri-Track system which can then retrieve the black box and manipulate the fuel valve so that it is safe.

## [Route Finding and Navigation](https://github.com/lboroEESE-16ELD002/I-Portfolio/wiki/Route-finding-and-navigation)
The DaNI, Kinect and ultrasonic sensors will be used to navigate the environment initially. The data obtained by the DaNI will be sent back to a grid system which maps out the suitable route. The ROV will direct the tri-track along this route using a gimbal mounted laser. 

## [Moving Across Complex Environments](https://github.com/lboroEESE-16ELD002/I-Portfolio/wiki/Moving-across-complex-environments)
The DaNI robot has been adapted so that it can move across complex environment by using tracks like those used on the Tri-Track, meaning it can move up and down ramps much more competently.
The Kinect sensor will be used to avoid known hazards as well as any ‘surprise’ obstacles on the day of the mission.  

## [Identifying, placing and retrieving](https://github.com/lboroEESE-16ELD002/I-Portfolio/wiki/Identifying,-placing-and-retrieving-the-black-box)
The Kinect will identify the black box using its microphone array. It will detect the frequency of the sound source that the black box is emitting and move towards it until the decibel level is great enough. 
The Tri-Track will be used to retrieve the black box, a Pi cam device shall identify the black box using object recognition software. The Arm of the Tri-Track will be used to retrieve the device as well as manipulate the fuel control panel. All of this can be streamed using the RF LAN and Pi cam, however this may not be necessary. 

## [Careful Handling](https://github.com/lboroEESE-16ELD002/I-Portfolio/wiki/Careful-handling)
An IMU will be used on the Tri-Track arm to ensure that the black box does not rotate past 20 degrees as specified. As well as this there is the possibility that a motion capture device could be used to mimic human movements, servos have been selected for this role because of their damping ability. 

## [Status Updates](https://github.com/lboroEESE-16ELD002/I-Portfolio/wiki/Status-updates)
Status updates will be provided by Jasper. Jasper is a voice controlled module that can provide system updates verbally, meaning if a system user is pre-occupied with a display already, they need only ask Jasper for a certain status update, for example; battery levels.

## [Autonomy](https://github.com/lboroEESE-16ELD002/I-Portfolio/wiki/Autonomy)
Autonomy level 7 is being aimed for within this project. This provides almost full autonomy with some scope for manual intervention. It was felt that this was the most appropriate level of autonomy given the number of unknown variables that will be faced on mission day. 

## [Collaborative Platform Integration](https://github.com/lboroEESE-16ELD002/I-Portfolio/wiki/Collaborative-platform-integration)
Where possible National Instruments devices and software has been used to aid integration, common code languages have been used and checks have been made to ensure that all sub-systems can ultimately integrate with one another.

## [Communication Failure Management](https://github.com/lboroEESE-16ELD002/I-Portfolio/wiki/Communication-failure-management)
In the event of the DaNI robot losing communication with the RF LAN the robot is programmed to return to base. When at base the data obtained by the DaNI will be saved onto a USB drive, retrieving the route information manually, so that the mission can continue relatively unaffected. 

The possibility of manually controlling the laser gimbal is also being explored for situations where the communication with the DaNI has been irretrievably lost.

