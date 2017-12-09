### Responsible - [[ Ben Peall | Team-Members#benjamin-peall ]] , [[ Luke Cattle | Team-Members#luke-cattle ]]

# Manual Control

### Completion: 
<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Update%20github%20percentage%20bar/100%25%20updated.PNG">
</p>

## DaNI Robot

The DaNI Robot dose not have a full manual mode but does allow for the user to make choices on the DaNIs behalf if they feel an error may occur. The DaNI robot will only have to feedback data to the main system and will not be controlled or have anything sent to it. 

## Tri-Track Robot

The Tri-Track, at any point during the mission, can be taken over by the user; this includes the tracks movement and the arm control. The only point foreseen which could perhaps have the need for a user to input is the manipulation of the valve using the arm controls. However, if communication fails then the Tri-track will not have a safe path and the user will have to control and navigate the robot remotely using a controller.

To gain manual control of the Tri-Track a driver called xboxdrv along with a class module for the xbox 360 controller has been implemented, this has allowed for each controllable part of the Tri-Track to be assigned to a button on the controller. 

The Tri-Track system is also integrated with a remote voice control which allows the user to command the subsystem by giving our 'Jasper' system voice commands that it will correlate to the Tri-Track. 

The 'Jasper' voice command and speech synthesis system is defined in [[Status Updates | Status-updates#J.A.S.P.E.R]] document.

## ROV

The ROV will be able to continuously send updates to the Tri-Track Robot via the laser system. In the event of a communication failure between the ROV and the control centre, manual override of the ROV system is available via a joystick.

Further information can be found in the [Communications Failure Management](https://github.com/lboroEESE-16ELD002/I-Portfolio/wiki/Communication-failure-management) document.