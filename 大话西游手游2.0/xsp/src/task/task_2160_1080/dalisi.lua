local dhxy_common = require('common.dhxy_common')
local dhxy_pub = require('common.dhxy_pub_2160_1080')

local dalisi = {}

function dalisi.run()
	local hud = createHUD()
	dhxy_pub.showHud(hud,"大理寺答题")
	
	dhxy_pub.click_more()
	dhxy_pub.click_home(hud)
	dhxy_pub.click_room()
	dhxy_pub.click_more()
	dhxy_pub.click_worldmap()
	dhxy_pub.click_changan()
	
	--点击大理寺官员429,431,138,21
	dhxy_common.click(math.random(429,429+138), math.random(431,431+21), math.random(40,100))
	--关闭小地图
	dhxy_common.click(math.random(1786,1786+51), math.random(82,82+46), math.random(40,100))
	sleep(15000)
	
	if(dhxy_pub.find_dialog()) then
		--对话框点击第一个
		dhxy_pub.click_dialog_one()
	end
	
	sleep(2000)
	local i = 1
	while i <= 10 do
		sleep(2500)
		local pos = screen.findColor(Rect(257, 247, 1639, 795), "0|0|0xdeb67b,556|-16|0xd6ae7b,1209|29|0x63819c,1310|2|0x7bba8c,1398|-74|0xbd8e7b",95, screen.PRIORITY_DEFAULT)
		if pos ~= Point.INVALID then
			--只选择第一项即可
			dhxy_common.click(math.random(773,773+347), math.random(597,597+94), math.random(40,100))
		else
			dhxy_pub.showHud(hud,"大理寺答题结束")
			--点击空白处
			dhxy_pub.click_blank_space()
			break
		end
	end
	sleep(math.random(800,1500))
	hideHUD(hud)
end

return dalisi