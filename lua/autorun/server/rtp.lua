local Fezwer = {}
Fezwer.Rtp = {}

util.AddNetworkString('Fezwer.Rtp.Uvedomlenie')
util.AddNetworkString('Fezwer.Rtp.Otkazono')

function Fezwer.Rtp.talk(ply, text)
    if string.lower(text) == '!rtp' or string.lower(text) == '/rtp' then

        Fezwer.Rtp.Time = 0

        function Fezwer.Rtp.CheckTp()
            if Fezwer.Rtp.GPos == ply:GetPos() then

                Fezwer.Rtp.Pos = {
                    {-2653.803711, -6152.597656, -139.968750},
                    {105.065079, -7008.587402, -139.968750},
                    {-1941.243164, -4998.277832, -131.968750},
                    {826.318481, -7361.280273, -295.968750},
                    {110.377167, -883.883118, -139.968750},
                    {3860.633789, -3354.826416, -219.637634},
                    {3754.588623, -1381.629761, -233.532532},
                    {2653.680908, -1666.724121, -139.968750},
                    {5329.877441, -2405.375244, -227.540344},
                    {7975.525879, -5598.099609, -343.968750},
                    {4665.911621, -6249.163574, -243.968750},
                    {-1672.648682, -1794.316528, -131.968750},
                    {-2705.124512, -458.758575, 240.031250},
                    {211.650391, 1488.375000, -139.968750},
                    {-3622.474365, 1396.867065, -139.968750},
                    {-3650.407715, 3830.192139, -139.968750},
                    {-4941.368164, 2166.988281, -139.968750},
                    {-4567.217285, 816.648193, -259.968750},
                    {860.476379, 1949.105591, -131.968750},
                    {3505.911865, 3307.490234, -131.968750},
                    {4384.958008, 3374.600342, -139.968750},
                    {4834.792480, 3968.975098, -139.980270},
                    {2298.421631, 7283.635742, -139.968750},
                    {269.612030, 7210.116699, -139.664459},
                }

                Fezwer.Rtp.Number = math.random(#Fezwer.Rtp.Pos)
                ply:SetPos(Vector(Fezwer.Rtp.Pos[Fezwer.Rtp.Number][1],Fezwer.Rtp.Pos[Fezwer.Rtp.Number][2],Fezwer.Rtp.Pos[Fezwer.Rtp.Number][3]))
            end
        end

        Fezwer.Rtp.GPos = ply:GetPos()

        net.Start('Fezwer.Rtp.Uvedomlenie')
        net.Send(ply)

        timer.Create('Fezwer.Rtp.Timer', 1, 5, function() 
        
            Fezwer.Rtp.Time = Fezwer.Rtp.Time + 1 

            if Fezwer.Rtp.GPos == ply:GetPos() then
                if Fezwer.Rtp.Time == 5 then
                    Fezwer.Rtp.CheckTp()
                end
            else 
                net.Start('Fezwer.Rtp.Otkazono')
                net.Send(ply)
                timer.Remove('Fezwer.Rtp.Timer')
            end
        end)
 
    end
end

hook.Add('PlayerSay','Fezwer.Rtp.talk', Fezwer.Rtp.talk)