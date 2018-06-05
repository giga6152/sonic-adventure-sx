///Information on the GMMovie DLL by Nintendofreak88 for Game Maker 6.

/*The original DLL can play video files with formats such as .avi, .wmv, or .mp4. You have 
the option to either play them within the Game Maker window or load a window of its own (I 
can only load a window of its own while using Game Maker Studio due to compatibility issues,
however this works fine in Game Maker 8).

To use this function in Game Maker Studio, the DLL file and all video files must be placed
in the "Included Files" section of the resource tree (Game Maker 8 and below needed to save
the game in the same area as the files). There is an object which controls the videos and
plays them accordingly (it is named "objVideoPlayer").

There is a variable which controls the filename inside the step event of "objVideoPlayer"
which is controlled via a creation code in the room. You will need to enter the following
line: videofile = "[filename].mp4" (The name of your video with ".mp4" at the end). This 
will be applied to the object's step event and will play the video accordingly.

There are also scripts which control the DLL file, inside a folder called "GMMovie DLL".
Do not modify these in any way.

NOTE: I did not make this DLL. All credit belongs to Nintendofreak88 for the DLL.*/

//This DLL to be used for the game's Flash cutscenes only.
