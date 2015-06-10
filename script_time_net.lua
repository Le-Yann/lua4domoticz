commandArray = {}

ping_google=os.execute('ping -c3 8.8.8.8')
ping_yahoo=os.execute('ping -c3 www.yahoo.com')
if (ping_google or ping_yahoo) then
  if (otherdevices['Net'] == 'Off') then
    commandArray['Net']='On'
  end
else
  if (otherdevices['Net'] == 'On') then
    commandArray['Net']='Off'
  end
end

return commandArray
