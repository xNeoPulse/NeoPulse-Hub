--[[
                                                                                         
         ,--.                    ,-.----.                                                
       ,--.'|                    \    /  \                  ,--,                         
   ,--,:  : |                    |   :    \               ,--.'|                         
,`--.'`|  ' :             ,---.  |   |  .\ :         ,--, |  | :                         
|   :  :  | |            '   ,'\ .   :  |: |       ,'_ /| :  : '    .--.--.              
:   |   \ | :   ,---.   /   /   ||   |   \ :  .--. |  | : |  ' |   /  /    '     ,---.   
|   : '  '; |  /     \ .   ; ,. :|   : .   /,'_ /| :  . | '  | |  |  :  /`./    /     \  
'   ' ;.    ; /    /  |'   | |: :;   | |`-' |  ' | |  . . |  | :  |  :  ;_     /    /  | 
|   | | \   |.    ' / |'   | .; :|   | ;    |  | ' |  | | '  : |__ \  \    `. .    ' / | 
'   : |  ; .''   ;   /||   :    |:   ' |    :  | : ;  ; | |  | '.'| `----.   \'   ;   /| 
|   | '`--'  '   |  / | \   \  / :   : :    '  :  `--'   \;  :    ;/  /`--'  /'   |  / | 
'   : |      |   :    |  `----'  |   | :    :  ,      .-./|  ,   /'--'.     / |   :    | 
;   |.'       \   \  /           `---'.|     `--`----'     ---`-'   `--'---'   \   \  /  
'---'          `----'              `---`                                        `----'   
                                                                                         
--]]

local HttpGet = game.HttpGet;
local GameId: number = game.GameId;

local Games: {[number]: string} = loadstring(
  HttpGet(game, "https://raw.githubusercontent.com/xNeoPulse/NeoPulse-Hub/main/Game%20List.lua")
)() :: any

local URL: string? = Games[GameId];
if not URL then return; end

loadstring(HttpGet(game, URL))();