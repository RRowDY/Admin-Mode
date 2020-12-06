adminSys = adminSys or {}

adminSys.consoleCommand = "adminmode" -- The console command for the admin system. Requires server restart or map reload.

adminSys.prefix = "~" -- The prefix for the chat command. Requires server restart or map reload.

adminSys.chatCommand = "adminmode" -- The chat command for the admin system. Requires server restart or map reload.

adminSys.groupsAllowed = { -- Usergroups allowed to use the console command. Follow the format below.
  ["superadmin"] = true,
  -- ["admin"] = true,
  -- ["mod"] = true,
  -- ["tmod"] = true,
}