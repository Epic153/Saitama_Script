local Atlas = loadstring(game:HttpGet("https://siegehub.net/Atlas.lua"))()

local test = Atlas.new({
    Name = "Free Emotes FE";
    ConfigFolder = "AtlasScript";
    Credit = "Made by TranHenry!";
    Color = Color3.fromRGB(164, 53, 90);
    FullName = "Do Fast Script";
    UseLoader = true;
    Bind = "LeftControl";
    CheckKey = function(e) -- this can be nil to disable key checking
        return e == "HenryDev"
    end;
    Discord = "https://discord.gg/PNwveMWgQa"
})

local p1 = test:CreatePage("Info")
local p2 = test:CreatePage("Main")

local s1 = p1:CreateSection("Info")
local s3 = p2:CreateSection("Section 1")
local s4 = p2:CreateSection("Emotes")
local s5 = p2:CreateSection("Stuff")

s5:CreateButton({
    Name = "AntiSlow"; -- required: name of element
    Callback = function() -- required: function to be called when button is pressed
        test:Notify({
            Title = "Turn On";
            Content = "AntiSlow By Henry"
        })
	local player = game.Players.LocalPlayer
	local character = player.Character
	local humanoid = character:FindFirstChild("Humanoid")
	while true do
humanoid.WalkSpeed= 27
wait(0)
end
	end
})
s4:CreateButton({
    Name = "Chair"; -- required: name of element
    Callback = function() -- required: function to be called when button is pressed
        test:Notify({
            Title = "Emote";
            Content = "Chair"
        })

local args = {
    [1] = {
        ["Goal"] = "Emote",
        ["Emote"] = "Chair"
    }
}

game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))

    end
})

s4:CreateButton({
    Name = "Fresh Fries"; -- required: name of element
    Callback = function() -- required: function to be called when button is pressed
        test:Notify({
            Title = "Emote";
            Content = "Fresh Fries"
        })

local args = {
    [1] = {
        ["Goal"] = "Emote",
        ["Emote"] = "Fresh Fries"
    }
}

game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))

    end
})
s4:CreateButton({
    Name = "RIP"; -- required: name of element
    Callback = function() -- required: function to be called when button is pressed
        test:Notify({
            Title = "Emote";
            Content = "RIP"
        })

local args = {
    [1] = {
        ["Goal"] = "Emote",
        ["Emote"] = "RIP"
    }
}

game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))

    end
})

s4:CreateButton({
    Name = "4K"; -- required: name of element
    Callback = function() -- required: function to be called when button is pressed
        test:Notify({
            Title = "Emote";
            Content = "4K."
        })

local args = {
    [1] = {
        ["Goal"] = "Emote",
        ["Emote"] = "4K"
    }
}

game:GetService("Players").LocalPlayer.Character.Communicate:FireServer(unpack(args))

    end
})

s3:CreateKeybind({
    Name = "Keybind"; -- required: name of element
    Flag = "Keybind"; -- required: unique flag name to use for element
    Default = "E"; -- required: keycode name that will be used when config saving is disabled or there is no saved configs
    Callback = function(key) -- optional: function to be called when the keybind is changed by the player
        print("Keybind changed to",key.Name)
    end;
    KeyPressed = function() -- optional: function to be called when the keybind is pressed by their player (handles InputBegan for you basically)
		Print("")
	end;
    -- Scroll to the bottom of the page to read more about the following two:
    Warning = "This Button is updating!"; -- optional: this argument is used in all elements (except for Body) and will indicate text that will appear when the player hovers over the warning icon
    WarningIcon = 11110093949; -- optional: ImageAssetId for warning icon, will only be used if Warning is not nil, default is yellow warning icon.
})
