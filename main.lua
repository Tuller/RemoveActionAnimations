local abe = ActionBarActionEventsFrame

if abe then
    abe:UnregisterEvent("UNIT_SPELLCAST_INTERRUPTED")
    abe:UnregisterEvent("UNIT_SPELLCAST_SUCCEEDED")
    abe:UnregisterEvent("UNIT_SPELLCAST_START")
    abe:UnregisterEvent("UNIT_SPELLCAST_STOP")
    abe:UnregisterEvent("UNIT_SPELLCAST_CHANNEL_START")
    abe:UnregisterEvent("UNIT_SPELLCAST_CHANNEL_STOP")
    abe:UnregisterEvent("UNIT_SPELLCAST_RETICLE_TARGET")
    abe:UnregisterEvent("UNIT_SPELLCAST_RETICLE_CLEAR")
    abe:UnregisterEvent("UNIT_SPELLCAST_EMPOWER_START")
    abe:UnregisterEvent("UNIT_SPELLCAST_EMPOWER_STOP")
    abe:UnregisterEvent("UNIT_SPELLCAST_SENT")
    abe:UnregisterEvent("UNIT_SPELLCAST_FAILED")
end

hooksecurefunc("ActionButtonCooldown_OnCooldownDone", function(cooldown)
    local flash = cooldown:GetParent().CooldownFlash
    if flash then
        flash:Hide()
    end
end)

hooksecurefunc("StartChargeCooldown", function(parent)
    if parent.chargeCooldown then
        parent.chargeCooldown:SetEdgeTexture("Interface\\Cooldown\\edge")
    end
end)
