local dhxy_common = require('common.dhxy_common')
local dhxy_pub = require('common.dhxy_pub_2160_1080')

local baotu = {}

function baotu.run()
	local hud = createHUD()
	dhxy_pub.showHud(hud,"宝图")
	
	dhxy_pub.click_activities()	
	
	--寻找宝图
	for i = 1, 10 do
		sleep(1000)
		pos = screen.findColor(Rect(352, 267, 1394, 526), "0|0|0xc54d42,0|12|0xf7ebb5,0|29|0xdedb8c,-42|59|0x94756b",95, screen.PRIORITY_DEFAULT)
		if pos ~= Point.INVALID then
			--点击前往
			dhxy_common.click(math.random(pos.x+438,pos.x+552), math.random(pos.y-29,pos.y+13), math.random(40,100))
			break
		else
			dhxy_pub.activities_slide()
		end
	end
	sleep(15000)
	
	dhxy_pub.click_dialog_one()
	
	local is_combat = false
	local begin_time = os.milliTime()
	while true do
		sleep(5000)
		is_combat = dhxy_pub.is_combat()
		if(is_combat) then
			begin_time = os.milliTime()
		end
		
		--小狐妖，领悟技能，点击知道了
		if(dhxy_pub.lingwu_know()) then
			begin_time = os.milliTime()
		end
		--小狐妖，解封技能格
		if(dhxy_pub.jiefeng_skill()) then
			begin_time = os.milliTime()
		end
		--已经有了
		if(dhxy_pub.yiyoujineng()) then
			begin_time = os.milliTime()
		end
		if(dhxy_common.exit_time(begin_time)) then
			break
		end
	end
	dhxy_pub.showHud(hud,"开始挖宝")
	
	dhxy_pub.click_parcel()--点击包裹
	
	--挖宝
	pos = screen.findColor(Rect(1075, 291, 643, 649), "0|0|0xbd5942,4|38|0xefebb5,-42|61|0xa48a7b,-10|12|0xb59e5a",93, screen.PRIORITY_DEFAULT)
	if pos ~= Point.INVALID then
		--点击宝图
		dhxy_common.click(math.random(pos.x-41,pos.x+53), math.random(pos.y-30,pos.y+63), math.random(40,100))
		begin_time = os.milliTime()
		while true do
			sleep(3000)
			
			if(dhxy_pub.find_articles_use_click()) then
				begin_time = os.milliTime()
			end
			
			if(dhxy_common.exit_time(begin_time)) then
				dhxy_pub.showHud(hud,"宝图结束")
				break
			end
		end
	else
		dhxy_pub.showHud(hud,"未找到宝图")
	end
	
	sleep(math.random(800,1500))
	hideHUD(hud)
end

return baotu