---
### Responsible - [[ Luke Cattle | Team-Members#luke-cattle ]]
---
# Careful handling
### Completion: 
<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Update%20github%20percentage%20bar/100%25%20updated.PNG">
</p>

---
# Gimbal

### [Click to Play](https://www.youtube.com/watch?v=1QgJ2jkqQIk)
<a href="https://www.youtube.com/watch?v=1QgJ2jkqQIk" target="_blank"><img src="https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Video%20Demos/Video%20Screen%20Shots/CarefulHandlingSC.jpg" 
alt="Jasper 'Rotate Left Command" width="800" height="400" border="10" /></a>

Video of a gimble. The IMU would be mounted on the arm but for the purpose of this demonstration, it was easier to hold and manipulate the roll that way.

## Adafruit 9DOF IMU

The IMU used was a BNO055 Adafruit 9dof imu. It was possible to integrate it with a raspberry pi and record all the readings at a 0.1s sampling time. Then converting the values from roll and pitch to angles; a command is sent to the corresponding servos on the arm to move them. This would keep the black box within its 20degree tilt requirement at all times.

## Circuitry
+  Connect BNO055 Vin to Raspberry Pi 3.3V power.
+  Connect BNO055 GND to Raspbery Pi ground.
+  Connect BNO055 SDA (now UART TX) to Raspberry Pi RXD pin.
+  Connect BNO055 SCL (now UART RX) to Raspberry Pi TXD pin.
+  Connect BNO055 PS1 to BNO055 Vin / Raspberry Pi 3.3V power.

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/GimbleCircuitry.JPG">
</p>

#### Figure 1. - Picture of the design and our development of the circuitry for the IMU. (Picture on the left is taken from Adafruit website.) 




