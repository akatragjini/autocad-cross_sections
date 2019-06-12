# AutoCAD Cross Section Tool
I developed this tool using AutoCAD's LISP programming language several years ago and have since shared it with a number of colleagues in the geotechnical consulting industry. Hopefully you will find it useful as I have over the years.

## Functionality
Cut and export cross-sections. Useful to individuals constructing numerical models, mining engineers, hydrogeologists, etc.

This functionality is available in some commercial softwares (i.e. Deswik, Promine, etc) however they are quite expense. I have not been able to find a freely distributed alternative available for AutoCAD.

![AutoCAD Cross Section Tool - Cross-Sections across a Stope](https://github.com/akatragjini/autocad-cross_section_tool/blob/master/README/Example_1.gif)


## Requirements
1. This was written in AutoCAD 2016 but has been tested in 2009-2019 (including Civil3D).
2. Users must be comfortable manipulating (i.e. oribiting) AutoCAD models in 3-Dimensions.
3. Users must **SAVEAS** to create a working copy of their drawing. I cannot stress this enough, the routin will explode some nested objects (i.e. polylines to lines) which may produce undesirable results.

## Installation
1. Download and save **SECUT.fas** somewhere convenient. 
2. Load **SECUT.fas** into AutoCAD. You can **drag+drop** or use the **APPLOAD** command.

## Instructions
1. **SAVEAS** to create a working copy of the drawing (i.e. drawing1_sections).
2. Draw section **LINE** corresponding to the location of your cross-section.
     - Ensure section **LINE** is drawn in **UCS WORLD** and **PLAN** view.
     - This tool can only cut vertical cross-sections. To cut in the horizontal direction (i.e. elevation) the UCS must be manipulated to flip the model on its side then back again.
     - You can select more than one section line at a time.
3. Type **SECUT** into the command line.
     - **SELECT** the aforementioned **LINE** and hit **Enter**.
     - **Enter** again. Note this will default the response to a no. This is fine in most cases, the yes option is there to address some limited circumstances.
4. Check the **LAYER** properties manager to manipulate your cross-sections
     - Sections are labeled in alphanumeric sequence with the following format *_Secut-01*
     - The tool is very well optimized however this can take some time depending on the complexity of the drawing and number of cross-sections
5. That's it, you can now export, rotate or manipulate the cross-sections.


### Technical 
An AutoCAD drawing is a collection of objects (i.e. lines, polylines) stored in a proprietary file format. Each object (or entity) has a set of data associated with it. In order for this tool to work it must recognize the data for each entity it processes. AutoCAD contains a lot of different entities and not all of them are recognized by this tool. Some entities are collections of other entities. For example a polyline is a collection of lines. 

The following is a list of entities that are NOT supported by this tool. Any entities that are not supported are moved to a special layer *_Secut-00-INVALID-OBJ* so that the user is made aware.

| Supported | Workaround |
| --- | --- |
| Points | 1-Dimensional entities, cannot be sliced |
| 3D Solids | These involve non-euclidian geometry |
| Solids | These involve non-euclidian geometry  |
| Blocks | Not directly supported however can be exploded  |







The routine supports most AutoCAD object types (i.e. 3d polylines, lines, meshes, etc). 

That being said the following objects are not (these will be moved to a seperate layer to highlight the issue):

-Points              - These are 1-Dimensional and as such are not supported
     
-3D Solids, Solids   - Supporting these would involve non-Euclidian geometry which is something I would rather not try to code,
                                however that being said if they can be converted into mesh objects it should work.
                                
-Blocks              - These are not supported as blocks, however simply explode them and they should work.

### Task List

- [ ] Find workaround to avoid exploding nested objects
- [ ] Add ability to slice horizontally.

### Disclaimer

This tool is provided as-is without warranty. I accept no responsibility for any decisions made or actions taken as a result of the use of this tool. Any and all results obtained must be validated by the user.

Legal jargon aside, I hope you find this tool as useful as I have over the years. As for updates / bug fixes, it takes quite a bit of time to code something like this so I will push out revised versions at my own discretion based on user feedback.   
