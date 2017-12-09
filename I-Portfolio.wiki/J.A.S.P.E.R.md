---
### Responsible - [[ Luke Cattle | Team-Members#luke-cattle ]]
---

# Jasper

### Completion: 
<p align="left">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/Update%20github%20percentage%20bar/100%25%20updated.PNG">
</p>

---

### [Click to Play](https://www.youtube.com/watch?v=Vtuekx-9OEo&feature=youtu.be)
<a href="https://www.youtube.com/watch?v=Vtuekx-9OEo&feature=youtu.be"><img src="https://github.com/lboroEESE-16ELD002/I-Portfolio/blob/master/Video%20Demos/Video%20Screen%20Shots/jasperSC.jpg" 
alt="Jasper 'Rotate Left Command" width="800" height="400" border="10" /></a>



A voice recognition system has been created which will keep the user informed with important mission updates. Jasper combines SST (speech to text) with TTS (text to speech) engines. This allows Jasper to listen to a users voice command, process it, then perform the appropriate function. Jasper will also respond in speech if the users command is misunderstood, or further information required.

## Modules
Jasper uses modules and allows the user to custom create their own. Several have been created for test purposes:

1. TurnLeft
2. TurnRight
3. Status

In each module there are 'keywords' Jasper is trying to listen to. For example the TurnLeft module is listening for 'Turn' and 'Left'. Once the 'keywords' are heard by Jasper, it will choose the turn left module. Inside this module is the option to add python script functions, for the purpose of this test a left turn function was added.

In terms of code, the interface requests a list of single-word strings called ```"WORDS"``` that sits in the module’s global namespace. For *TurnLeft.py*, we have the following:

```python
WORDS = ["TURN", "LEFT"]
```

For *TurnLeft.py*, we just want the user input to contain some variation of "turn left", such as "Jasper, Can you turn left", which is accomplished with:

```python
def isValid(text):
    return bool(re.search(r'\bturn left\b', text, re.IGNORECASE))
```

After we have passed the valid input, the interface requires a method ```handle(input, mic, profile)```, ```input``` is the parsed speech, ```mic``` is the object for the mic. Finally, ```profile``` is the user profile.

For the Test turn left, we just want Jasper to output a function, accomplished with:
```python
def handle(text, mic, profile):
    message = ["I will turn left now"]

    message = random.choice(message)
    TurnLeft.py

    mic.say(message)
```

The random choice allows more than one reply to be programmed in. For the test, only one was added. The function call is line 5 ```TurnLeft.py```.


---
Example code shown below.
<p align="center">
<img src="https://github.com/lboroEESE-16ELD002/I-ProjectDocs/blob/master/Portfolio%20SC/JasperTurnLeftSC.jpg">
</p>

#### Figure 2. Jasper Example code

## Future plans - Completed
The aim is to create only one module where the user input could simply be "Jasper, find and pick up the black box". Included in the ```handle``` would be several function calls which gives the Tri-Track everything it needs to move, find the black box, then pick it up autonomously.

## Updated Modules

1. Mission Status - JASPER will update the user with the current progess of the mission.
2. Pickup Black Box - JASPER will control the Tri-Track autonomously, and will pickup the black box.
3. Follow Beacon - JASPER will navigate the Tri-Track through the canyon using the beacon for orientation.
4. Follow DANI - JASPER will make the Tri-Track follow the DANI.
5. Manual Control - JASPER will give up control to the user.
6. Operate Valve - JASPER will safely operate the fuel valve.



