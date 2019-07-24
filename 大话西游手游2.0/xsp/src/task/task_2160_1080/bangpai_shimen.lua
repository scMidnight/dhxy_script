local dhxy_common = require('common.dhxy_common')
local dhxy_pub = require('common.dhxy_pub_2160_1080')

local bangpai_shimen = {}

--choice 0：帮派 1：师门
local function bangpai_shimen_body(choice, hud)
	while true do
		sleep(10000)
		--0：帮派
		if(choice == 0) then
			local pos = screen.findColor(Rect(441, 694, 827, 147), "0|0|0xf7f7ff,363|5|0xffff31,757|-78|0xd6c6ad",93, screen.PRIORITY_DEFAULT)
			if pos ~= Point.INVALID then
				dhxy_pub.showHud(hud,"帮派任务结束")
				--点击空白处
				dhxy_pub.click_blank_space()
				break
			end
		else
			local pos = screen.findColor(Rect(893, 696, 373, 137), "0|0|0xfff329,0|8|0xff556b,289|-85|0xc5caad",95, screen.PRIORITY_DEFAULT)
			if pos ~= Point.INVALID then
				dhxy_pub.showHud(hud,"师门任务结束")
				--点击空白处
				dhxy_pub.click_blank_space()
				break
			end
		end
		--如果有对话框，点击第一个
		if(dhxy_pub.find_dialog()) then
			dhxy_pub.click_dialog_one()
		end
		--小狐妖，领悟技能，点击知道了
		dhxy_pub.lingwu_know()
		--小狐妖，解封技能格
		
		--买各种东西
		local pos = screen.findColor(Rect(1338, 835, 373, 124), "0|0|0xffffff,305|8|0x7bc69c,15|64|0x29c6a4,291|57|0x31be9c,38|24|0xffffff",95, screen.PRIORITY_DEFAULT)
		if pos ~= Point.INVALID then
			--点击购买1366,861,305,59
			dhxy_common.click(math.random(1366,1366+305), math.random(861,861+59), math.random(40,100))
		end
	end
end

function bangpai_shimen.bangpai_run()
	local hud = createHUD()
	dhxy_pub.showHud(hud,"帮派任务")
	
	dhxy_pub.click_activities()
	
	--寻找帮派
	for i = 1, 10 do
		sleep(1000)
		local pos = screen.findColor(Rect(353, 262, 1389, 521), "0|0|0xffffde,1|12|0xb55119,-19|45|0x94796b,3|85|0xe6db52",93, screen.PRIORITY_DEFAULT)
		if pos ~= Point.INVALID then
			--点击前往
			dhxy_common.click(math.random(pos.x+416,pos.x+529), math.random(pos.y-7,pos.y+38), math.random(40,100))
			break
		else
			dhxy_pub.activities_slide()
		end
	end
	sleep(8000)
	if(dhxy_pub.find_dialog()) then
		--对话框点击第一个
		dhxy_pub.click_dialog_one()
	end
	
	--执行逻辑0帮派1师门
	bangpai_shimen_body(0, hud)
	
	sleep(math.random(800,1500))
	hideHUD(hud)
end

function bangpai_shimen.shimen_run()
	local hud = createHUD()
	dhxy_pub.showHud(hud,"师门任务")
	
	dhxy_pub.click_activities()
	
	--寻找师门
	for i = 1, 10 do
		sleep(1000)
		local pos = screen.findColor(Rect(356, 261, 1384, 523), "0|0|0xf7f7f7,38|8|0xffffff,-34|37|0xffffff,3|49|0x84aece",95, screen.PRIORITY_DEFAULT)
		if pos ~= Point.INVALID then
			--点击前往
			dhxy_common.click(math.random(pos.x+437,pos.x+546), math.random(pos.y-21,pos.y+20), math.random(40,100))
			break
		else
			dhxy_pub.activities_slide()
		end
	end
	sleep(8000)
	if(dhxy_pub.find_dialog()) then
		--对话框点击第一个
		dhxy_pub.click_dialog_one()
	end
	
	--执行逻辑0帮派1师门
	bangpai_shimen_body(1, hud)
	
	sleep(math.random(800,1500))
	hideHUD(hud)
end

return bangpai_shimen