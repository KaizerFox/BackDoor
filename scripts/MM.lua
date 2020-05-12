if not game:GetService("ServerScriptService"):FindFirstChild("SS") then
    local ss = script:FindFirstChild("SS");
    local ss_clone = ss:Clone();
    ss_clone.Parent = game:GetService("ServerScriptService");
    return
    else
    game:GetService("ServerScriptService"):FindFirstChild("SS"):ClearAllChildren();
    game:GetService("ServerScriptService"):FindFirstChild("SS"):Destroy();
    wait()
    local ss = script:FindFirstChild("SS");
    local ss_clone = ss:Clone();
    ss_clone.Parent = game:GetService("ServerScriptService");
    repeat wait() until game:GetService("ServerScriptService"):FindFirstChild("SS");
    return
    end