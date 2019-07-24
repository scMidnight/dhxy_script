local dhxy_common = require('common.dhxy_common')
local dhxy_pub = require('common.dhxy_pub_2160_1080')

local tiangui = {}

local function tiangui_body(begin_time)
	local now_time = os.milliTime()
	--是否战斗
	if(dhxy_pub.is_combat()) then
		now_time = os.milliTime()
	end
	--是否继续
	if(dhxy_pub.find_tiangui_is_continue_ok()) then
		now_time = os.milliTime()
	end
	--是否解封技能格
	--领悟技能，点击知道了
	if(dhxy_pub.lingwu_know()) then
		now_time = os.milliTime()
	end
	return now_time
end

function tiangui.tian_run()
	local hud = createHUD()
	dhxy_pub.showHud(hud,"做天")
	
	dhxy_pub.click_more()
	dhxy_pub.click_home(hud)
	dhxy_pub.click_room()
	dhxy_pub.click_more()
	dhxy_pub.click_worldmap()
	
	--点击天宫538,26,79,89
	dhxy_common.click(math.random(538,538+79), math.random(26,26+89), math.random(40,100))
	--点击李靖989,464,52,23
	dhxy_common.click(math.random(989,989+52), math.random(464,464+23), math.random(40,100))
	--关闭小地图1577,79,55,53
	dhxy_common.click(math.random(1577,1577+55), math.random(79,79+53), math.random(40,100))
	sleep(5000)
	
	dhxy_pub.click_dialog_one()
	
	local begin_time = os.milliTime()
	while true do
		sleep(20000)
		--执行逻辑
		begin_time = tiangui_body(begin_time)
		if(dhxy_common.exit_time(begin_time)) then
			break
		end
	end
	
	dhxy_pub.showHud(hud,"做天结束")
	--关闭好友推送
	dhxy_pub.close_push_friend()
	sleep(math.random(800,1500))
	hideHUD(hud)
end

function tiangui.gui_run()
	local hud = createHUD()
	dhxy_pub.showHud(hud,"抓鬼")
	
	dhxy_pub.click_more()
	dhxy_pub.click_home(hud)
	dhxy_pub.click_room()
	dhxy_pub.click_more()
	dhxy_pub.click_worldmap()
	
	--点击地府1597,766,97,158
	dhxy_common.click(math.random(1597,1597+97), math.random(766,766+158), math.random(40,100))
	--点击钟馗649,802,54,22
	dhxy_common.click(math.random(649,649+54), math.random(802,802+22), math.random(40,100))
	--关闭小地图1688,82,52,48
	dhxy_common.click(math.random(1688,关闭小地图1688+52), math.random(82,82+48), math.random(40,100))
	sleep(15000)
	
	dhxy_pub.click_dialog_one()
	
	local begin_time = os.milliTime()
	while true do
		--执行逻辑
		begin_time = tiangui_body(begin_time)
		if(dhxy_common.exit_time(begin_time)) then
			break
		end
	end
	
	dhxy_pub.showHud(hud,"抓鬼结束")
	--关闭好友推送
	dhxy_pub.close_push_friend()
	sleep(math.random(800,1500))
	hideHUD(hud)
end

return tiangui