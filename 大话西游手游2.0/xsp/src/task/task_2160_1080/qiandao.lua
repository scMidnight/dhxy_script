local dhxy_common = require('common.dhxy_common')
local dhxy_pub = require('common.dhxy_pub_2160_1080')

local qiandao = {}

function qiandao.run()
	local hud = createHUD()
	dhxy_pub.showHud(hud,"签到")
	
	--点击奖励
	dhxy_common.click(math.random(31,31+80), math.random(431,431+80), math.random(40,100))
	--点击每日签到
	dhxy_common.click(math.random(225,225+292), math.random(479,479+79), math.random(40,100))
	sleep(5000)
	--点击第一个牌
	dhxy_common.click(math.random(951,951+162), math.random(278,278+203), math.random(40,100))
	--关闭签到面板
	dhxy_common.click(math.random(1768,1768+44), math.random(159,159+38), math.random(40,100))
	--是否卡包满了，满了就离开
	dhxy_pub.qiandao_leave()
	dhxy_pub.showHud(hud,"签到结束")
	sleep(math.random(800,1500))
	hideHUD(hud)
end

return qiandao