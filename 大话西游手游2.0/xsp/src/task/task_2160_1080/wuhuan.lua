local dhxy_common = require('common.dhxy_common')
local dhxy_pub = require('common.dhxy_pub_2160_1080')

local wuhuan = {}

--choice：选择单人还是双人,0单人 1双人 默认单人
function wuhuan.run(choice)
	local hud = createHUD()
	dhxy_pub.showHud(hud,"五环")
	
	dhxy_pub.click_more()
	dhxy_pub.click_home(hud)
	dhxy_pub.click_room()
	dhxy_pub.click_more()
	dhxy_pub.click_worldmap()
	dhxy_pub.click_changan()
	
	--点击云游大师
	dhxy_common.click(math.random(1235,1235+111), math.random(653,653+21), math.random(40,100))
	--关闭小地图
	dhxy_common.click(math.random(1786,1786+51), math.random(82,82+46), math.random(40,100))
	sleep(6000)
	if(choice == 1) then
		dhxy_pub.click_dialog_one()
	else
		dhxy_pub.click_dialog_two()
	end
	local begin_time = os.milliTime()
	while true do
		sleep(3000)
		--是否战斗
		if(dhxy_pub.is_combat()) then
			begin_time = os.milliTime()
		end
		--是否解封技能格
		--是否领悟技能
		if(dhxy_pub.lingwu_know()) then
			begin_time = os.milliTime()
		end
		if(dhxy_common.exit_time(begin_time)) then
			break
		end
	end
	dhxy_pub.showHud(hud,"五环结束")
	sleep(math.random(800,1500))
	hideHUD(hud)
end

return wuhuan