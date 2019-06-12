# AutoCAD Cross Section Tool
I developed this tool using AutoCAD's LISP programming language several years ago and have since shared it with a number of colleagues in the geotechnical consulting industry. Hopefully you will find it useful as I have over the years.

### Functionality
Cut and export cross-sections. Useful to individuals constructing numerical models, mining engineers, hydrogeologists, etc.

There does exist commercial software (i.e. Deswik, Promine, etc) with this functionality, however the purchase cost can be quite high. I have not been able to find a free alternative to this tool which was part of the reason I made it in the first place.

![AutoCAD Cross Section Tool](https://github.com/akatragjini/autocad-cross_section_tool/blob/master/README/Example_1.gif)


### Requirements
1. This was written in AutoCAD 2016 but has been tested in 2009-2019 (including Civil3D).
2. Users must be comfortable manipulating (i.e. oribiting) AutoCAD models in 3-Dimensions.
3. Users must **SAVEAS** to create a working copy of their drawing. I cannot stress this enough, the routin will explode some nested objects (i.e. polylines to lines) which may produce undesirable results.

### Installation
1. Download and save **SECUT.fas** somewhere convenient. 
2. Load **SECUT.fas** into AutoCAD. You can **drag+drop** or use the **APPLOAD** command.

### Instructions

1. **SAVEAS** to create a working copy of the drawing (i.e. drawing1_sections)
2. Draw a **LINE** (or more than 1) corresponding to the location of your cross-section(s)
     - Ensure line is drawn in **UCS WORLD** and **PLAN** view
     - This tool can only cut vertical cross-sections. To cut in the horizontal direction (i.e. elevation) the UCS must be manipulated to flip the model on its side then back again.
3. Poop



3. Draw a "LINE" (or >1) where the section is required (note: it must be a LINE, and drawn in plan view / UCS World).
a. Routine can only cut vertical sections across the 3D model (i.e. hence why line must be drawn in plan view).
i. The workaround for horizontal sections is to manipulate the UCS and flip the model on its side, cut the sections and then flip back again
4. Type "SECUT" into the command line.
5. Select line(s) that you previously drew. Hit Enter
a. Note you may select any number of lines.
5. Program will prompt whether points are required. Hit Enter
a. Hitting enter will default to no. This is fine for most users, the yes option is useful in some circumstances to make the section more visible.
6. Routine will run and update the layer manager with the cut section(s) (note this may take some time depending on the complexity of the drawing / number of sections selected)/
7. That's it!

Note: I cannot stress this enough, please SAVAS and create a 2nd working copy of your drawing. This may inevitably get missed by some users so I apologize in advance.

The routine supports most AutoCAD object types (i.e. 3d polylines, lines, meshes, etc). 

That being said the following objects are not (these will be moved to a seperate layer to highlight the issue):

-Points              - These are 1-Dimensional and as such are not supported
     
-3D Solids, Solids   - Supporting these would involve non-Euclidian geometry which is something I would rather not try to code,
                                however that being said if they can be converted into mesh objects it should work.
                                
-Blocks              - These are not supported as blocks, however simply explode them and they should work.



To do - ensure exploded items arent
add ability to slice horizontaly


## Disclaimer

This tool is provided as-is without warranty. I accept no responsibility for any decisions made or actions taken as a result of the use of this tool. Any and all results obtained must be validated by the user.

Legal jargon aside, I hope you find this tool as useful as I have over the years. As for updates / bug fixes, it takes quite a bit of time to code something like this so I will push out revised versions at my own discretion based on user feedback.   
