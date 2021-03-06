# AutoCAD Cross Section Tool
This tool was developed using AutoCAD's LISP programming language. In a nutshell this tool is the equivalent of the 3DCLIP or DVIEW command with the exception that it creates actual cross-sections that can be manipulated and exported.

## Functionality
Cut cross-sections in AutoCAD. Can be applied to simplify complex 3d geometry (i.e. cavity monitoring surveys), construct numerical models, by mining engineers, geotechs, hydrogeologists, environmental scientists, etc.

This functionality is available in some commercial software (i.e. Deswik, Promine, Minesight) however priced accordingly.

![Stope](https://github.com/akatragjini/autocad-cross_section_tool/blob/master/README/Example_1.gif)


## Requirements
1. This was written in AutoCAD 2016 but has been tested in 2009-2019 (including Civil3D).
2. Users must be comfortable manipulating (i.e. oribiting) AutoCAD models in 3-Dimensions.
3. Users *must* **SAVEAS** to create a working copy of their drawing. The tool will explode some nested objects (i.e. polylines to lines) which may produce undesirable results.

## Installation
1. Download and save **SECUT.fas** somewhere convenient. 
2. Load **SECUT.fas** into AutoCAD. You can **drag+drop** or use the **APPLOAD** command.

## Instructions
1. **SAVEAS** to create a working copy of the drawing (i.e. drawing1_sections).
2. Draw a section **LINE** corresponding to the location of the cross-section.
     - Ensure the section **LINE** is drawn in **UCS WORLD** and **PLAN** view.
     - This tool can cut in the vertical direction (i.e. section line drawn on the xy plane). To cut in the horizontal direction (i.e. elevation) the UCS must be manipulated to flip the model on its side, cut the section then flipped back again.
3. Type **SECUT** into the command line.
     - **SELECT** the aforementioned **LINE** and hit **Enter** (you may select more than one line at a time).
     - **Enter** again. Note this will default the response to a no. This is fine in most cases, the yes option is there to address some limited circumstances.
4. Check the **LAYER** properties manager to manipulate the cross-sections.
     - Sections are labeled in alphanumeric sequence with the following format `_Secut-01`.
     - Processing time will depend based on the complexity of the drawing and number of cross-sections.

![Topography and underground workings](https://github.com/akatragjini/autocad-cross_section_tool/blob/master/README/Example_2.gif)


### Technical 
An AutoCAD drawing is a collection of objects (i.e. lines, polylines) stored in a proprietary file format. Each object has a set of data associated with it. 

In order for this tool to work it must recognize the object data. Due to various reasons not all objects are recognized. These objects not recognized are moved to a special layer `_Secut-00-INVALID-OBJ` so that the user is made aware of the problem.

The following is a list of objects that are NOT recognized. For example, some objects (i.e. solids) are inherently more difficult to deal with due to non-euclidian geometry however they can be recognized if their shape is converted to a collection of 3D Faces

| Object | Workaround |
| --- | --- |
| Point | 1-Dimensional entity, cannot be sliced |
| 3D Solid | Non-euclidian geometry, convert to 3D Face |
| Solid | Non-euclidian geometry, convert to 3D Face  |
| Block | Not directly supported,  can be exploded into objects that may be supported  |


### Task List
- [ ] Avoid exploding nested objects.
- [ ] Slice horizontally.

### Disclaimer
This tool is provided as-is without warranty. I accept no responsibility for any decisions made or actions taken as a result of the use of this tool. Any and all results obtained must be validated by the user.

Legal jargon aside, I hope you find this tool as useful as I have over the years. As for updates / bug fixes, it takes quite a bit of time to code something like this so I will push out revised versions at my own discretion based on feedback.   
