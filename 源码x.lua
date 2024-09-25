local CoreGui = game:GetService("StarterGui")CoreGui:SetCore("SendNotification", {    Title = "🌿钦云脚本🌿",    Text = "耐心等待（🌿反挂机已开启，不知道有没有用🌿）",    Duration = 5, })print("反挂机开启")		local vu = game:GetService("VirtualUser")		game:GetService("Players").LocalPlayer.Idled:connect(function()		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)		   wait(1)		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)		end)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "钦云脚本", HidePremium = false, SaveConfig = false, IntroText = "欢迎使用", ConfigFolder = "欢迎使用"})

local Tab = Window:MakeTab({
    Name = "脚本公告",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddParagraph("作者","钦云")
Tab:AddLabel("此脚本完全免费")
Tab:AddLabel("作者q群515966991")
Tab:AddButton({
   Name = "点击复制群号",
   Callback = function()
    setclipboard("515966991")
   end
})
Tab:AddLabel("此脚本为免费缝合脚本")
Tab:AddLabel("禁止倒卖")

local Tab = Window:MakeTab({
	Name = "通用功能",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "光影",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/arzRCgwS"))()
  end
})

Tab:AddButton({
  Name = "光影2",
  Default = false,
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
  end
})

Tab:AddButton({
	Name = "画质",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end
})    

Tab:AddButton({
  Name = "旋转",
  Callback = function()
    loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
  end
})

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})
 
Tab:AddButton({
	Name = "飞车",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
	end
})

Tab:AddButton({
	Name = "人物无敌",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
	end    
})

Tab:AddButton({
	Name = "飞行",
	Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/U27yQRxS'))()
	end 
})

Tab:AddButton({
	Name = "速度更改",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/Zuw5T7DP",true))()
	end    
})

Tab:AddButton({
	Name = "甩飞别人",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()
  	end    
})

Tab:AddButton({
	Name = "爬墙",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end
})

Tab:AddButton({
    Name = "动作",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Zj4NnKs6"))()
    end
})

Tab:AddButton({
	Name = "电脑键盘",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})

Tab:AddButton({
  Name = "铁拳",
  Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()
  end
})

Tab:AddButton({
  Name = "无敌",
  Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
  end
})

Tab:AddButton({
  Name = "飞车",
  Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/G3GnBCyC", true))()
  end
})

Tab:AddButton({
   Name = "飞车2",
   Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/vb/main/%E9%A3%9E%E8%BD%A6.lua"))()
   end
})

Tab:AddButton({
	Name = "吸取全部玩家",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/hQSBGsw2'))()
  	end    
})

Tab:AddButton({
  Name = "死亡笔记",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))()
  end
})

Tab:AddButton({
  Name = "甩人",
  Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
  end  
})

Tab:AddButton({
  Name = "铁拳",
  Callback = function()  	
  loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()
   end
})

Tab:AddButton({
	Name = "踏空",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
	end
})

local player = Window:MakeTab({
	Name = "玩家",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "无限跳",
    Default = false,
	Callback = function(Value)
loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
	end
})

