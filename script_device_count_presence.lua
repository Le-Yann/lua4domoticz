commandArray = {}
flag = ':)' -- flag qui sert à retrouver les interrupteurs à compter
id_counter = 74 -- id du compteur à incrémenter
compte = 0
-- On active le script uniquement dans le cas où un interrupteur porteur du flag change d'état
dc = next(devicechanged)
if (string.find(dc,flag)) then
  -- print('décompte des interrupteurs allumés dont le nom contient '..flag)
  for i, v in pairs(otherdevices) do
    if (string.find(i,flag) and v =='On') then
      print(i)
     compte = compte + 1  
    end
  end
  print("fin du décompte : "..compte)
  commandArray['UpdateDevice'] = id_counter .. "|0|" .. compte
end
return commandArray
