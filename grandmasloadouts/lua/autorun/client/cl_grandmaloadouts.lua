surface.CreateFont( "ButtonFont", {
    font = "DermaDefault", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
    size = 35,
    antialias = true,
    outline = true,
})
-- Add Loadout System 7/28
print("Grandma's Loadouts Loaded On " .. util.DateStamp())

function LoadoutMenuOpen() 
    
    local GrandmaLoadoutMenu = vgui.Create("DFrame")
    
    surface.PlaySound("garrysmod/content_downloaded.wav")

    if (IsValid(GrandmaLoadoutMenu) == false) then        
        GrandmaLoadoutMenu:Remove()   
    end
    
    GrandmaLoadoutMenu:SetPos(ScrW() / 2.9, ScrH() / 8)
    GrandmaLoadoutMenu:MakePopup(true)
    GrandmaLoadoutMenu:SetTitle("Grandma's Loadouts by GrandmaSocks")
    GrandmaLoadoutMenu:SizeTo(ScrW() / 3, ScrH() / 3, .3, .1, 1)
    
    GrandmaLoadoutMenu.Paint = function(me,w,h)
        
        surface.SetDrawColor(44, 44, 44, 255)
        surface.DrawRect(0,0,w,h)     
        
        surface.SetDrawColor(50, 50, 50, 255)
        surface.DrawRect(ScrW() / 500, ScrH() / 35, ScrW() / 15, ScrH() / 1)  
        
        draw.DrawText("Welcome " .. LocalPlayer():Nick(), "DermaDefault", ScrW() / 6.2, ScrH() / 7.5, Color(255,255,255,255), TEXT_ALIGN_LEFT , TEXT_ALIGN_RIGHT)
        draw.DrawText(util.DateStamp(), "DermaDefault", ScrW() / 6, ScrH() / 6, Color(255,255,255,255), TEXT_ALIGN_LEFT , TEXT_ALIGN_RIGHT)
        
    end

    local GHomeButton =  GrandmaLoadoutMenu:Add("DButton")
    local barStat = 0
    local isActive = false
    GHomeButton:SetText("")
    GHomeButton:SetSize(ScrW() / 15, ScrH() / 9.5)
    GHomeButton:SetPos(ScrW() / 500, ScrH() / 25)
    
    GHomeButton.Paint = function(me, w,h)
        
        if me:IsHovered() then
            barStat = math.Clamp(barStat + 2 * FrameTime(), 0, 300)
        else
            barStat = math.Clamp(barStat - 2 * FrameTime(), 0, 300)
        end 
        
        surface.SetDrawColor(50, 50, 50, 255)
        surface.DrawRect(0,0,w * barStat,h)
        surface.SetDrawColor(50, 50, 255, 255)
        surface.DrawRect(0,0,w * barStat,h)
        draw.SimpleText("Home", "ButtonFont", ScrW() / 85, ScrH() / 35, Color(255,255,255,255), TEXT_ALIGN_LEFT)
        
    end
    
    GHomeButton.DoClick = function()
        
        surface.PlaySound("garrysmod/ui_click.wav")
        
        local GHomeTab = GrandmaLoadoutMenu:Add("DPanel")
        GHomeTab:SetText("")
        GHomeTab:SetSize(ScrW() / 2, ScrH() / 2)
        GHomeTab:SetPos(ScrW() / 15, ScrH() / 35)
        GHomeTab.Paint = function(me, w,h)
            
            surface.SetDrawColor(44, 44, 44, 255)
            surface.DrawRect(0,0, w - 100,h - 100)
            
            draw.DrawText("Welcome " .. LocalPlayer():Nick(), "DermaDefault", ScrW() / 10.6, ScrH() / 9.5, Color(255,255,255,255), TEXT_ALIGN_LEFT , TEXT_ALIGN_RIGHT)
            draw.DrawText(util.DateStamp(), "DermaDefault", ScrW() / 10, ScrH() / 7.2, Color(255,255,255,255), TEXT_ALIGN_LEFT , TEXT_ALIGN_RIGHT)

        end
        
        
        
    end
    
    local GLoadoutButton =  GrandmaLoadoutMenu:Add("DButton")
    local barStat = 0
    local isActive = false
    GLoadoutButton:SetText("")
    GLoadoutButton:SetSize(ScrW() / 15, ScrH() / 9.5)
    GLoadoutButton:SetPos(ScrW() / 500, ScrH() / 6.75)
    
    GLoadoutButton.Paint = function(me, w,h)
        
        if me:IsHovered() then
            barStat = math.Clamp(barStat + 2 * FrameTime(), 0, 300)
        else
            barStat = math.Clamp(barStat - 2 * FrameTime(), 0, 300)
        end 
        
        surface.SetDrawColor(50, 50, 50, 255)
        surface.DrawRect(0,0,w * barStat,h)
        surface.SetDrawColor(50, 50, 255, 255)
        surface.DrawRect(0,0,w * barStat,h)
        draw.SimpleText("Loadouts", "ButtonFont", ScrW() / 500, ScrH() / 35, Color(255,255,255,255), TEXT_ALIGN_LEFT)
        
    end
    
    GLoadoutButton.DoClick = function()
        
        surface.PlaySound("garrysmod/ui_click.wav")
        
        local GLoadoutTab = GrandmaLoadoutMenu:Add("DPanel")
        GLoadoutTab:SetText("")
        GLoadoutTab:SetSize(ScrW() / 2, ScrH() / 2)
        GLoadoutTab:SetPos(ScrW() / 15, ScrH() / 35)
        GLoadoutTab.Paint = function(me, w,h)
            
            surface.SetDrawColor(44, 44, 44, 255)
            surface.DrawRect(0,0, w - 100,h - 100)
            
        end
        
        
        
    end
    
    local GSettingsButtons =  GrandmaLoadoutMenu:Add("DButton")
    local barStat = 0
    local isActive = false
    GSettingsButtons:SetText("")
    GSettingsButtons:SetSize(ScrW() / 15, ScrH() / 9.5)
    GSettingsButtons:SetPos(ScrW() / 500, ScrH() / 4)
    
    GSettingsButtons.Paint = function(me, w,h)
        
        if me:IsHovered() then
            barStat = math.Clamp(barStat + 2 * FrameTime(), 0, 300)
        else
            barStat = math.Clamp(barStat - 2 * FrameTime(), 0, 300)
        end 
        
        surface.SetDrawColor(50, 50, 50, 255)
        surface.DrawRect(0,0,w * barStat,h)
        surface.SetDrawColor(50, 50, 255, 255)
        surface.DrawRect(0,0,w * barStat,h)
        draw.SimpleText("Settings", "ButtonFont", ScrW() / 200, ScrH() / 35, Color(255,255,255,255), TEXT_ALIGN_LEFT)
        
    end
    
    GSettingsButtons.DoClick = function()
        
        surface.PlaySound("garrysmod/ui_click.wav")
        
        local GSettingsTab = GrandmaLoadoutMenu:Add("DPanel")
        GSettingsTab:SetText("")
        GSettingsTab:SetSize(ScrW() / 2, ScrH() / 2)
        GSettingsTab:SetPos(ScrW() / 15, ScrH() / 35)
        GSettingsTab.Paint = function(me, w,h)
            
            surface.SetDrawColor(44, 44, 44, 255)
            surface.DrawRect(0,0, w - 100,h - 100)
            
        end
        
        
        
    end
    
end
concommand.Add("grandmasloadoutopen", LoadoutMenuOpen)