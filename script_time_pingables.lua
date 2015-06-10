commandArray = {}
--print("searching for pingables")
for i, v in pairs(otherdevices) do
  ip = string.match(i,'%d*%.%d*%.%d*%.%d*')
  if (ip ~= nil) then
    ping_success=os.execute('ping -c3 '..ip)
    if ping_success then
      --print("ping "..i.." success")
      if (otherdevices[i] == 'Off') then
        commandArray[i]='On'
        print('Connection de '..i)
      end
    else
      --print("ping "..i.." fail")
      if (otherdevices[i] == 'On') then
        commandArray[i]='Off'
        print('Déconnection de '..i)
      end
    end

  end
end
--print("end of search")
return commandArray
