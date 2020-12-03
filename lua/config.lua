adminSys = adminSys or {}

adminSys.consoleCommand = "adminmode" -- The console command for the admin system.

adminSys.groupsAllowed = { -- Usergroups allowed to use the console command.
  ["admin"] = true,
  ["mod"] = true,
  ["smod"] = true,
  ["tmod"] = true,
  ["gamemaster"] = true,
}