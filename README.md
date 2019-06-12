# AutoCAD Cross Section Tool
I developed this tool using AutoCAD's LISP programming language several years ago and have since shared it with a number of colleagues in the geotechnical consulting industry. Hopefully you will find it useful as I have over the years.

### Functionality
Cut and export cross-sections. Useful to individuals constructing numerical models, mining engineers, hydrogeologists, etc.

![AutoCAD Cross Section Tool](https://github.com/akatragjini/autocad-cross_section_tool/blob/master/README/Example_1.gif)


### Requirements
1. This was written in AutoCAD 2016 and has been tested in 2009-2019 (including Civil3D).
2. Users must be comfortable manipulating (i.e. oribiting) AutoCAD models in 3-Dimensions.
3. Users must **SAVEAS** to create a working copy of their drawing. The routine will explode some nested objects (i.e. polylines to lines) which may produce undesirable results.

**This tool is provided as-is without warranty. Any results obtained must be validated by the user**

### Installation
1. Download and save **SECUT.fas** somewhere convenient. 
2. Load **SECUT.fas** into AutoCAD. You can **drag+drop** or use the **APPLOAD** command

STEPS:
1. Load drawing into AutoCAD (note: this routine has been tested and is compatible with v. 2009 - 2019 including Civil 3D).
2. "SAVEAS" to create a 2nd version of the drawing (i.e. drawing1_sections).    
a. This is a critical step as the routine will explode nested objects into their consituent parts which may produce undesirable results. 
i. For example, 3D polylines exploded to lines, meshes to 3D Faces, etc.
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

I hope you find this routine useful, I certainly have. It takes quite a bit of time to code something like this so unless i get a large
number of requests I won't be making regular updates.
       
