-- Configuration
local prefix = ":"

-- Table we'll list our commands in
local commands = {}

-- Add a command via this function
function AddCommand(name, args, desc, onCalled)
    local tmpTable = {
        ["Name"] = name;
        ["Arguments"] = args;
        ["Description"] = desc;
        ["OnCalled"] = onCalled;
    }
    table.insert(commands, tmpTable) -- add command to commands table
end

-- local variables to use in our commands

local players = game:GetService("Players")
local plr = players.LocalPlayer
local character = plr.Character

local connection

function plrChatted(msg) -- parse
    for i,cmd in ipairs(commands) do
        if string.sub(msg, 1, #prefix) ~= prefix then return end
        
        local command = string.sub(msg, #prefix + 1, #msg) -- same as doing string.sub(msg, prefix:len() + 1, msg:len())
        local commandSplit = string.split(command, " ")
        
        if string.lower(table.remove(commandSplit, 1)) == cmd["Name"] then
            local s,r = pcall(function() -- execute command under try catch
                --print("its the same")
                cmd["OnCalled"](unpack(commandSplit)) -- execute code
            end)
            if s ~= true then
                -- print message idfk
                print("[LuauEngine] "..r)
                ejectScript()
                error("Fatal error! ejecting...")
            end
        end
    end
end

connection = plr.Chatted:Connect(plrChatted)

function ejectScript()
    connection:Disconnect()
    
    -- Not needed im pretty sure lua handles this already
    --[[
    
    commands = nil
    prefix = nil
    
    players = nil
    plr = nil
    character = nil
    
    ]]
    
end

-- Add debug commands
AddCommand("t", "<>", "Print some text", function()
    print("Worked :)")
end)

AddCommand("e", "<>", "Eject the script", function()
    ejectScript()
end)

-- Add example commands
AddCommand("cmds", "<>", "Display a list of basic commands", function()
    for i,cmd in ipairs(commands) do
        print(prefix..cmd["Name"].." ".." "..cmd["Arguments"].." - "..cmd["Description"])
    end
end)

AddCommand("print", "<...>", "Print inputted text", function(...)
    local text = table.concat({...}, " ")
    print(text)
end)

AddCommand("test", "<string, string>", "Print inputted text split", function(a1, a2)
    print("First argument was: "..a1)
    print("Second argument was: "..a2)
end)
