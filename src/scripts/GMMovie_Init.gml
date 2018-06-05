///GMMovie_Init()

GMMovieDLL = "GMMovie.dll";

global._GMMovie_Load = external_define(GMMovieDLL,"GMMovie_Load",dll_cdecl,ty_real,4,ty_real,ty_string,ty_string,ty_real);
global._GMMovie_Close = external_define(GMMovieDLL,"GMMovie_Close",dll_cdecl,ty_real,1,ty_real);
global._GMMovie_Play = external_define(GMMovieDLL,"GMMovie_Play",dll_cdecl,ty_real,1,ty_real);
global._GMMovie_Stop = external_define(GMMovieDLL,"GMMovie_Stop",dll_cdecl,ty_real,1,ty_real);
global._GMMovie_Pause = external_define(GMMovieDLL,"GMMovie_Pause",dll_cdecl,ty_real,1,ty_real);
global._GMMovie_Resume = external_define(GMMovieDLL,"GMMovie_Resume",dll_cdecl,ty_real,1,ty_real);
global._GMMovie_GetSeek = external_define(GMMovieDLL,"GMMovie_GetSeek",dll_cdecl,ty_real,1,ty_real);
global._GMMovie_Seek = external_define(GMMovieDLL,"GMMovie_Seek",dll_cdecl,ty_real,2,ty_real,ty_real);
global._GMMovie_GetVolume = external_define(GMMovieDLL,"GMMovie_GetVolume",dll_cdecl,ty_real,1,ty_real);
global._GMMovie_SetVolume = external_define(GMMovieDLL,"GMMovie_SetVolume",dll_cdecl,ty_real,2,ty_real,ty_real);
global._GMMovie_GetLength = external_define(GMMovieDLL,"GMMovie_GetLength",dll_cdecl,ty_real,1,ty_real);
global._GMMovie_GetZoom = external_define(GMMovieDLL,"GMMovie_GetZoom",dll_cdecl,ty_real,1,ty_real);
global._GMMovie_SetZoom = external_define(GMMovieDLL,"GMMovie_SetZoom",dll_cdecl,ty_real,2,ty_real,ty_real);
global._GMMovie_GetSize = external_define(GMMovieDLL,"GMMovie_GetSize",dll_cdecl,ty_real,2,ty_real,ty_real);
global._GMMovie_SetSize = external_define(GMMovieDLL,"GMMovie_SetSize",dll_cdecl,ty_real,3,ty_real,ty_real,ty_real);
global._GMMovie_GetPosition = external_define(GMMovieDLL,"GMMovie_GetPosition",dll_cdecl,ty_real,2,ty_real,ty_real);
global._GMMovie_SetPosition = external_define(GMMovieDLL,"GMMovie_SetPosition",dll_cdecl,ty_real,3,ty_real,ty_real,ty_real);
global._GMMovie_GetRepeat = external_define(GMMovieDLL,"GMMovie_GetRepeat",dll_cdecl,ty_real,1,ty_real);
global._GMMovie_SetRepeat = external_define(GMMovieDLL,"GMMovie_SetRepeat",dll_cdecl,ty_real,2,ty_real,ty_real);
global._GMMovie_SetParent = external_define(GMMovieDLL,"GMMovie_SetParent",dll_cdecl,ty_real,2,ty_real,ty_real);
