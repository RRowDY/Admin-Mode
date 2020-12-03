local delay = 2
local lastOccurance = 0

local function checkPlayerNoClip(ply, state)
  if not adminSys.groupsAllowed[ply:GetUserGroup()] then return end

  if ply.adminMode then
    return true
  else

    local timeElapsed = CurTime() - lastOccurance

    if timeElapsed >= delay and not CLIENT then
      adminSys.noclipCheckMsg(ply, "are not in adminmode!")
      lastOccurance = CurTime()
    end

    return false
  end
end

hook.Add("PlayerNoClip", "adminSystemNoclip", checkPlayerNoClip)

--test
