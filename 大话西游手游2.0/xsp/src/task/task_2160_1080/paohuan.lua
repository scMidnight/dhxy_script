local dhxy_common = require('common.dhxy_common')
local dhxy_pub = require('common.dhxy_pub_2160_1080')

local paohuan = {}

function paohuan.run()
	local hud = createHUD()
	dhxy_pub.showHud(hud,"200环")
	
	dhxy_pub.click_activities()
	
	--寻找200环
	for i = 1, 10 do
		sleep(1000)
		local pos = screen.findColor(Rect(353, 259, 1391, 523), "0|0|0x94a6bd,-15|32|0xf7fbff,42|21|0x8496bd,275|11|0x7b0808",95, screen.PRIORITY_DEFAULT)
		if pos ~= Point.INVALID then
			--点击前往
			dhxy_common.click(math.random(pos.x+444,pos.x+556), math.random(pos.y-13,pos.y+32), math.random(40,100))
			break
		else
			dhxy_pub.activities_slide()
		end
	end
	sleep(3000)
	--有对话框后点击第一个
	if(dhxy_pub.find_dialog()) then
		dhxy_pub.click_dialog_one()
	end
	local begin_time = os.milliTime()
	while true do
		sleep(3000)
		--检测是否答题对话框,是的话就选择a就可以
		local pos1 = screen.findColor(Rect(501, 511, 244, 230), "0|0|0xef8684,-71|109|0xffdf63,8|155|0xffebad",95, screen.PRIORITY_DEFAULT)
		if pos1 ~= Point.INVALID then
			--找到点击a选项
			dhxy_common.click(math.random(550,550+486), math.random(641,641+67), math.random(40,100))
			--点击两次200环
			dhxy_common.click(math.random(1810,1810+258), math.random(280,280+71), math.random(40,100))
			dhxy_common.click(math.random(1810,1810+258), math.random(280,280+71), math.random(40,100))
			begin_time = os.milliTime()
		end
		--上交各种物品，选择药品，召唤兽
		local pos2 = screen.findColor(Rect(1236, 814, 130, 56), "0|0|0xf7ffff,12|25|0xffffff,28|26|0xffffff,69|27|0xffffff,50|14|0xffffff",95, screen.PRIORITY_DEFAULT)
		if pos2 ~= Point.INVALID then
			--点击上交
			dhxy_common.click(math.random(1198,1198+186), math.random(818,818+52), math.random(40,100))
			begin_time = os.milliTime()
		end
		--如果是买宝宝的任务
		local pos3 = screen.findColor(Rect(386, 208, 168, 65), "0|0|0x841008,28|18|0x7b0000,64|18|0x7b0000,114|34|0xffe7a4",95, screen.PRIORITY_DEFAULT)
		if pos3 ~= Point.INVALID then
			for i = 1, 10 do
				sleep(1500)
				local pos4 = screen.findColor(Rect(789, 294, 951, 624), "0|0|0xffeb94,45|7|0x844531,69|-10|0xffe784,89|14|0xef8e5a",95, screen.PRIORITY_DEFAULT)
				if pos4 ~= Point.INVALID then
					--点击宠物
					dhxy_common.click(math.random(pos4.x+122,pos4.x+410), math.random(pos4.y-36,pos4.y+54), math.random(40,100))
					sleep(2000)
					--点击购买
					dhxy_common.click(math.random(1204,1204+398), math.random(803,803+60), math.random(40,100))
					break
				else
					--点击下一页
					dhxy_common.click(math.random(1696,1696+35), math.random(948,948+32), math.random(40,100))
				end
			end
			begin_time = os.milliTime()
		end
		--找对话框，一般是战斗或者上交技能书那一环使用
		if(dhxy_pub.find_dialog()) then
			dhxy_pub.click_dialog_one()
			begin_time = os.milliTime()
		end
		--是否战斗中
		if(dhxy_pub.is_combat()) then
			sleep(20000)
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
		--是否结束
		if(tonumber(string.format("%0.0f",(os.milliTime() - begin_time) / 1000)) > 120) then
			dhxy_pub.showHud(hud,"200环结束")
			break
		end
	end
	
	sleep(math.random(800,1500))
	hideHUD(hud)
end

return paohuan