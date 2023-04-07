function OpenFrameSLibrary()

    S_Library = {Derma = {}}

    S_Library.Derma.MainFrame = vgui.Create("DFrame")
    S_Library.Derma.MainFrame:SetSize(SentroW(850), SentroH(450))
    S_Library.Derma.MainFrame:Center()
    S_Library.Derma.MainFrame:SetTitle("")
    S_Library.Derma.MainFrame:SetDraggable(false)
    S_Library.Derma.MainFrame:ShowCloseButton(true)
    S_Library.Derma.MainFrame:MakePopup()
    S_Library.Derma.MainFrame.Paint = function(s,w,h)
            draw.RoundedBox(5, 0, 0, w, h, Color(50,50,50))
            draw.SimpleText("SLibrary", "SCall911Font", SentroW(425), SentroH(25), Color(255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
    end
end

hook.Add('OnPlayerChat', 'CommandSlibrary', function(ply, text, teamChat, isDead)
    if ply != LocalPlayer() then return end
    text = text:lower()
      
    if text == '!slib' then
        OpenFrameSLibrary()
        return true
    end
end)