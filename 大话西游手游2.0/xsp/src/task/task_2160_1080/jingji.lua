local dhxy_common = require('common.dhxy_common')
local dhxy_pub = require('common.dhxy_pub_2160_1080')

local jingji = {}

function jingji.run()
	local hud = createHUD()
	dhxy_pub.showHud(hud,"竞技场")
	
	dhxy_pub.click_parcel()--点击包裹
	
	--点击积分
	dhxy_pub.click_jifen()
	
	--寻找竞技场并点击
	local pos = screen.findColor(Rect(1450, 137, 95, 488), "0|0|0xfffbf7,-16|3|0xfffbf7,-33|36|0x943508,28|31|0x943d10",95, screen.PRIORITY_DEFAULT)
	if pos ~= Point.INVALID then
		--点击兑换
		dhxy_common.click(math.random(pos.x+251,pos.x+361), math.random(pos.y,pos.y+41), math.random(40,100))
		sleep(5000)
		--点击选项一
		dhxy_pub.click_dialog_one()
		--选择挑战的目标集合
		local pkList = {
			{x1=1600,x2=1670,y1=346,y2=408},
			{x1=1530,x2=1665,y1=520,y2=582},
			{x1=1530,x2=1665,y1=690,y2=755},
			{x1=1530,x2=1665,y1=862,y2=929}
		}
		local begin_time = os.milliTime()
		--寻找挑战按钮
		while true do
			sleep(2000)
			local point = screen.findColor(Rect(1430, 192, 263, 765), "0|0|0xffffff,180|7|0x8ccea4,25|56|0x31be94,185|49|0x31ba94",95, screen.PRIORITY_DEFAULT)
			if point ~= Point.INVALID then
				local index = math.random(1, 4);
				--随机找一个PK且生成随机坐标,点击目标挑战
				local x = math.random(pkList[index].x1, pkList[index].x2);
				local y = math.random(pkList[index].y1, pkList[index].y2);
				--点击挑战
				dhxy_common.click(x, y, math.random(40,100))
				sleep(4000)
				--是否战斗
				if(not dhxy_pub.is_combat()) then
					dhxy_pub.showHud(hud,"竞技场结束")
					--关闭竞技场面板
					dhxy_common.click(math.random(1755,1755+52), math.random(127,127+48), math.random(40,100))
					break
				end
			end
		end
	else
		dhxy_pub.showHud(hud,"未找到竞技场")
		--点击积分
		dhxy_pub.click_jifen()
		--关闭包裹
		dhxy_pub.close_parcel()
	end
	sleep(math.random(800,1500))
	hideHUD(hud)
end

return jingji