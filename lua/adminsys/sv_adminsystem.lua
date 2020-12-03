local _P = FindMetaTable("Player")
_P.adminMode = nil

function adminSys.toggleAdminMsg(ply, txt)
  net.Start("adminSystem_chatNotify")
  net.WriteString(txt)
  net.Send(ply)
end

function adminSys.noclipCheckMsg(ply, txt)
  net.Start("adminSystem_chatNotify")
  net.WriteString(txt)
  net.Send(ply)
end

function _P:adminModeFunc()
  if not adminSys.groupsAllowed[self:GetUserGroup()] then return end
  self.adminMode = not self.adminMode

  adminSys.toggleAdminMsg(self, "have become " .. (self.adminMode and "on" or "off") .. " duty.")

  self:DrawShadow(self.adminMode and false or true)
  self:SetColor(Color(255, 255, 255, (self.adminMode and 0 or 255)))
  self:SetRenderMode(self.adminMode and RENDERMODE_TRANSALPHA or RENDERMODE_NORMAL)

  local playerWeapon = self:GetActiveWeapon()

  if playerWeapon and IsValid(playerWeapon) then 
    playerWeapon:SetColor(Color(255,255,255, (self.adminMode and 0 or 255)))
    playerWeapon:SetRenderMode((self.adminMode and RENDERMODE_TRANSALPHA or RENDERMODE_NORMAL))
  end

  if not self.adminMode then 
    self:GodDisable()
    self:SetMoveType(MOVETYPE_WALK)
  else
    self:GodEnable()
  end
  self:adminParticle()
end

function _P:adminParticle()
  local vPoint = self:GetShootPos() + Vector(0,0,50)
  local effectdata = EffectData()
  effectdata:SetEntity(self)
  effectdata:SetStart(vPoint) 
  effectdata:SetOrigin(vPoint)
  effectdata:SetScale(1)
  util.Effect("entity_remove", effectdata)
end

concommand.Add(adminSys.consoleCommand, function(ply, cmd, args)
  ply:adminModeFunc()
end)

util.AddNetworkString("adminSystem_chatNotify")
