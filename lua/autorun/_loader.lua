AddCSLuaFile("config.lua")
include("config.lua")

if SERVER then 
  AddCSLuaFile("adminsys/cl_adminsystem.lua")
  AddCSLuaFile("adminsys/sh_adminsystem.lua")
  include("adminsys/sh_adminsystem.lua")
  include("adminsys/sv_adminsystem.lua")
end

if CLIENT then 
  include("adminsys/cl_adminsystem.lua")
  include("adminsys/sh_adminsystem.lua")
end