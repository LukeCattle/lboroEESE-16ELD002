---
### Responsible - [[ Ben Peall | Team-Members#benjamin-peall ]]
---

# Route finding and navigation
### Progress %
<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Update%20github%20percentage%20bar/100%25%20updated.PNG">
</p>

---

### [Click to Play](https://www.youtube.com/watch?v=x6QhD-MrXDo)
<a href="https://www.youtube.com/watch?v=x6QhD-MrXDo" target="_blank"><img src="https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Video%20Demos/Video%20Screen%20Shots/ValveManipulationSC.jpg" 
alt="Jasper 'Rotate Left Command" width="800" height="400" border="10" /></a>



# Valve Control 
---
To make the valve safe 3 distinct tasks need achieving, these are;

1. Identify which way the valve needs turning.
2. Actuate the valve in order to balance the numbers.
3. Flick the switch. 

Each of these task vary need completing in this order for the valve to be made safe.

## Identify which way the valve needs turning.
The first task has been broken down into steps again; 
1. Find the display 
2. Locate each number and check which number it is  
3. Find the order in which they appear on the display
4. Determine which number is larger


Python and openCV has been made use off to complete these tasks,

### Finding the display 

To find the display first the Tri-Track needs to move to within a given distance of the display, this is done using the ultra sonic sensor within a while loop, then the display can be  found using the template matching function [[ as used in  | Identifying,-placing-and-retrieving-the-black-box#template-matching]] the black box detection,
the output of this process can be seen below 

![](https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/display%20located.png)
#### Figure 1 Valve display localisation 

Once the display location has been found a new image is created with just the display in.

### Locate each number

Now an image has been saved that contains just the display, the template matching method can be run again, but this time the template used is a number from the valve display,this results in a bounding box in which the program thinks contains the number it has been searching for. This needs checking as it is likely that in does not contain that number. So the bounding box is passed to another program that makes use of a HOG descriptor, that has been trained to recognize handwriting. This descriptor is used to determine if the number has indeed been detected. 
The bounding box of each number can be seen below 

![](https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/number%20located.png)  
#### Figure 2 Bounding box of the display number 

The process of template matching and then checking is also outputted to the command line, the output is as follows 

![](https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/numberfoundcmd.png)  
#### Figure 3 Command output of the number recognition process

The list of numbers indicate what numbers have been found in the bounding box, the first number will always be 0 and if the list is not filled any empty spaces are filled with 10's.
the next line informs the user whether the number matches what the program is expecting. 

### Find the order in which they appear on the display,

The program stores the bottom left x coordinate for each number it locates, this allows it to determine the order in which they appear on the display, this is done by ordering the x coordinate list, and creating a list where the x coordinates are ordered in assenting order and a second list which corresponds to the index in the original list of the x coordinates moved to the index in the new list, so for example if the 3rd x coordinate was the smallest, in the second list the number at index 0 would be 3. 

Once this is done the numbers found can be rearranged to give the numbers in the order they are on the display. 
This is outputted as a list on the command line and looks like 

![](https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/fullnumber.png)
#### Figure 4 Command line display of the found number

### Determine which number is larger 

This is quite an easy process now the order of the numbers have been found, 
To allow for the possibility that not all of the numbers have been found this is done by looking at the position of each of the numbers, it can be assumed that the first digit in both numbers will be within a range of pixels, so if there is a number contained with in that range it will be the first digit, then the 2 are compared and hence the program knows which way to turn the valve. This can be seen outputted into figure 4. 

## Actuate the valve in order to balance the numbers.

This process can again be broken down into a number of steps

1. Center the Tri-Track on the mbed
2. Move the arm out to grasp and twist the valve  
3. Check the numbers have been balanced 

### Center the Tri-Track on the mbed

In order to center the Tri-Track, the process that was used to center the Tri-Track on the black box has been modified slightly to allow completion of this task. 
The output off this process can be seen below 

![](https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/mbed%20center.png) 
#### Figure 5 Output of the Mbed center program
The blue lines indicate the edges of the mbed and the green line is the center of the Tri-Track.

### Move the arm out to grasp and twist the valve

Once the Tri-Track is centered on the mbed, the distance to the valve is known, and the mounted ultrasonic sensor can be used to find the distance to the valve plate, using these 2 numbers and Pythagoras, the distance from the center of the arm to the valve can be found, using this and the known height of the valve, the process used in black box retrieval that moves the arm to a set of x,y coordinates is used to move and grip the valve.

Once the valve is gripped the rotating servo twists slowly to allow the valve to move with it. one a full 180 degrees turn has been completed the arm moves back from the valve.

### Check the valve has been balanced

Once a full 180 degrees rotation has been completed, the Tri-track again reads the display for the valve to check find the numbers, if it doesn't find a numbers within the display this means that the valve has been equalized, otherwise the arm moves back in to position and rotates the vale once again, this process is repeated until the valve has been set to equal. 

## Flick the switch

To flick the switch the Tri-Track, using the centering value on the mbed from before to rotate the whole arm to place it in line with the switch, the arm then moves out to a position that will flick the switch on the way to that position.  