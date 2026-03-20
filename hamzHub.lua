local Rayfield=loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window=Rayfield:CreateWindow({Name="Blati",LoadingTitle="Blati",LoadingSubtitle="Instant Fishing",ConfigurationSaving={Enabled=false}})
local Tab=Window:CreateTab("Main",0)
local Section=Tab:CreateSection("Blati")
local RS=game:GetService("ReplicatedStorage")
local FS=RS:WaitForChild("FishingSystem")
local CleanupCast=FS:WaitForChild("CleanupCast")
local FishGiver=FS:WaitForChild("FishGiver")
local ReplicatePullAlert=FS:WaitForChild("ReplicatePullAlert")
local CastReplication=FS:WaitForChild("CastReplication")
local running=false
Tab:CreateToggle({Name="Blati",CurrentValue=false,Flag="Blati",Callback=function(v)
running=v
if v then task.spawn(function()
while running do
CleanupCast:FireServer()
CastReplication:FireServer(Vector3.new(-121.75434875488281,22.01178741455078,309.1944580078125),Vector3.new(-11.061860084533691,5,-11.56007194519043),"Basic Rod",13.940870761871338)
ReplicatePullAlert:FireServer("rbxassetid://76503247176490")
FishGiver:FireServer({hookPosition=Vector3.new(-126.91644287109375,3.4312500953674316,303.80047607421875)})
task.wait(0.03)
end
end)
end
end})
