--[[
  Usage:
    Automatically prevents anyone who is admin or superadmin from being kicked, effectiveness is based on which admin mod you use.
    Also supports CAMI as a fall back, if your admin mod supports CAMI, give the proper groups the "nokicknamechange" privelege.
]]--
hook.Add("TTTNameChangeKick", "autorun/server/sv_namechange.lua", function(ply) -- Return true to override kick, very helpful name
  if ply:IsAdmin() or ply:IsSuperAdmin() then 
    return true
  elseif CAMI and CAMI.GetPrivilege("nokicknamechange") then
    return true
  end
end)
