local dhxy_common = require('common.dhxy_common')
local dhxy_pub = {
}

--展示hud
function dhxy_pub.showHud(id, text)
	showHUD(id,text,30,"0xFFFFFFFF","0xFF0000FF",1,-300,-440,260,70);
end
--点击更多
function dhxy_pub.click_more()
	dhxy_common.click(math.random(2040,2130), math.random(950,1040), math.random(40,100))
end
--点击活动
function dhxy_pub.click_activities()
	dhxy_common.click(math.random(40,105), math.random(290,370), math.random(40,100))
	sleep(3000)
end
--活动面板滑动
function dhxy_pub.activities_slide()
	local x = math.random(588, 588+909)
	local y = math.random(450, 450+294)
	local x1 = math.random(389, 389+1329)
	local y1 = y - 76
	dhxy_common.slide(x, y, x1, y1, math.random(40,100))
end
--关闭活动面板
function dhxy_pub.close_activities()
	dhxy_common.click(math.random(1756,1756+49), math.random(130,130+43), math.random(40,100))
end
--点击家园
function dhxy_pub.click_home(hud_id)
	--寻找家园
	local pos = screen.findColor(Rect(1435, 908, 430, 156), "0|0|0xffffff,20|29|0xfffb94,-4|52|0x6bf3c5,-35|79|0x3abe8c",95, screen.PRIORITY_DEFAULT)
	if pos ~= Point.INVALID then
		--点击家园
		dhxy_common.click(math.random(pos.x-37,pos.x+63), math.random(pos.y,pos.y+108), math.random(40,100))
	else
		dhxy_pub.showHud(hud_id,"家园未找到")
		sleep(3000)
	end
end
--进入房间
function dhxy_pub.click_room()
	dhxy_common.click(math.random(670,670+297), math.random(868,868+59), math.random(40,100))
end
--寻找对话框
function dhxy_pub.find_dialog()
	local pos = screen.findColor(Rect(1474, 605, 561, 111), "0|0|0xd69642,-163|38|0xde9642,90|87|0xdea252,374|38|0xdea252",93, screen.PRIORITY_DEFAULT)
	if pos ~= Point.INVALID then
		return true
	else
		return false
	end
end
--点击对话框第一个选项
function dhxy_pub.click_dialog_one()
	dhxy_common.click(math.random(1499,1499+513), math.random(629,629+61), math.random(40,100))
end
--点击对话框第二个选项
function dhxy_pub.click_dialog_two()
	dhxy_common.click(math.random(1502,1502+508), math.random(744,744+60), math.random(40,100))
end
--点击世界地图
function dhxy_pub.click_worldmap()
	dhxy_common.click(math.random(17,17+87), math.random(19,19+88), math.random(40,100))
end
--点击长安
function dhxy_pub.click_changan()
	dhxy_common.click(math.random(1079,1079+257), math.random(367,367+98), math.random(40,100))
end
--查找战斗
function dhxy_pub.is_combat()
	local pos = screen.findColor(Rect(0, 0, 2160, 1080), "0|0|0xefbe6b,8|-7|0x8c553a,-24|-1|0xefbe6b,29|-1|0xf7c273",95, screen.PRIORITY_DEFAULT)
	if pos ~= Point.INVALID then
		return true
	else
		return false
	end
end
--点击包裹
function dhxy_pub.click_parcel()
	dhxy_common.click(math.random(1896,1896+77), math.random(951,951+89), math.random(40,100))
	sleep(3000)
end
--关闭包裹
function dhxy_pub.close_parcel()
	dhxy_common.click(math.random(1756,1756+53), math.random(126,126+48), math.random(40,100))
	sleep(2000)
end
--寻找物品使用并点击
function dhxy_pub.find_articles_use_click()
	local pos = screen.findColor(Rect(1069, 273, 647, 668), "0|0|0xffffff,166|7|0x84caa4,7|66|0x21c6a4,170|52|0x31ba94",93, screen.PRIORITY_DEFAULT)
	if pos ~= Point.INVALID then
		--点击使用
		dhxy_common.click(math.random(1340,1340+168), math.random(379,379+64), math.random(40,100))
		return true
	else
		return false
	end
end
--点击积分
function dhxy_pub.click_jifen()
	dhxy_common.click(math.random(1602,1602+67), math.random(7,7+31), math.random(40,100))
	sleep(1000)
end
--寻找做天抓鬼，是否继续，并点击确定
function dhxy_pub.find_tiangui_is_continue_ok()
	local pos = screen.findColor(Rect(1130, 645, 321, 113), "0|0|0xffffff,271|34|0x3ab68c,27|53|0x31ba94,247|58|0x29be94",95, screen.PRIORITY_DEFAULT)
	if pos ~= Point.INVALID then
		--点击确定
		dhxy_common.click(math.random(1172,1172+240), math.random(669,669+65), math.random(40,100))
		return true
	else
		return false
	end
end
--领悟技能，点击知道了
function dhxy_pub.lingwu_know()
	local pos = screen.findColor(Rect(765, 692, 215, 58), "0|0|0xa45919,25|31|0xa45d21,134|31|0xa45d21,166|30|0xa45d21",95, screen.PRIORITY_DEFAULT)
	if pos ~= Point.INVALID then
		--点击知道了
		dhxy_common.click(math.random(741,741+257), math.random(697,697+52), math.random(40,100))
		return true
	else
		return false
	end
end
--关闭推送好友
function dhxy_pub.close_push_friend()
	local pos = screen.findColor(Rect(965, 685, 232, 54), "0|0|0xffffff,33|10|0xeffbf7,57|-10|0xffffff,144|7|0xffffff,197|23|0xf7fbf7",95, screen.PRIORITY_DEFAULT)
	if pos ~= Point.INVALID then
		--点击关闭
		dhxy_common.click(math.random(1474,1474+48), math.random(286,286+44), math.random(40,100))
	end
end
--点击空白处
function dhxy_pub.click_blank_space()
	dhxy_common.click(math.random(798,798+280), math.random(850,850+153), math.random(40,100))
end

return dhxy_pub