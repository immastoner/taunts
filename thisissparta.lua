ITEM.Name = 'This is Sparta!'
ITEM.Price = 30000
ITEM.Model = 'models/props_junk/garbage_glassbottle003a.mdl'
ITEM.NoPreview = true

function ITEM:OnEquip( ply, modifications )
                function KeyPress( ply, key )
                        if ( key == IN_RELOAD and CurTime() > 30 ) then
                        BroadcastLua('surface.PlaySound("music/thisissparta.mp3")')
                        PrintMessage( HUD_PRINTTALK, ply:Nick().. " has used the This is Sparta! taunt!" )
                end
        end
        hook.Add("KeyPress", "SomeName", KeyPress)
end

function ITEM:OnHolster(ply)
        hook.Remove( "KeyPress", "SomeName" )
end
