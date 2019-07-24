local dhxy_common = require('common.dhxy_common')
local dhxy_pub = require('common.dhxy_pub_2160_1080')
local suangua = {}

function suangua.run()
	local hud = createHUD()
	dhxy_pub.showHud(hud,"算卦")
	dhxy_pub.click_more()
	dhxy_pub.click_home(hud)
	--点击点击算卦
	dhxy_common.click(math.random(1295,1522), math.random(304,347), math.random(40,100))
	--点击算一卦
	dhxy_common.click(math.random(1167,1418), math.random(807,807+62), math.random(40,100))
	--点击摇一摇
	dhxy_common.click(math.random(957,957+252), math.random(597,597+68), math.random(40,100))
	--关闭摇一摇
	dhxy_common.click(math.random(2075,2075+51), math.random(29,29+51), math.random(40,100))
	--关闭卦签
	dhxy_common.click(math.random(1656,1656+54), math.random(138,138+51), math.random(40,100))
	dhxy_pub.click_more()
	dhxy_pub.showHud(hud,"算卦结束")
	sleep(math.random(800,1500))
	hideHUD(hud)
end

return suangua