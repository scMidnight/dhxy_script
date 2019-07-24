local dhxy_common = require('common.dhxy_common')
local dhxy_pub = require('common.dhxy_pub_2160_1080')

local beiju = {}

local function close_map()
	--关闭小地图1733,82,52,46
	dhxy_common.click(math.random(1733,1733+52), math.random(82,82+46), math.random(40,100))
end

local function beiju_body(hud)
	dhxy_pub.click_parcel()--点击包裹
	--找香
	local pos = screen.findColor(Rect(1073, 290, 651, 666), "0|0|0xfffbf7,11|-11|0x101010,-21|14|0xffffff,8|34|0xf78e5a",95, screen.PRIORITY_DEFAULT)
	if pos ~= Point.INVALID then
		--点击引妖香
		dhxy_common.click(math.random(pos.x-35,pos.x+48), math.random(pos.y-22,pos.y+65), math.random(40,100))
		if(dhxy_pub.find_articles_use_click()) then--寻找物品使用并点击
			--点击确定
			dhxy_common.click(math.random(1164,1164+252), math.random(676,676+50), math.random(40,100))
		end
		dhxy_pub.close_parcel()--关闭包裹
		--点击巡逻1045,203,100,46
		dhxy_common.click(math.random(1045,1045+100), math.random(203,203+46), math.random(40,100))
		return true
	else
		dhxy_pub.showHud(hud,"没有引妖香")
		dhxy_pub.close_parcel()--关闭包裹
		return false
	end
end

function beiju.run()
	local hud = createHUD()
	dhxy_pub.showHud(hud,"北俱")
	
	dhxy_pub.click_more()
	dhxy_pub.click_home(hud)
	dhxy_pub.click_room()
	dhxy_pub.click_more()
	dhxy_pub.click_worldmap()
	--点击北俱1013,117,163,113
	dhxy_common.click(math.random(1013,1013+163), math.random(117,117+113), math.random(40,100))
	--点击最近的坐标650,835,76,70
	dhxy_common.click(math.random(650,650+76), math.random(835,835+70), math.random(40,100))
	--关闭小地图
	close_map()
	--执行逻辑
	local begin_time = os.milliTime()
	while true do
		if(beiju_body(hud)) then
			while true do
				sleep(15000)
				--如果是战斗
				if(dhxy_pub.is_combat()) then
					begin_time = os.milliTime()
				end
				--是否结束
				if(tonumber(string.format("%0.0f",(os.milliTime() - begin_time) / 1000)) > 80) then
					break
				end
			end
		else
			break
		end
	end
	dhxy_pub.showHud(hud,"北俱结束")
	sleep(math.random(800,1500))
	hideHUD(hud)
end

return beiju