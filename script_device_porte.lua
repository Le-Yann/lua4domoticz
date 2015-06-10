commandArray = {}
if (devicechanged['Contact_Porte'] == 'Open') then
  if (otherdevices['Porte'] == 'Off') then
    commandArray['Porte']='On'
  else
    commandArray['Porte']='Off'
  end
  commandArray['Contact_Porte']='On'
end
return commandArray
