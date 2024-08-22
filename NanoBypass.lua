--anti chat logs nigga
--loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua", true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Yeeeter30/NanoAuto/main/antichatlogger.lua",true))()

-- Create a ScreenGui in CoreGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ToggleGui"
screenGui.Parent = game.CoreGui

-- Create a rounded Frame for the button
local buttonFrame = Instance.new("Frame")
buttonFrame.Size = UDim2.new(0, 100, 0, 50) -- Set size to 100x50
buttonFrame.Position = UDim2.new(1, -110, 1, -60) -- Position at bottom right
buttonFrame.BackgroundColor3 = Color3.fromRGB(0, 170, 255) -- Set a background color
buttonFrame.BorderSizePixel = 0
buttonFrame.Active = true -- Make the frame active and draggable
buttonFrame.Draggable = true
buttonFrame.Parent = screenGui

-- Round the corners of the button
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12) -- Adjust corner radius as desired
corner.Parent = buttonFrame

-- Create the button inside the Frame
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(1, 0, 1, 0) -- Fill the frame
toggleButton.BackgroundTransparency = 1 -- Make button background transparent
toggleButton.Text = "Toggle"
toggleButton.Font = Enum.Font.SourceSansBold
toggleButton.TextSize = 24
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text color
toggleButton.Parent = buttonFrame

-- Function to emulate pressing the "K" key using VirtualInputManager
local function emulateKPress()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "K", false, game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, "K", false, game)
end

-- Connect the button click to the function
toggleButton.MouseButton1Click:Connect(emulateKPress)


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "NanoBypasser V1.1 REWRITE | By _9xr and Kwixx..", HidePremium = false, SaveConfig = true, ConfigFolder = "GAYSEX"})

OrionLib:MakeNotification({
	Name = "Thank You",
	Content = "Thank You for Using NanoBypasser V1.1",
	Image = "rbxassetid://4483345998",
	Time = 5
})

OrionLib:MakeNotification({
	Name = "Made By Kwixx And _9xr",
	Content = "Make Sure To Join The Discord! discord.gg/FYk8g3d86p",
	Image = "rbxassetid://4483345998",
	Time = 5
})



--local Home = NanoWindow:CreateTab("Home", 4483362458) -- Title, Image
local Home = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Getting player details
local playerId = LocalPlayer.UserId
local playerName = LocalPlayer.Name

-- Getting game details
local gameId = game.PlaceId
local gameName = game:GetService("MarketplaceService"):GetProductInfo(gameId).Name

-- Creating a section
local Info = Home:AddSection({
	Name = "Main"
})

-- Adding labels to the section
local Label1 = Home:AddLabel("Player ID: " .. playerId)
local Label2 = Home:AddLabel("Username: " .. playerName)
local Label3 = Home:AddLabel("Game Name: " .. gameName)
local Label4 = Home:AddLabel("Game ID: " .. gameId)

Home:AddButton({
   Name = "Rejoin",
   Callback = function()
      local TeleportService = game:GetService("TeleportService")
 
      local Rejoin = coroutine.create(function()
         local Success, ErrorMessage = pcall(function()
            TeleportService:Teleport(gameId, LocalPlayer)
         end)
      
         if ErrorMessage and not Success then
            warn(ErrorMessage)
      end
end)

Home:AddButton({
   Name = "Serverhop",
   Callback = function()
      local HttpService = game:GetService("HttpService")
      local TeleportService = game:GetService("TeleportService")
 
      local PlaceId = gameId
 
      local Response = syn.request({
         Url = string.format("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc&limit=100", tostring(PlaceId)),
         Method = "GET"
      })
 
      local GetRandomJobId = function()
         local JSONDecode = HttpService:JSONDecode(Response.Body)
         return JSONDecode.data[math.random(1, table.getn(JSONDecode.data))].id
      end
 
      TeleportService:TeleportToPlaceInstance(PlaceId, GetRandomJobId())
end
})
 
coroutine.resume(Rejoin)
   end
})

Info:AddButton({
   Name = "Fix Bypasses",
   Callback = function()
      game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("ababab-0", "All")
   end
})

Info:AddParagraph("Stuff", "these are just some recommended stuff to say.")

Info:AddButton({
   Name = "Send a big message",
   Callback = function()
      game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("", "All")
   end
})


