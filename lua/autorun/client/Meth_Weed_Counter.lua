surface.CreateFont('FezwerDefault',{ font = "Arial", extended = true, size = math.modf(22*(ScrH()/1080)) , weight =1000,})

hook.Add("HUDPaint", "MethWeedCounter", function()

    local ply = LocalPlayer()
    local Fezwer = {}

    Fezwer.Math = {}

    Fezwer.Math.H = ScrH() / 1080
    Fezwer.Math.W = ScrW() / 1920

    Fezwer.Meth = ply:GetNWInt('player_meth')
    Fezwer.Weed = ply:GetNWInt('uWeed_Gram_Counter')

    local Fezwer_material_Meth = Material('vgui/meth.png') 
    local Fezwer_material_Weed = Material('vgui/weed.png')

    surface.SetMaterial(Fezwer_material_Meth)
    surface.DrawTexturedRect(-100,-100,math.modf(45*Fezwer.Math.W),math.modf(45*Fezwer.Math.H))
        
    surface.SetMaterial(Fezwer_material_Weed)
    surface.DrawTexturedRect(-100,-100,math.modf(40*Fezwer.Math.W),math.modf(40*Fezwer.Math.H))

    -- math.modf(number base)

    if ply:GetNWInt('player_meth') > 0 or ply:GetNWInt('uWeed_Gram_Counter') > 0 then

        draw.RoundedBox(0, math.modf(40*Fezwer.Math.W), math.modf(40*Fezwer.Math.H), math.modf(310*Fezwer.Math.W), math.modf(110*Fezwer.Math.H), Color(10, 10, 10, 230))
        
        draw.RoundedBox(0, math.modf(46*Fezwer.Math.W), math.modf(46*Fezwer.Math.H), math.modf(20*Fezwer.Math.W), 2, Color(255, 255, 255, 255))
        draw.RoundedBox(0, math.modf(46*Fezwer.Math.W), math.modf(46*Fezwer.Math.H), 2, math.modf(20*Fezwer.Math.H), Color(255, 255, 255, 255))

        draw.RoundedBox(0, math.modf(46*Fezwer.Math.W), math.modf((33+110)*Fezwer.Math.H), math.modf(20*Fezwer.Math.W), 2, Color(255, 255, 255, 255))
        draw.RoundedBox(0, math.modf(46*Fezwer.Math.W), math.modf((15+110)*Fezwer.Math.H), 2, math.modf(20*Fezwer.Math.H), Color(255, 255, 255, 255))

        draw.RoundedBox(0, math.modf((16+308)*Fezwer.Math.W), math.modf(46*Fezwer.Math.H), math.modf(20*Fezwer.Math.W), 2, Color(255, 255, 255, 255))
        draw.RoundedBox(0, math.modf((34+308)*Fezwer.Math.W), math.modf(46*Fezwer.Math.H), 2, math.modf(20*Fezwer.Math.H), Color(255, 255, 255, 255))

        draw.RoundedBox(0, math.modf((16+308)*Fezwer.Math.W), math.modf((33+110)*Fezwer.Math.H), math.modf(20*Fezwer.Math.W), 2, Color(255, 255, 255, 255))
        draw.RoundedBox(0, math.modf((34+308)*Fezwer.Math.W), math.modf((15+110)*Fezwer.Math.H), 2, math.modf(20*Fezwer.Math.H), Color(255, 255, 255, 255))
                          
        draw.SimpleText('= '..Fezwer.Meth/EML_Meth_ValueModifier..' Кг'..'  ~  '..Fezwer.Meth..'$', "FezwerDefault",  math.modf(105*Fezwer.Math.W), math.modf(65*Fezwer.Math.H), Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT)
        surface.SetMaterial(Fezwer_material_Meth)
        surface.DrawTexturedRect(math.modf(50*Fezwer.Math.W),math.modf(50*Fezwer.Math.H),math.modf(45*Fezwer.Math.W),math.modf(45*Fezwer.Math.H))
        
        draw.SimpleText('= '..Fezwer.Weed..' г'..'  ~  '..Fezwer.Weed*UWeed.Config.MaxSell..'$', "FezwerDefault", math.modf(105*Fezwer.Math.W), math.modf(113*Fezwer.Math.H), Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT)
        surface.SetMaterial(Fezwer_material_Weed)
        surface.DrawTexturedRect(math.modf(55*Fezwer.Math.W),math.modf(100*Fezwer.Math.H),math.modf(40*Fezwer.Math.W),math.modf(40*Fezwer.Math.H))
    end
end)