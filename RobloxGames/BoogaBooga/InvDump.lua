local data = getrenv()._G.data
local inventory = data.inventory

function dumpT(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dumpT(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

for _,v in ipairs(inventory) do
	print(v.name .. " " .. dumpT(v))
end
