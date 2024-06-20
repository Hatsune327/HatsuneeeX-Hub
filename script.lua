-- Hatsune Script
local supportedExecutors = {"Synapse X", "Krnl", "Fluxus", "ScriptWare", "Oxygen U"}
local player = game.Players.LocalPlayer

local function isExecutorSupported()
    for _, executor in ipairs(supportedExecutors) do
        if identifyexecutor and identifyexecutor() == executor then
            return true
        end
    end
    return false
end

if not isExecutorSupported() then
    print("This executor is not supported!")
    return
end

-- Fungsi untuk verifikasi key
local function getKey()
    local validKey = "your_secret_key" -- ubah ini dengan key yang valid
    local input = ""

    while input ~= validKey do
        input = player:InputBox("Enter the script key to use Hatsune Script:")

        if input == validKey then
            print("Key verified, Hatsune Script activated!")
            return true
        else
            print("Invalid key, try again.")
        end
    end
end

if not getKey() then
    return -- stop script jika key tidak valid
end

local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid") or player.CharacterAdded:Wait():FindFirstChildOfClass("Humanoid")

-- Sea 1 Functions
local function autoFarmXP()
    while wait(1) do
        if humanoid.Health > 0 then
            -- Cari musuh terdekat dan serang
            for _, entity in ipairs(workspace.Enemies:GetChildren()) do
                if entity:FindFirstChildOfClass("Humanoid") then
                    local enemyHumanoid = entity:FindFirstChildOfClass("Humanoid")
                    if enemyHumanoid and enemyHumanoid.Health > 0 then
                        game:GetService("ReplicatedStorage").Remotes.Combat:InvokeServer("attack", entity)
                        break
                    end
                end
            end
        end
    end
end

-- Sea 2 Functions
local function autoFindMirage()
    while wait(10) do
        -- Logika untuk menemukan Mirage
        print("Finding Mirage...")
    end
end

local function autoLeviathan()
    while wait(10) do
        -- Logika untuk melawan Leviathan
        print("Fighting Leviathan...")
    end
end

local function autoFarmBoss()
    while wait(20) do
        -- Logika untuk farming boss
        print("Farming Boss...")
    end
end

-- Sea 3 Functions
local function autoDoughKing()
    while wait(30) do
        -- Logika untuk melawan Dough King
        print("Fighting Dough King...")
    end
end

local function autoCakePrincess()
    while wait(30) do
        -- Logika untuk melawan Cake Princess
        print("Fighting Cake Princess...")
    end
end

local function autoFindGodChalice()
    while wait(50) do
        -- Logika untuk menemukan God Chalice
        print("Finding God Chalice...")
    end
end

local function autoFarmItem()
    while wait(30) do
        -- Logika untuk farming item
        print("Farming Items...")
    end
end

-- Attack Speed Functions
local function fasterAttack()
    while wait(0.5) do
        -- Logika untuk serangan cepat
        if humanoid.Health > 0 then
            local entity = workspace.Enemies:GetChildren()[1] -- Contoh, ambil musuh pertama
            if entity then
                game:GetService("ReplicatedStorage").Remotes.Combat:InvokeServer("attack", entity)
            end
        end
    end
end

local function mediumAttack()
    while wait(1) do
        -- Logika untuk serangan sedang
        if humanoid.Health > 0 then
            local entity = workspace.Enemies:GetChildren()[1] -- Contoh, ambil musuh pertama
            if entity then
                game:GetService("ReplicatedStorage").Remotes.Combat:InvokeServer("attack", entity)
            end
        end
    end
end

local function slowAttack()
    while wait(2) do
        -- Logika untuk serangan lambat
        if humanoid.Health > 0 then
            local entity = workspace.Enemies:GetChildren()[1] -- Contoh, ambil musuh pertama
            if entity then

local function autoLeviathan()
    while wait(10) do
        -- Logika untuk melawan Leviathan
        print("Fighting Leviathan...")
    end
end

local function autoFarmBoss()
    while wait(20) do
        -- Logika untuk farming boss
        print("Farming Boss...")
    end
end

-- Sea 3 Functions
local function autoDoughKing()
    while wait(30) do
        -- Logika untuk melawan Dough King
        print("Fighting Dough King...")
    end
end

local function autoCakePrincess()
    while wait(30) do
        -- Logika untuk melawan Cake Princess
        print("Fighting Cake Princess...")
    end
end

local function autoFindGodChalice()
    while wait(50) do
        -- Logika untuk menemukan God Chalice
        print("Finding God Chalice...")
    end
end

local function autoFarmItem()
    while wait(30) do
        -- Logika untuk farming item
        print("Farming Items...")
    end
end

-- Attack Speed Functions
local function fasterAttack()
    while wait(0.5) do
        -- Logika untuk serangan cepat
        if humanoid.Health > 0 then
            local entity = workspace.Enemies:GetChildren()[1] -- Contoh, ambil musuh pertama
            if entity then
                game:GetService("ReplicatedStorage").Remotes.Combat:InvokeServer("attack", entity)
            end
        end
    end
end

local function mediumAttack()
    while wait(1) do
        -- Logika untuk serangan sedang
        if humanoid.Health > 0 then
            local entity = workspace.Enemies:GetChildren()[1] -- Contoh, ambil musuh pertama
            if entity then
                game:GetService("ReplicatedStorage").Remotes.Combat:InvokeServer("attack", entity)
            end
        end
    end
end

local function slowAttack()
    while wait(2) do
        -- Logika untuk serangan lambat
        if humanoid.Health > 0 then
            local entity = workspace.Enemies:GetChildren()[1] -- Contoh, ambil musuh pertama
            if entity then
game:GetService("ReplicatedStorage").Remotes.Combat:InvokeServer("attack", entity)
            end
        end
    end
end

local function startAllFunctions()
    -- Menjalankan fungsi untuk Sea 1
    spawn(autoFarmXP)

    -- Menjalankan fungsi untuk Sea 2
    spawn(autoFindMirage)
    spawn(autoLeviathan)
    spawn(autoFarmBoss)

    -- Menjalankan fungsi untuk Sea 3
    spawn(autoDoughKing)
    spawn(autoCakePrincess)
    spawn(autoFindGodChalice)
    spawn(autoFarmItem)
end

-- Menjalankan semua fungsi
startAllFunctions()

-- Mengatur kecepatan serangan (bisa di-comment/uncomment sesuai kebutuhan)
-- spawn(fasterAttack)
-- spawn(mediumAttack)
-- spawn(slowAttack)
