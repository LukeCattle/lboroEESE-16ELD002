---
### Responsible - [[ Callum Newman | Team-Members#callum-newman ]]
---
# GUI, DaNI
### Completion: 
<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Update%20github%20percentage%20bar/100%25%20updated.PNG">
</p>

The GUI used to control the DaNI has been developed in labview to enable the user to get status updates on the DaNI in real time, a screenshot is shown in figure 1. The GUI also allows the user to make certain decision on what activity the DaNI should perform but no control over how it is performed. The GUI uses a picture display to show the user information such as the location of the DaNI, obstacles and key mission objectives. The display is made up of a grid in which each square represents a 5 by 5 cm space of a bird’s eye view of the area of operation. The different obstacles, mission objectives and the DaNI all have unique colours on the map, a key for which can be found in figure 3. The rest of this wiki page illustrates how the GUI can be operated by the user.  

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Portfolio%20GUI%20screenshots/Full%20view.PNG">
</p>

#### Figure 1. ICARUS graphic user interface

---

# Robot information

The 'robot info' tab, shown in figure 2, allows the user to see key information such as where the DaNI is on the grid and which direction it is facing. The user can also see where the DaNI is intending to drive to and what route it will take. This can also be seen on the Grid display but display it on the tab allows the user easier access to the information. 

There is also a control button to stop the DaNI after it has completed its current route and a switch to pause the DaNI after its current activity is completed.

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Portfolio%20GUI%20screenshots/Robot%20information.PNG">
</p>

#### Figure 2. Robot info tab

---

The 'status update' tab, shown in figure 3, provides the user with a key as to what each colour on the display map represents and also tells the user what activity the DaNI is currently performing by lighting certain LEDs on the screen as it is being performed.

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Portfolio%20GUI%20screenshots/Status%20update.PNG">
</p>

#### Figure 3. Status update tab

---

# Options and instructions

Included in the GUI is a set of tabs used by the user to select options at key operation points. The user is able to use switches and buttons to choose the options on each tab. Each tab has one button that is used to lock in there options and continue the code execution. Some of the things that the user can control are the target location for the DaNI to move to, How the DaNI should initialize the map and if the map should be altered to correct any mistakes. Each item used to select the button has a short explanation next to it on the GUI to inform the user what pressing the button or switch will do. To keep the user on the correct tab there is an LED on each tab that becomes lit if that tab is operational and above the tabs to the right there is an indicator that displays the name of the tab the user should be on.

---
The first tab the user will need to use when the robot is turned on and the program starts running is the 'initialize map' tab, shown in figure 4. On this tab the user is able to select whether they wish to use the a predefined map and manually enter the start location and angle. The user can also set the DaNI to load a previously saved map with the last saved location and angle of the DaNI saved. This function is used when connection is lost and regained.


<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Portfolio%20GUI%20screenshots/Initialize%20map.PNG">
</p>

#### Figure 4. Initialize map tab

---

Once the DaNI has been initialized or finished a round of activities the user can chose whether the DaNI should scan for obstacles and hazards in its local environment or move to another point by using the toggle switch on the 'Scan or move' tab, shown in figure 5. If the scan option is chosen the angle of the DaNI at which it will scan around can be selected. The default for this value is the angle the DaNI is currently facing.  

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Portfolio%20GUI%20screenshots/Scan%20or%20move.PNG">
</p> 

#### Figure 5. Scan or move tab

---

Just before the DaNI moves the user is present with the option on whether to alter the map. The user may wish to do this when a space is seen as inaccessible as it is surrounded by obstacles but is not shown on the map. The user can manually change the colours on the map by going onto the 'obstacle map' tab, shown in figure 7, and clicking on a grid location and selecting the desired colour. On the 'alter map' tab, shown in figure 6, There is also a button that allows the user to start running a program in which the program will alter the code for them. The code alters the map by removing filling in spaces that are inaccessible or noise that has been seen on the depth sensor giving a false obstacle reading.

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Portfolio%20GUI%20screenshots/Scan%20or%20move.PNG">
</p>

#### Figure 6. Alter map tab

---

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Portfolio%20GUI%20screenshots/Obsticle%20map.PNG">
</p>

#### Figure 7. Obsticle map tab

---

The 'Choose location' tab, shown in figure 8, allows the user to select where the DaNI should move. There is a program that runs that suggests the location the DaNI should move to and is displayed on the map. The user can choose to move the DaNI elsewhere by changing a square on the obstacle map dark blue. There is a toggle switch to choose the option and when the button to continue is pressed the program will check how many locations the user selected if the toggle switch is in use user location mode. If the user has selected 0 locations or more than 1 a red light will flash to indicate the error and the code will not move forward until either the mode is changed or 1 location is selected.

<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Portfolio%20GUI%20screenshots/Choose%20location.PNG">
</p>

#### Figure 8. Choose location tab

---