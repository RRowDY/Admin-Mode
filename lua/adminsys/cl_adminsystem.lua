net.Receive("adminSystem_chatNotify", function(len)
  local txt = net.ReadString()
  chat.AddText(Color(231, 76, 60), "| ",  Color(46, 204, 113), "You ", Color(255,255,255), txt)
end)
