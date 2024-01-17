net.Receive('Fezwer.Rtp.Uvedomlenie', function()
    chat.AddText(Color(255, 0, 0),'[RTP]',Color(255,255,255), ' Не двигайтесь и подождите ', Color(255,0,0), '5 ',Color(255,255,255), 'секунд для телепортации!' )
end)

net.Receive('Fezwer.Rtp.Otkazono', function()
    chat.AddText(Color(255, 0, 0),'[RTP]',Color(255,255,255), ' Вы сдвинулись с места, телепортация отменена!')
end)