player:AddTextbox({
	Name = "移动速度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})

player:AddTextbox({
	Name = "跳跃高度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})

player:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})

player:AddButton({
	Name = "🚀飞行",
	Callback = function()
      	loadstring(game:HttpGet("https://pastebin.com/raw/U27yQRxS"))()
  	end
})

player:AddButton({
	Name = "透视",
	Callback = function()
      	local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
  	end
})

player:AddButton({
	Name = "传送玩家",
	Callback = function()
      	loadstring(game:HttpGet(("https://pastebin.com/raw/YNVbeqPy")))()
  	end
})

player:AddButton({
	Name = "fps显示",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/littlegui/main/FPS-Counter'))()
  	end
})

player:AddButton({
	Name = "玩家进入提示",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
  	end
})

local Tab = Window:MakeTab({
	Name = "小黑子",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function()
    loadstring(game:HttpGet(('https://gist.githubusercontent.com/blox-hub-roblox/021bad62bbc6a0adc4ba4e625f9ad7df/raw/c89af6e1acf587d09e4ce4bc7510e7100e0c0065/swordWarrior.lua'),true))()
  end
})

Tab:AddButton({
  Name = "2",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0SwordWarriors"))()
  end
})

local Tab = Window:MakeTab({
	Name = "自然灾害",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "自然灾害",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/5fKvum70"))()
  end
})
Tab:AddButton({
	Name = "自然灾害2",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()
  	end    
})

local Tab = Window:MakeTab({
    Name = "寻宝模拟器",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/gghb/main/%E4%B8%81%E4%B8%81%E5%AF%BB%E5%AE%9D.txt"))()
  end
})

local Tab = Window:MakeTab({
	Name = "通用",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "😾宠物模拟器X😾",
	Callback = function()
     loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/ZeeroxHub/main/Loader.lua')()
  	end    
})
Tab:AddButton({
	Name = "🐝蜂群模拟器🐝",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/3A61hnGA", true))()
  	end    
})
Tab:AddButton({
	Name = "Evade",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Evade/main.lua"))()
  	end    
})
Tab:AddButton({
	Name = "后室",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/Gsqd40fL'))()
  	end    
})
Tab:AddButton({
	Name = "Synapse X",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/tWGxhNq0"))()
  	end    
})
Tab:AddButton({
	Name = "🌈彩虹朋友🌈",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/JNHHGaming/Rainbow-Friends/main/Rainbow%20Friends"))()
  	end    
})
Tab:AddButton({
	Name = "HoHo",
	Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
  	end    
})
Tab:AddButton({
	Name = "tds查看兵",
	Callback = function()
     local Towers = game:GetService("Players").LocalPlayer.PlayerGui.Interface.Root.Inventory.View.Frame.Frame.Frame
 
for _, v in pairs(Towers:GetDescendants()) do
	if v:IsA("ImageButton") then
        v.Visible = true
	end
end
  	end    
})

local Tab = Window:MakeTab({
	Name = "doors",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "doors",
  Callback = function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\117\72\72\112\56\102\122\83"))()
  	end
})
Tab:AddButton({
	Name = "doos2",
	Callback = function()
     loadstring(game:HttpGet("https://github.com/DocYogurt/Main/raw/main/Scripts/DF2RW.lua"))()
  	end 
})  	
Tab:AddButton({
	Name = "门2.0",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\89\83\108\111\110\47\82\65\87\45\46\46\97\45\115\99\114\105\112\116\47\109\97\105\110\47\37\69\57\37\57\57\37\56\56\68\79\79\82\83\50\46\48\77\79\79\78\37\69\54\37\66\55\37\66\55\37\69\54\37\66\55\37\56\54\34\41\41\40\41")()
    end
})
    
local Tab = Window:MakeTab({
	Name = "🥫最强战场🥫",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Strongest/main/Battlegrounds77"))()
  end
})

Tab:AddButton({
   Name = "点击复制秘钥",
   Callback = function()
    setclipboard("BestTheStrongest5412Roblox")
   end
})

Tab:AddButton({
	Name = "2",
	Callback = function()
     loadstring(game:HttpGet("https://rawscripts.net/raw/The-Strongest-Battlegrounds-saitama-to-gojo-MOBILE-SUPPORT-18533"))()
	end    
})

local Tab = Window:MakeTab({
    Name = "🥑河北唐县🥑",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "皮脚本",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/Pi-script-Hebeitangxian.lua"))()
  end
})

local Tab = Window:MakeTab({
	Name = "鲨口求生2",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddDropdown({
	Name = "免费船只",
	Default = "1",
	Options = {"DuckyBoatBeta", "DuckyBoat", "BlueCanopyMotorboat", "BlueWoodenMotorboat", "UnicornBoat", "Jetski", "RedMarlin", "Sloop", "TugBoat", "SmallDinghyMotorboat", "JetskiDonut", "Marlin", "TubeBoat", "FishingBoat", "VikingShip", "SmallWoodenSailboat", "RedCanopyMotorboat", "Catamaran", "CombatBoat", "TourBoat", "Duckmarine", "PartyBoat", "MilitarySubmarine",  "GingerbreadSteamBoat", "Sleigh2022", "Snowmobile", "CruiseShip"},
	Callback = function(Value)
local ohString1 = (Value)

game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(ohString1)
	end    
})

Tab:AddButton({
	Name = "自动杀鲨鱼🦈",
	Callback = function()
     local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "钦云脚本",
    Text = "（自动已开启）",
    Duration = 3, 
})
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua",true))()
  	end    
})

local Tab = Window:MakeTab({
    Name = "🥕内脏与黑火药🥕",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "🥚内脏与黑火药🥚",
  Callback = function()
 loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\34\104\116\116\112\115\58\47\47\102\114\101\101\110\111\116\101\46\98\105\122\47\114\97\119\47\109\117\122\110\104\101\114\104\114\117\34\41\44\116\114\117\101\41\41\40\41\10")()
   end
})

local Tab = Window:MakeTab({
	Name = "极速传奇",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
   Name = "极速传奇1",
   Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/Legend-of-Speed-Auto-/main/GetPet"))()
   end
})

Tab:AddButton({
   Name = "极速传奇2",
   Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/renlua/Roblox/main/%E6%9E%81%E9%80%9F%E4%BC%A0%E5%A5%87.lua"))()
   end
})

local Tab = Window:MakeTab({
	Name = "战斗勇士",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
   Name = "战斗勇士1",
   Callback = function()
   loadstring(game:HttpGet("https://paste.gg/p/anonymous/697fc3cad5f743508318cb7399e89432/files/b5923e52edab4e5c91e46b74563d0ae8/raw"))() 
   end
})

local Tab = Window:MakeTab({
	Name = "杀手与警长",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
   Name = "杀手与警长秒杀",
   Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Deni210/murdersvssherrifsduels/main/rubyhub", true))()
   end
})

local Tab = Window:MakeTab({
    Name = "🥔一路向西🥔",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "请先加入Na1Xi群组",
  Callback = function()
  loadstring(game:GetObjects("rbxassetid://10040701935")[1].Source)()
    end
})

Tab:AddButton({
  Name = "一路向西2",
  Callback = function()
  loadstring(game:HttpGet(("https://raw.githubusercontent.com/Drifter0507/scripts/main/westbound"),true))()
  end
})
local Tab = Window:MakeTab({
    Name = "汽车经销商大亨",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "会覆盖",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/IExpIoit/Script/main/Car%20Dealership%20Tycoon.lua"))()
  end
})

Tab:AddButton({
  Name = "2",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/03sAlt/BlueLockSeason2/main/README.md"))()
   end
})

local Tab = Window:MakeTab({
    Name = "兵工厂",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function()
  loadstring(game:HttpGet("https://pastefy.app/2YdrWHxV/raw"))()
  end
})

local Tab = Window:MakeTab({
	Name = "伐木大亨",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
   Name = "1",
   Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/Kavo-Ui/main/%E4%BC%90%E6%9C%A8%E5%A4%A7%E4%BA%A82.lua", true))()
   end
})

Tab:AddButton({
   Name = "2(会覆盖)",
   Callback = function()
   loadstring(game:HttpGet(("https://raw.githubusercontent.com/NOOBARMYSCRIPTER/NOOBARMYSCRIPTER/main/AXE%20LOOP%20SCRIPT"), true))() 
   end
})

local Tab = Window:MakeTab({
    Name = "造船寻宝自动刷钱",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "🐥造船寻宝1🐥",
  Callback = function()
  loadstring(game:HttpGet(('https://raw.githubusercontent.com/urmomjklol69/GoldFarmBabft/main/GoldFarm.lua'),true))()
    end
})

Tab:AddButton({
  Name = "🤓造船寻宝2🤓",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/novakoolhub/Scripts/main/Scripts/NovBoat.lua"))()
  end
})

local Tab = Window:MakeTab({
    Name = "忍者传奇",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "忍者传奇",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/-/main/AutoGetIDK(NinjaLegend)"))()
  end
})

local Tab = Window:MakeTab({
    Name = "世界角色扮演2",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function()
  local col = Color3.fromRGB(0,0,0)for i, v in pairs(game.Workspace.Provinces:GetChildren()) do    task.spawn(function()        if v.Color ~= col then            local args = {                [1] = "PaintPart",                [2] = {                    ["Part"] = v,                    ["Color"] = col                }            }            game.Players.LocalPlayer.Character.PaintBucket.Remotes.ServerControls:InvokeServer(unpack(args))        end    end)end
  end
})

Tab:AddButton({
  Name = "装备油漆桶并执行脚本",
  Callback = function()
  end  
})

local Tab = Window:MakeTab({
    Name = "俄亥俄洲",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "指令脚本",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/longshulol/long/main/longshu/Ohio"))()
    end
})

Tab:AddLabel("指令如下（聊天框输入）")
Tab:AddLabel("透开-透关 ---透视")
Tab:AddLabel("追踪开-追踪关 ---子弹追踪")
Tab:AddLabel("收钱开-收钱关 ---收集钱包")
Tab:AddLabel("收物开-收物关 ---收集物品")
Tab:AddLabel("抢取款机开-抢取款机关")
Tab:AddLabel("抢银行开-抢银行关")
Tab:AddLabel("穿墙开-穿墙关")
Tab:AddLabel("拳击光环开-拳击光环关")

local Tab = Window:MakeTab({
    Name = "巴掌大战",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "巴掌大战1",
    Callback = function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles")))()
    end
})

local Tab = Window:MakeTab({
    Name = "巴掌模拟器",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "巴掌模拟器，作者龙叔",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/longshulol/long/main/longshu/bazhang"))()
  end
})

Tab:AddLabel("指令如下（聊天框输入）")
Tab:AddLabel("透视")
Tab:AddLabel("自动击打")
Tab:AddLabel("击打光环")
Tab:AddLabel("防死神速度")
Tab:AddLabel("防推飞")
Tab:AddLabel("防击飞")
Tab:AddLabel("踏空")

Tab:AddButton({
    Name = "指令脚本",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/longshulol/long/main/longshu/bazhang"))()
    end
})

Tab:AddLabel("指令如下（聊天框输入）")
Tab:AddLabel("透视-自动击打-击打光环-踏空")
Tab:AddLabel("防击飞-防推飞-防死神-速度")
Tab:AddLabel("关-无敌开-无敌关-全开-全关")
Tab:AddLabel("全开功能有:防编辑，防毒液，防黑洞，防死神")
Tab:AddLabel("防雷神，防rob，防秒杀手套，管理员预警，防踢")

local Tab = Window:MakeTab({
    Name = "忍者",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "1",
    Callback = function()
    pcall(loadstring(game:HttpGet("https://pastebin.com/raw/2UjrXwTV")))
    end
})
local Tab = Window:MakeTab({
    Name = "餐厅大亨",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "餐厅大亨1",
  Callback = function()
  loadstring(game:HttpGet("https://pastefy.app/Ppqt0Gib/raw"))()
  end
})

local Tab = Window:MakeTab({
	Name = "监狱人生",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
   Name = "1",
   Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()  
   end
})

local Tab = Window:MakeTab({
	Name = "举重模拟器",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
   Name = "举重模拟器1",
   Callback = function()
   loadstring(game:HttpGet"https://raw.githubusercontent.com/thedragonslayer2/Key-System/main/Load.lua")() 
   end
})

local Tab = Window:MakeTab({
	Name = "超级足球联赛",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
   Name = "超级足球联赛1",
   Callback = function()
   loadstring(game:HttpGet"https://raw.githubusercontent.com/xtrey10x/xtrey10x-hub/main/neo")() 
   end
})

local Tab = Window:MakeTab({
    Name = "🐓法宝模拟器🐓",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "会覆盖",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/FreeRobloxScripts/anime-fighting/main/simulator"))()
  end
})

local Tab = Window:MakeTab({
	Name = "拳击模拟器",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
   Name = "拳击模拟器1",
   Callback = function()
  loadstring(game:HttpGet("https://pastefy.app/T4O1SA3q/raw"))()  
   end
})

Tab:AddButton({
   Name = "拳击模拟器2",
   Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Solx69/Shit-Boy-Hub-Main/main/Master.lua'))()
   end
})


local Tab = Window:MakeTab({
    Name = "伐木大亨",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "伐木大亨1",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf",true))()
  end
})

local Tab = Window:MakeTab({
	Name = "驾驶帝国",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
   Name = "驾驶帝国1",
   Callback = function()
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md'),true))() 
   end
})

Tab:AddButton({
   Name = "驾驶帝国2",
   Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/drivingempire", true))()
   end
})

local Tab = Window:MakeTab({
    Name = "压力",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "压力1",
  Callback = function()
loadstring(game:HttpGet("https://github.com/Drop56796/CreepyEyeHub/blob/main/obfuscate.lua?raw=true"))()
  end
})
local Tab = Window:MakeTab({
    Name = "超级大力士",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "超级大力士1",
  Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/hngamingroblox/scripts/main/strongman%20simulator'))()
   end
})

local Tab = Window:MakeTab({
    Name = "餐厅大亨",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "餐厅大亨1",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/toosiwhip/snake-hub/main/restaurant-tycoon-2.lua"))()
  end
})

Tab:AddButton({
  Name = "餐厅大亨2",
  Callback = function()
  loadstring(game:HttpGet("https://pastefy.app/Ppqt0Gib/raw"))()
  end
})

local Tab = Window:MakeTab({
	Name = "旗帜战争",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
   Name = "旗帜战争1",
   Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Flag%20Wars.txt'))()  
   end
})

local Tab = Window:MakeTab({
    Name = "进击的僵尸",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "进击的僵尸1",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Zombie%20Attack", true))()
  end
})

local Tab = Window:MakeTab({
	Name = "短信模拟器",
	Icon = "rbxassetid://10527577695",
	PremiumOnly = false
})

Tab:AddButton({
   Name = "短信模拟器1",
   Callback = function()
   loadstring(game:HttpGet(('https://pastebin.com/raw/9hxkxUZ5'),true))() 
   end
})

local Tab = Window:MakeTab({
    Name = "刀刃球",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "刀刃球1",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))()
  end
})  
local Tab = Window:MakeTab({
    Name = "战争大亨",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

    Tab:AddButton({
  Name = "战争大亨1",
  Callback = function()
  loadstring(game:HttpGet'https://raw.githubusercontent.com/Macintosh1983/ChillHubMain/main/ChillHubOilWarfareTycoon.lua')()
    end
})

local Tab = Window:MakeTab({
    Name = "极速",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
  Name = "1-会覆盖",
  Callback = function()
    loadstring(game:HttpGet('\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\111\121\115\99\112\47\98\101\116\97\47\109\97\105\110\47\37\69\57\37\56\48\37\57\70\37\69\53\37\66\65\37\65\54\37\69\55\37\56\50\37\66\56\37\69\56\37\66\53\37\66\55\46\108\117\97'))()
  end
})

Tab:AddButton({
    Name = "开启卡宠",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/uR6azdQQ"))()
    end
})

Tab:AddButton({
    Name = "自动",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/AyeCYbT6"))()
    end
})

local Tab = Window:MakeTab({
    Name = "力量",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "💪力量传奇1",
    Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua'))()
    end
})

Tab:AddButton({
    Name = "力量传奇2",
    Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/BoaHacker/ROBLOX/main/cheat', true))()
    end
})

local Tab = Window:MakeTab({
    Name = "脚本中心",
    Icon = "rbxassetid://10527577695",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "🤕云脚本🤕",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/6666666666/main/%E4%BA%91%E8%84%9A%E6%9C%AC%E6%B5%8B%E8%AF%95%E7%89%88%E4%BA%91%E8%84%9A%E6%9C%AC%E6%B5%8B%E8%AF%95%E7%89%88Xiao%20Yun.lua"))()
    end
})
Tab:AddButton({
    Name = "😍禁漫中心😍",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/anlushanjinchangantangwanle/main/jmjmjmjmjmjmjmjmjmjmjmjmjmjmjmjm.lua"))()
    end
})

Tab:AddButton({
    Name = "🤔皮脚本🤔",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()
    end
})

Tab:AddButton({
    Name = "🤓神光脚本🤓",
    Callback = function()
    loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,56,102,50,76,99,113,113,80})end)())))()
    end
})

Tab:AddButton({
    Name = "☹️青脚本☹️",
    Callback = function()
    loadstring(game:HttpGet('https://rentry.co/ct293/raw'))()
    end
})

Tab:AddButton({
    Name = "USA脚本卡密:USA AER",
	Callback = function()
	getgenv().USA="🤓"loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/USA.lua"))()
	end
})

Tab:AddButton({
    Name = "🐸脚本中心🐸",
    Callback = function()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
    end
})

OrionLib:Init()