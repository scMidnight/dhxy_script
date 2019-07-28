local dhxy_common = require('common.dhxy_common')
local dhxy_pub = require('common.dhxy_pub_2160_1080')

local lingjiang = {}

function lingjiang.run()
	local hud = createHUD()
	dhxy_pub.showHud(hud,"领奖")
	
	dhxy_pub.click_activities()
	
	local jiangliList = {
		{x1=607,x2=668},
		{x1=796,x2=856},
		{x1=983,x2=1044},
		{x1=1167,x2=1231},
		{x1=1354,x2=1416},
		{x1=1545,x2=1607}
	}
	
	for var = 1,#jiangliList do
		sleep(1500)
		dhxy_common.click(math.random(jiangliList[var].x1, jiangliList[var].x2), math.random(830, 895), math.random(40,100))
	end
	
	dhxy_pub.showHud(hud,"领奖结束")
	dhxy_pub.close_activities()
	sleep(math.random(800,1500))
	hideHUD(hud)
end

return lingjiang