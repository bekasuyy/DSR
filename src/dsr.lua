-- gtasa v2.00
-- disable radar tot

local memory = require("memory")

function main()
    repeat wait(100) until isSampAvailable()

    local got     = MONET_GTASA_BASE + 0x67947C -- CTouchInterface::m_pWidgets
    local addr    = memory.getuint32(got, false)
    local ptr_112 = memory.getuint32(addr + 112 * 0x4, false)

    local fPosX, fPosY, fScaleX, fScaleY = getWidgetPosition(161)
    fScaleX = fScaleX + 20.0
    fScaleY = fScaleY + 20.0

    memory.setfloat(ptr_112 + 0xC,  fPosX,   false)
    memory.setfloat(ptr_112 + 0x10, fPosY,   false)
    memory.setfloat(ptr_112 + 0x14, fScaleX, false)
    memory.setfloat(ptr_112 + 0x18, fScaleY, false)

    print("fuck you nigger")

    while true do
        wait(0)
        if isWidgetPressed(112) then end
    end
end