--local Auto = Window:AddTab("Auto", 4483362458) -- Title, Image
local Auto = Window:MakeTab({
	Name = "Auto",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--local SectionAuto = Auto:AddSection("AutoBypass by Kwixx")
local SectionAuto = Auto:AddSection({
	Name = "AutoBypass by Kwixx"
})
--[[
local AutoButton = Auto:CreateButton({
   Name = "Execute AutoBypasser",
   Callback = function()
   -- The function that takes place when the button is pressed
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Yeeeter30/NanoAuto/main/NanoAuto.lua",true))()
   end,
})
]]
Auto:AddButton({
	Name = "Execute AutoBypasser",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/Yeeeter30/NanoAuto/main/NanoAuto.lua",true))()
  	end    
})

--local Emojis = NanoWindow:CreateTab("Emoji Bypass", 4483362458)

--local Words = NanoWindow:CreateTab("Words", 4483362458) -- Title, Image_G.config = {

local Words = Window:MakeTab({
	Name = "Words",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--local AZ = Words:CreateSection("Words from A-Z")
local AZ = Words:AddSection({
	Name = "Words from A-Z"
})

Words:AddButton({
	Name = "ass",
	Callback = function()
      		game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("а̀ѕ́ѕ̧", "All")
  	end    
})

Words:AddButton({
	Name = "arse",
	Callback = function()
      		game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("а̂ŕ́ѕ̀е̂", "All")
  	end    
})

Words:AddButton({
	Name = "arsehead",
	Callback = function()
      		game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("а́ŕ̀ѕ̀е́һ̀е̂а̧ḑ̌", "All")
  	end    
})

Words:AddButton({
	Name = "asshat",
	Callback = function()
      		game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("а̧ѕ̧ѕ̀һ̂а̧ţ̌̀", "All")
  	end    
})

Words:AddButton({
	Name = "bastard",
	Callback = function()
      		game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("ḅ́а́ѕ́ť́а́ŕ̀ď́", "All")
  	end    
})

Words:AddButton({
	Name = "bitch",
	Callback = function()
      		game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("ḅ́і́ť̂с̂һ̀", "All")
  	end    
})

Words:AddButton({
	Name = "blowjob",
	Callback = function()
      		game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("ḅ̧ļ̌о̂ẃj̀о̂ḅ́", "All")
  	end    
})

Words:AddButton({
	Name = "bullshit",
	Callback = function()
      		game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("ḅ́ù̧ľ̂ļ̌ѕ̧һ̀і̂ţ̌", "All")
  	end    
})

Words:AddButton({
	Name = "nigga",
	Callback = function()
      		game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("nіḡḡа", "All")
  	end    
})

Words:AddButton({
	Name = "clitkissing",
	Callback = function()
      		game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("clitkissing", "All")
  	end    
})

Words:AddButton({
	Name = "nigger",
	Callback = function()
      		game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("nіḡḡer", "All")
  	end    
})

local Sentence = Window:MakeTab({
	Name = "Sentences",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Sentence:AddButton({
   Name = "ur ass nigga",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("ur а̀ѕ́ѕ̧ nіḡḡа", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("ur а̀ѕ́ѕ̧ nіḡḡа")
      end
   end
})

Sentence:AddButton({
   Name = "shut up black monkey",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("ѕһ               ut uр bӏас               k mоn               kеу", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("ѕһ               ut uр bӏас               k mоn               kеу")
      end
   end
})

Sentence:AddButton({
   Name = "shut up nigger monkey",
   Callback = function()
      
     -- if game.Chat then
      --   game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("sһ   u tu  рn    і      g g  е   rmon  k еу", "All")
     -- else
       --  game.TextChatService.TextChannels.RBXGeneral:SendAsync("sһ   u tu  рn    і      g g  е   rmon  k еу")
      --end

      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("sһ   u tu  рń̂í̂ǵ̂ǵ̂é̂ŕ̂mon  k еу", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("sһ   u tu  рń̂í̂ǵ̂ǵ̂é̂ŕ̂mon  k еу")
      end
   end
})

Sentence:AddButton({
   Name = "this bitch so broke she sells pics of her ass",
   Callback = function()
      --if game.Chat then
       --  game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("t һ і ѕb і t с һѕ оb r о k еѕ һ еѕ  е ӏ ӏ ѕр і с ѕо fһ е rа               ѕ ѕ", "All")
     -- else
      --   game.TextChatService.TextChannels.RBXGeneral:SendAsync("t һ і ѕb і t с һѕ оb r о k еѕ һ еѕ  е ӏ ӏ ѕр і с ѕо fһ е rа               ѕ ѕ")
     -- end

      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("t һ і ѕb́̂í̂t́̂ć̂h́̂ѕ оb r о k еѕ һ еѕ  е ӏ ӏ ѕр і с ѕо fһ е rá̂ś̂ś̂", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("t һ і ѕb́̂í̂t́̂ć̂h́̂ѕ оb r о k еѕ һ еѕ  е ӏ ӏ ѕр і с ѕо fһ е rá̂ś̂ś̂")
      end
   end
})

Sentence:AddButton({
   Name = "get a life you fag",
   Callback = function()
    --  if game.Chat then
      --   game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("g е tаӏ і f еу о uf а g", "All")
     -- else
      --   game.TextChatService.TextChannels.RBXGeneral:SendAsync("g е tаӏ і f еу о uf а g")
     -- end

      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("g е tаӏ і f еу о uf́̂aǵ̂", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("g е tаӏ і f еу о uf́̂aǵ̂")
      end
   end
})

Sentence:AddButton({
   Name = "ggs get roasted bitch",
   Callback = function()
    --  if game.Chat then
      --   game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("g е tаӏ і f еу о uf а g", "All")
     -- else
      --   game.TextChatService.TextChannels.RBXGeneral:SendAsync("g е tаӏ і f еу о uf а g")
     -- end

      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("ggsgetroastedb́̂í̂t́̂ć̂h́̂", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("ggsgetroastedb́̂í̂t́̂ć̂h́̂")
      end
   end
})

Sentence:AddButton({
   Name = "theres free porn out here nigga",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("th   ￴￴￴￴￴￴еresfre￴ ep     ￴￴￴о   r￴￴￴no  utth￴￴￴   er еniǵ̂ǵ̂a", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("th   ￴￴￴￴￴￴еresfre￴ ep     ￴￴￴о   r￴￴￴no  utth￴￴￴   er еniǵ̂ǵ̂a") --n     і   ￴￴￴￴￴￴g g￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴а
      end
   end
})

Sentence:AddButton({
   Name = "wsg my niggas",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("ws￴￴￴￴￴￴￴￴￴￴￴￴  gm  yniǵ̂ǵ̂as", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("ws￴￴￴￴￴￴￴￴￴￴￴￴  gm  yniǵ̂ǵ̂asniǵ̂ǵ̂as") --n     ￴￴￴і￴￴￴￴￴￴￴￴￴￴￴￴ g g  а￴￴￴ ѕ
         --jėẇș
      end
   end
})

Sentence:AddButton({
   Name = "wsg my nigga",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("ws￴￴￴￴￴￴￴￴￴￴￴￴  gm  yniǵ̂ǵ̂a", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("ws￴￴￴￴￴￴￴￴￴￴￴￴  gm  yniǵ̂ǵ̂a") --n     ￴￴￴і￴￴￴￴￴￴￴￴￴￴￴￴ g g  а￴￴￴ 
         --jėẇș
      end
   end
})

Sentence:AddButton({
   Name = "kill all faggots",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("k  i￴￴￴￴￴￴lӏal￴￴￴ lf      а￴￴￴￴￴￴￴￴￴ g g￴￴￴￴￴￴о tѕ", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("k  i￴￴￴￴￴￴lӏal￴￴￴ lf      а￴￴￴￴￴￴￴￴￴ g g￴￴￴￴￴￴о tѕ") --f́̂á̂ǵ̂ǵ̂ó̂t́̂s
         --jėẇș
      end
   end
})

Sentence:AddButton({
   Name = "fuck you cunt",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("f ￴￴￴￴￴￴￴￴￴u  сky  ouс  ￴￴￴￴￴￴un t", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("f ￴￴￴￴￴￴￴￴￴u  сky  ouс  ￴￴￴￴￴￴un t")
         --jėẇș
      end
   end
})

Sentence:AddButton({
   Name = "I LOVE THE ISIS",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("I LOVE THE Í̂SÍ̂Ś̂", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("I LOVE THE Í̂SÍ̂Ś̂")
      end
   end
})

Sentence:AddButton({
   Name = "kill all jews",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("ki               ll all jėẇș", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("ki               ll all jėẇș")
         --je                              ws
      end
   end
})

Sentence:AddButton({
   Name = "shut the fuck up nigger (❌)",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("ѕһuttһеf    u с   ￴￴￴kuрń̂í̂ǵ̂ǵ̂er", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("ѕһuttһеf    u с   ￴￴￴kuрń̂í̂ǵ̂ǵ̂er")
         --je                              ws
      end
   end
})

Sentence:AddButton({
   Name = "the nigger horde",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("th  еń̂í̂ǵ̂ǵ̂erһ   о rd  е", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("th  еń̂í̂ǵ̂ǵ̂erһ   о rd  е") --һ   о rd  е
      end
   end
})

Sentence:AddButton({
   Name = "get back to work slave (❌)",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("g е tb а с kt оw о r kѕ ӏ а v е", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("g е tb а с kt оw о r kѕ ӏ а v е")
      end
   end
})

Sentence:AddButton({
   Name = "KILL YOURSELF",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("ΚІLLҮ     ОUR ЅЕLF", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("ΚІLLҮ     ОUR ЅЕLF") --n               і               g g               еr
      end
   end
})

Sentence:AddButton({
   Name = "i hope you get raped to death",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("і һореуоugе    tr               аре dtоdеа    tһ", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("і һореуоugе    tr               аре dtоdеа    tһ") --n               і               g g               еr
      end
   end
})

Sentence:AddButton({
   Name = "are you fucking sped",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("аrеуо uf    u сkіngѕре d", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("аrеуо uf    u сkіngѕре d") --n               і               g g               еr
      end
   end
})

Sentence:AddButton({
   Name = "you're a slave nigger",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("у о u'r еаѕ ӏ а v еń̂í̂ǵ̂ǵ̂é̂r", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("у о u'r еаѕ ӏ а v еń̂í̂ǵ̂ǵ̂é̂r") --n               і               g g               еr
      end
   end
})

Sentence:AddButton({
   Name = "fuck you mean lmfao",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("f   ￴￴￴￴￴￴￴￴￴u с￴￴￴￴￴￴ kу￴￴￴ oume   anӏ  m  f      а￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴о", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("f   ￴￴￴￴￴￴￴￴￴u с￴￴￴￴￴￴ kу￴￴￴ oume   anӏ  m  f      а￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴о")
      end
   end
})

Sentence:AddButton({
   Name = "fuck off skid",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("f   u￴￴￴￴￴￴￴￴￴ с￴￴￴ ko   ffś̂kid́̂", "All") --ѕ   kid
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("f   u￴￴￴￴￴￴￴￴￴ с￴￴￴ ko   ffś̂kid́̂")
      end
   end
})

Sentence:AddButton({
   Name = "man fuck this frfr",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("ma￴￴￴￴￴￴￴￴￴ nf    u с   ￴￴￴kt  һ і sfrfr", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("ma￴￴￴￴￴￴￴￴￴ nf    u с   ￴￴￴kt  һ і sfrfr")
      end
   end
})

Sentence:AddButton({
   Name = "quit yapping lil nigga",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("quit yapping lil ń̂í̂ǵ̂ǵ̂á̂", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("quit yapping lil ń̂í̂ǵ̂ǵ̂á̂")
      end
   end
})

Sentence:AddButton({
   Name = "u aint him lil nigga",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("you aint him lil ń̂í̂ǵ̂ǵ̂á̂", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("you aint him lil ń̂í̂ǵ̂ǵ̂á̂")
      end
   end
})

Sentence:AddButton({
   Name = "you psychcopatic nigger go kys",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("yo    upsych   opathi   ￴￴￴сn￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴ і   g g  е rk ￴￴￴￴￴￴￴￴￴у  ѕ", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("yo    upsych   opathi   ￴￴￴сn￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴￴ і   g g  е rk ￴￴￴￴￴￴￴￴￴у  ѕ")
      end
   end
})

Sentence:AddButton({
   Name = "LEMME SHIT ON YOUR FACE",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("LЕММЕ Ѕ               НІТ ОΝ ҮО UR FАСЕ", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("LЕММЕ Ѕ               НІТ ОΝ ҮО UR FАСЕ")
      end
   end
})

local SexTab = Window:MakeTab({
	Name = "Sexual",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

SexTab:AddButton({
   Name = "be a good girl for me and get naked",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("bе а gооd gіrӏ fоr mе аnd gе t nа  kе               d", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("bе а gооd gіrӏ fоr mе аnd gе t nа  kе               d")
      end
   end
})

Sentence:AddButton({
   Name = "suck my dick for a dollar niggerson",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("ś̂ú̂cḱ̂myd́̂í̂ć̂ḱ̂foradollarń̂í̂ǵ̂ǵ̂é̂rś̂ó̂ń̂", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("ś̂ú̂cḱ̂myd́̂í̂ć̂ḱ̂foradollarń̂í̂ǵ̂ǵ̂é̂rś̂ó̂ń̂")
      end
   end
})

SexTab:AddButton({
   Name = "can i touch your boobs?",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("canіt    o   uс ￴￴￴hyou￴￴￴rb    о о￴￴￴bѕ?", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("canіt    o   uс ￴￴￴hyou￴￴￴rb    о о￴￴￴bѕ?")
      end
   end
})

SexTab:AddButton({
   Name = "can you girls scissor while i watch?",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("can you girls scissor while i watch?", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("can you girls scissor while i watch?")
      end
   end
})

SexTab:AddButton({
   Name = "thinking about raping you rn",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("tһіnkіng аbout r               аріng уо               u rn", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("tһіnkіng аbout r               аріng уо               u rn")
      end
   end
})

SexTab:AddButton({
   Name = "nice boobs",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("n ісе b    о о￴￴￴bѕ", "All") --t               іtѕ
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("n ісе b    о о￴￴￴bѕ")
      end
   end
})

SexTab:AddButton({
   Name = "im jerking off rn",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("іm јеr               kіng о               ff rn", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("іm јеr               kіng о               ff rn")
      end
   end
})

SexTab:AddButton({
   Name = "take your pants off and lemme eat you out",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("tаkе уо               ur раn tѕ о               ff аnd ӏеmmе еа t уо u оu t", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("tаkе уо               ur раn tѕ о               ff аnd ӏеmmе еа t уо u оu t")
      end
   end
})

SexTab:AddButton({
   Name = "suck the almighty dick you worthless slave",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("ѕ   u c   kt  h￴￴￴￴￴￴ еalmight  yd￴￴￴￴￴￴￴￴￴   іс   kyo   uworthl  essѕ  ӏ a       ve", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("ѕ   u c   kt  h￴￴￴￴￴￴ еalmight  yd￴￴￴￴￴￴￴￴￴   іс   kyo   uworthl  essѕ  ӏ a       ve")
         --jėẇș
      end
   end
})

SexTab:AddButton({
   Name = "ill fucking rape you",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("i￴￴￴￴￴￴ӏ  lf    u  с￴￴￴￴￴￴￴￴￴ ki  n￴￴￴gr   арeyo￴￴￴u", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("i￴￴￴￴￴￴ӏ  lf    u  с￴￴￴￴￴￴￴￴￴ ki  n￴￴￴gr   арeyo￴￴￴u")
         --jėẇș
      end
   end
})


local WebTab = Window:MakeTab({
	Name = "Websites",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

WebTab:AddButton({
   Name = "www.pornhub.com",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("i￴￴￴￴￴￴ӏ  lf    u  с￴￴￴￴￴￴￴￴￴ ki  n￴￴￴gr   арeyo￴￴￴u", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("i￴￴￴￴￴￴ӏ  lf    u  с￴￴￴￴￴￴￴￴￴ ki  n￴￴￴gr   арeyo￴￴￴u")
         --jėẇș
      end
   end
})


--local SEX = Emojis:CreateSection("Bypass With Emoji")

local Emojis = Window:MakeTab({
	Name = "Emoji Bypass",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local SEX = Emojis:AddSection({
	Name = "Bypass With Emoji"
})

Emojis:AddButton({
   Name = "Nigga",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("🅽🅸🅶🅶🅰", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("🅽🅸🅶🅶🅰")
      end
   end
})

Emojis:AddButton({
   Name = "Nigger",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("🅽🅸🅶🅶🅴🆁", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("🅽🅸🅶🅶🅴🆁")
      end
   end
})

Emojis:AddButton({
   Name = "NIGGA WTF",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("🅽🅸🅶🅶🅰 🆆🆃🅵", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("🅽🅸🅶🅶🅰 🆆🆃🅵")
      end
   end
})

Emojis:AddButton({
   Name = "somebody feed this nigger boy a banana",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("somebody feed this 🅽🅸🅶🅶🅴🆁 boy a banana", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("somebody feed this 🅽🅸🅶🅶🅴🆁 boy a banana")
      end
   end
})

Emojis:AddButton({
   Name = "humpy dumpy built ass nigga",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("humpy dumpy built 🅰🆂🆂 🅽🅸🅶🅶🅰", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("humpy dumpy built 🅰🆂🆂 🅽🅸🅶🅶🅰")
      end
   end
})

Emojis:AddButton({
   Name = "GO JUMP OFF A FUCKING BRIDGE NIGGA",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("GO 🅹🆄🅼🅿 🅾🅵🅵 A 🅵🆄🅲🅺🅸🅽🅶 BRIDGE 🅽🅸🅶🅶🅰", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("GO 🅹🆄🅼🅿 🅾🅵🅵 A 🅵🆄🅲🅺🅸🅽🅶 BRIDGE 🅽🅸🅶🅶🅰")
      end
   end
})

Emojis:AddButton({
   Name = "I LOVE THE KKK",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("I LOVE THE 🅺🅺🅺!", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("I LOVE THE 🅺🅺🅺!")
      end
   end
})

Emojis:AddButton({
   Name = "why is this black nigga following me!? somebody help!",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("why is this 🅱🅻🅰🅲🅺 🅽🅸🅶🅶🅰 following me!? somebody help!", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("why is this 🅱🅻🅰🅲🅺 🅽🅸🅶🅶🅰 following me!? somebody help!")
      end
   end
})

Emojis:AddButton({
   Name = "yeah yeah keep yapping stupid ass nigga",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("yeah yeah keep yapping stupid 🅰🆂🆂 🅽🅸🅶🅶🅰", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("yeah yeah keep yapping stupid 🅰🆂🆂 🅽🅸🅶🅶🅰")
      end
   end
})

Emojis:AddButton({
   Name = "I LOVE FUCKING HOES",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("I LOVE 🅵🆄🅲🅺🅸🅽🅶 🅷🅾🅴🆂", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("I LOVE 🅵🆄🅲🅺🅸🅽🅶 🅷🅾🅴🆂")
      end
   end
})

Emojis:AddButton({
   Name = "shut the fuck up bitch",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("shut the 🅵🆄🅲🅺 up 🅱🅸🆃🅲🅷", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("shut the 🅵🆄🅲🅺 up 🅱🅸🆃🅲🅷")
      end
   end
})

Emojis:AddButton({
   Name = "shut the fuck up",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("shut the 🅵🆄🅲🅺 up", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("shut the 🅵🆄🅲🅺 up")
      end
   end
})

Emojis:AddButton({
   Name = "holy shit",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("holy 🆂🅷🅸🆃", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("holy 🆂🅷🅸🆃")
      end
   end
})

Emojis:AddButton({
   Name = "wsg my nigga",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("wsg my 🅽🅸🅶🅶🅰", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("wsg my 🅽🅸🅶🅶🅰")
      end
   end
})

Emojis:AddButton({
   Name = "UR ASS NIGGA",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("UR 🅰🆂🆂 🅽🅸🅶🅶🅰", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("UR 🅰🆂🆂 🅽🅸🅶🅶🅰")
      end
   end
})

Emojis:AddButton({
   Name = "I OWN YO ASS NIGGA",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("I OWN YO 🅰🆂🆂 🅽🅸🅶🅶🅰", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("I OWN YO 🅰🆂🆂 🅽🅸🅶🅶🅰")
      end
   end
})

Emojis:AddButton({
   Name = "COME GET ME NIGGA",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("COME GET ME 🅽🅸🅶🅶🅰", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("COME GET ME 🅽🅸🅶🅶🅰")
      end
   end
})

Emojis:AddButton({
   Name = "GO BACK TO AFRICA NIGGA",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("GO BACK TO 🅰🅵🆁🅸🅲🅰 🅽🅸🅶🅶🅰", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("GO BACK TO 🅰🅵🆁🅸🅲🅰 🅽🅸🅶🅶🅰")
      end
   end
})

Emojis:AddButton({
   Name = "GO BACK TO ASIA CHING CHONG NIGGA",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("GO BACK TO 🅰🆂🅸🅰 🅲🅷🅸🅽🅶 🅲🅷🅾🅽🅶 🅽🅸🅶🅶🅰", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("GO BACK TO 🅰🆂🅸🅰 🅲🅷🅸🅽🅶 🅲🅷🅾🅽🅶 🅽🅸🅶🅶🅰")
      end
   end
})

Emojis:AddButton({
   Name = "NIGGA ARE U SPED",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("🅽🅸🅶🅶🅰 ARE YOU 🆂🅿🅴🅳", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("🅽🅸🅶🅶🅰 ARE YOU 🆂🅿🅴🅳")
      end
   end
})

Emojis:AddButton({
   Name = "STUPID ASS NIGGA",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("STUPID 🅰🆂🆂 🅽🅸🅶🅶🅰", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("STUPID 🅰🆂🆂 🅽🅸🅶🅶🅰")
      end
   end
})

Emojis:AddButton({
   Name = "STFU BITCH ASS NIGGA",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("🆂🆃🅵🆄 🅱🅸🆃🅲🅷 🅰🆂🆂 🅽🅸🅶🅶🅰", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("🆂🆃🅵🆄 🅱🅸🆃🅲🅷 🅰🆂🆂 🅽🅸🅶🅶🅰")
      end
   end
})

Emojis:AddButton({
   Name = "STFU NIGGA I OWN YOU",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("🆂🆃🅵🆄 🅽🅸🅶🅶🅰 I OWN YOU", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("🆂🆃🅵🆄 🅽🅸🅶🅶🅰 I OWN YOU")
      end
   end
})

Emojis:AddButton({
   Name = "STFU NIGGA I CAN SMELL YOU FROM MY SCREEN",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("🆂🆃🅵🆄 🅽🅸🅶🅶🅰 I CAN SMELL U FROM MY SCREEN", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("🆂🆃🅵🆄 🅽🅸🅶🅶🅰 I CAN SMELL U FROM MY SCREEN")
      end
   end
})

local SEX3 = Emojis:AddSection({
	Name = "Emoji Bypass | SEX"
})

Emojis:AddButton({
   Name = "I ABUSIVELY RAPED A MINOR",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("I ABUSIVELY 🆁🅰🅿🅴🅳 A 🅼🅸🅽🅾🆁", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("I ABUSIVELY 🆁🅰🅿🅴🅳 A 🅼🅸🅽🅾🆁")
      end
   end
})

Emojis:AddButton({
   Name = "SUCK MY 2 INCH HAIRY COCK YOU BITCH",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("🆂🆄🅲🅺 MY 2 INCH HAIRY 🅲🅾🅲🅺 YOU 🅱🅸🆃🅲🅷", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("🆂🆄🅲🅺 MY 2 INCH HAIRY 🅲🅾🅲🅺 YOU 🅱🅸🆃🅲🅷")
      end
   end
})

Emojis:AddButton({
   Name = "I WILL ABUSIVELY RAPE YOU",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("I WILL ABUSIVELY 🆁🅰🅿🅴 YOU", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("I WILL ABUSIVELY 🆁🅰🅿🅴 YOU")
      end
   end
})

Emojis:AddButton({
   Name = "IM ABOUT TO CUM!! ~AAAH",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("IM ABOUT TO 🅲🆄🅼!! ~AAAH", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("IM ABOUT TO 🅲🆄🅼!! ~AAAH")
      end
   end
})

Emojis:AddButton({
   Name = "WE FUCK NIGGAS BOY",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("WE 🅵🆄🅲🅺 🅽🅸🅶🅶🅰🆂 BOY", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("WE 🅵🆄🅲🅺 🅽🅸🅶🅶🅰🆂 BOY")
      end
   end
})

Emojis:AddButton({
   Name = "PORNHUB SEX",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("🅿🅾🆁🅽🅷🆄🅱 🆂🅴🆇", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("🅿🅾🆁🅽🅷🆄🅱 🆂🅴🆇")
      end
   end
})

Emojis:AddButton({
   Name = "UNPROTECTED SEX WITH A RABBIT",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("UNPROTECTED 🆂🅴🆇 WITH A RABBIT🙏", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("UNPROTECTED 🆂🅴🆇 WITH A RABBIT")
      end
   end
})

Emojis:AddButton({
   Name = "HOT GAY SEX WITH A NIGGA",
   Callback = function()
      if game.Chat then
         game.ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer("HOT 🅶🅰🆈 🆂🅴🆇 WITH A 🅽🅸🅶🅶🅰", "All")
      else
         game.TextChatService.TextChannels.RBXGeneral:SendAsync("HOT 🅶🅰🆈 🆂🅴🆇 WITH A 🅽🅸🅶🅶🅰")
      end
   end
})

OrionLib:Init()