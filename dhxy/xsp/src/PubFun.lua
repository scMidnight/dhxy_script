require("DhxyUtils");
pubFun_tab = {};
--展示hud
function pubFun_tab.showHud(id,text,width, height)
	if(width == 720 and height == 1440) then
		showHUD(id, text, 20, "0xFFFFFFFF","0xFF0000FF",1,-240,-310,180,50);
	end
	if(width == 1080 and height == 1920) then
		showHUD(id,text,30,"0xFFFFFFFF","0xFF0000FF",1,-260,-480,260,70);
	end
end
--随机生成x,y
function pubFun_tab.randomXY(x1,y1,x2,y2)
	local xyTab = {};
	xyTab.x = math.random(x1,x2);
	xyTab.y = math.random(y1,y2);
	return xyTab;
end
--寻找包裹
function pubFun_tab.findPackage(width, height)
	local clickTabXY = {};
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = findColor({1246, 618, 1342, 709}, "0|0|0x9c2c31,-25|5|0xefd37b,25|5|0xefd384,22|50|0xce3c31,-21|27|0xfffff7",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			clickTabXY.isFound = true;
		else
			clickTabXY.isFound = false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({1622, 923, 1764, 1059}, "0|0|0xe66471,-38|36|0xe8948e,34|34|0xc76432,28|69|0xd9710a",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			clickTabXY.isFound = true;
		else
			clickTabXY.isFound = false;
		end
	end
	clickTabXY.x = x;
	clickTabXY.y = y;
	return clickTabXY;
end
--寻找竞技场
function pubFun_tab.findJingJi(width, height)
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		local point = findColors({967, 98, 1023, 404}, "0|0|0xffffff,10|-1|0xfffbee,14|-1|0xefc339,7|6|0xf7d339,5|18|0xfffbde",95, 0, 0, 0);
		if #point ~= 0 then
			for var = 1,#point do
				x = point[var].x;
				y = point[var].y;
			end
		end
	end
	if(width == 1080 and height == 1920) then
		local point = findColors({1253, 126, 1775, 615}, "0|0|0xa28c73,-10|14|0x90310b,13|14|0x8b300f,34|14|0x99441a,-29|14|0x9c4515",95, 0, 0, 0);
		if #point ~= 0 then
			for var = 1,#point do
				x = point[var].x;
				y = point[var].y;
			end
		end
	end
	local clickTabXY = {};
	clickTabXY.x = x;
	clickTabXY.y = y;
	return clickTabXY;
end
--判断是否战斗中
function pubFun_tab.isPk(width, height, isClick)
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = findColor({79, 20, 177, 108}, "0|0|0xf7c773,5|-2|0x8c5939,16|2|0xa56942,-14|2|0x8c5539,10|-44|0x7b614a",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
--			if(isClick ~= "jingJi") then
--				dhxyUtils_tab.tap(300,math.random(570, 731),math.random(446, 569));
--			end
			return true;
		else
			return false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({8, 107, 155, 158}, "0|0|0x8c5337,28|4|0x7d422e,57|0|0x7a412c,86|-2|0x7c412d,112|2|0x7e442f",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
--			if(isClick ~= "jingJi") then
--				dhxyUtils_tab.tap(300,math.random(887, 1138),math.random(366, 553));
--			end
			return true;
		else
			return false;
		end
	end
end
--找对对话框
function pubFun_tab.findDialog(width, height)
	if(width == 720 and height == 1440) then 
		x, y = findColor({980, 400, 1357, 484}, "0|0|0xe7aa5a,145|-27|0xd68a32,358|-2|0xde963a,185|31|0xde963a",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({1219, 597, 1822, 719}, "0|0|0xda9743,-179|44|0xe4ac62,357|39|0xe2a75a,96|87|0xdb9f4d",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
end
--对话框点击 num  1 表示第一个选项  2 是第二个选项
function pubFun_tab.dialogBox(width, height, num)
	if(width == 720 and height == 1440) then
		if(num == 1) then
			dhxyUtils_tab.tap(300,math.random(1002, 1337),math.random(418, 461));
		elseif(num == 2) then
			dhxyUtils_tab.tap(300,math.random(1003, 1334),math.random(495, 535));
		end
	end
	if(width == 1080 and height == 1920) then
		if(num == 1) then
			dhxyUtils_tab.tap(300,math.random(1259, 1767),math.random(626, 690));
		elseif(num == 2) then
			dhxyUtils_tab.tap(300,math.random(1259, 1767),math.random(739, 808));
		end
	end
end
--判断xy有没有找到，找到点击
function pubFun_tab.click(tab, text, x, y, clickType)
	if (tab.x ~= -1 and tab.y ~= -1) then
		sysLog(text.."x:"..x..",y:"..y);
		if(clickType == "double") then
			dhxyUtils_tab.doubleClick(300,x,y);
			return true;
		else 
			dhxyUtils_tab.tap(300,x,y);
			return true;
		end
	else
		sysLog("对不起没有找到"..text);
		toast("对不起没有找到"..text);
		return false;
		--sysLog("截图");
		--local nowDate = os.date("%H:%M:%S", os.time());
		--snapshot("[public]"..nowDate..".png",2,2,1919,1079);
	end
end
--关闭包裹、竞技场、召唤兽灵修,小地图等一类的小窗口
function pubFun_tab.close(width, height, text)
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = math.random(1172, 1204), math.random(83, 114);
		sysLog("关闭"..text.."x:"..x.."，y:"..y);
		dhxyUtils_tab.tap(300,x,y);
	end
	if(width == 1080 and height == 1920) then
		x, y = math.random(1640, 1685), math.random(127, 171);
		sysLog("关闭"..text.."x:"..x.."，y:"..y);
		dhxyUtils_tab.tap(300,x,y);
	end
end
--寻找奖励
function pubFun_tab.findJiangli(width, height)
	local jiangliXYTab = {};
	local x, y = 0, 0;
	if(width == 1080 and height == 1920) then
		x, y = findColor({5, 386, 189, 565}, "0|0|0xf6788f,42|7|0xfffefd,80|3|0xd13a5c",95, 0, 0, 0);
	end
	if(width == 720 and height == 1440) then
		x, y = findColor({8, 271, 97, 354}, "0|0|0xffffff,5|-21|0xefbe4a,9|23|0xde5584",95, 0, 0, 0);
	end
	jiangliXYTab.x = x;
	jiangliXYTab.y = y;
	return jiangliXYTab;
end
--寻找更多按钮
function pubFun_tab.findMore(width, height)
	local moreXYTab = {};
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = findColor({1355, 619, 1429, 702}, "0|0|0x31867b,12|-26|0xffffff,17|4|0x42d3ad,36|-1|0x42d3ad,18|19|0x29e7de",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			moreXYTab.isFound = true;
		else
			moreXYTab.isFound = false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({1771, 930, 1908, 1061}, "0|0|0xfffffe,-35|36|0x236552,47|44|0x26755c,5|72|0x2be9e4",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			moreXYTab.isFound = true;
		else
			moreXYTab.isFound = false;
		end
	end
	moreXYTab.x = x;
	moreXYTab.y = y;
	return moreXYTab;
end
--寻找反向更多并点击
function pubFun_tab.findNoMore(width, height)
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = findColor({1344, 621, 1429, 702}, "0|0|0xf7ffff,29|0|0xffffff,-3|34|0x21ebe7,34|34|0xf7f7ff",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({1755, 933, 1909, 1063}, "0|0|0xfdfefd,44|1|0x66dba3,-1|44|0x26e8e2,41|43|0x43d4ae",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
end
--寻找家园
function pubFun_tab.findHome(width, height)
	local homeXYTab = {};
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = findColor({1048, 614, 1236, 708}, "0|0|0x94f3de,-10|17|0x7befce,-8|29|0xf79e6b,32|43|0x4acb94,-30|37|0x42c78c",95, 0, 0, 0);
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({1331, 916, 1625, 1065}, "0|0|0xfffe9d,-13|17|0x9cf1d9,-13|41|0x82f1d3,-53|68|0x3ec58a,47|81|0x54d198",95, 0, 0, 0);
	end
	if(x ~= -1 and y ~= -1) then
		homeXYTab.isFound = true;
	else
		homeXYTab.isFound = false;
	end
	homeXYTab.x = x;
	homeXYTab.y = y;
	return homeXYTab;
end
--世界地图根据类型判断是否回家
function pubFun_tab.goHome(width, height, choice)
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		--点击世界地图38,14,66,44
		x, y = math.random(38, 66), math.random(14, 44);
		sysLog("世界地图x:"..x.."，y:"..y);
		dhxyUtils_tab.tap(300,x,y);
		mSleep(3000);
		if(choice == "goHome") then
			--点击回家49,638,113,698
			x, y = math.random(49, 113), math.random(638, 698);
			sysLog("回家x:"..x.."，y:"..y);
			dhxyUtils_tab.tap(300,x,y);
		end
	end
	if(width == 1080 and height == 1920) then
		--点击世界地图21,16,105,74
		x, y = math.random(21, 105), math.random(16, 74);
		sysLog("世界地图x:"..x.."，y:"..y);
		dhxyUtils_tab.tap(300,x,y);
		if(choice == "goHome") then
			--点击回家78,955,158,1048
			x, y = math.random(78, 158), math.random(955, 1048);
			sysLog("回家x:"..x.."，y:"..y);
			dhxyUtils_tab.tap(300,x,y);
		end
	end
end
--检测是否200环答题
function pubFun_tab.findDaTi200(width, height)
	local datiTabXY = {};
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = findColor({340, 404, 721, 500}, "0|0|0xd68e32,174|-35|0xde8e32,162|35|0xefba73,358|-2|0xe7ba7b",90, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			datiTabXY.isFound = true;
		else
			datiTabXY.isFound = false;
		end
	end
	datiTabXY.x = x;
	datiTabXY.y = y;
	return datiTabXY;
end
--检测是否大理寺答题界面
function pubFun_tab.findDaTi(width, height) 
	local datiTabXY = {};
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = findColor({168, 90, 1263, 689}, "0|0|0xc6fbb5,857|145|0xd6ffc6,774|401|0x63869c,845|385|0xb5dbb5,938|398|0x637994",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			datiTabXY.isFound = true;
		else
			datiTabXY.isFound = false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({192, 212, 1766, 1034}, "0|0|0xc8fbb7,-1262|-167|0xb7f4a5,-21|335|0x78b989,115|353|0x5f7c93",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			datiTabXY.isFound = true;
		else
			datiTabXY.isFound = false;
		end
	end
	datiTabXY.x = x;
	datiTabXY.y = y;
	return datiTabXY;
end
--寻找活动
function pubFun_tab.findActivity(width, height) 
	local activityTabXY = {};
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = findColor({5, 179, 92, 260}, "0|0|0xffebc6,18|7|0xf7dbd6,35|-2|0xf7ffef,46|-1|0xad2c31,58|-1|0xffffff",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			activityTabXY.isFound = true;
		else
			activityTabXY.isFound = false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({6, 271, 140, 392}, "0|0|0xfdf4dc,15|20|0xdb4867,42|7|0xfaebbd,69|-4|0xb12c33",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			activityTabXY.isFound = true;
		else
			activityTabXY.isFound = false;
		end
	end
	activityTabXY.x = x;
	activityTabXY.y = y;
	return activityTabXY;
end
--寻找帮派并点击
function pubFun_tab.clickBangPai(width, height)
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		for i = 1, 10 do
			x, y = findColor({238, 185, 1162, 529}, "0|0|0xffd718,3|4|0xbd5121,17|52|0xde6d21",90, 0, 0, 0);
			if(x ~= -1 and y ~= -1) then
				dhxyUtils_tab.tap(300,math.random((x+278), (x+355)),math.random((y-7), (y+23)));
				break;
			else
				--在此点生成x,y滑动（591,377,841,465）
				x = math.random(591,841);
				y = math.random(377,465);
				dhxyUtils_tab.move(500,x, y, x, (y-107));
			end
		end
	end
	if(width == 1080 and height == 1920) then
		for i = 1, 10 do
			x, y = findColor({0, 0, 1919, 1079}, "0|0|0xbb541f,8|-7|0xfefdf0,-47|39|0xcdb122,-50|-5|0xfdfded,37|63|0xebe25c",95, 0, 0, 0);
			if(x ~= -1 and y ~= -1) then
				dhxyUtils_tab.tap(300,math.random((x+425), (x+538)),math.random((y+16), (y+27)));
				break;
			else
				--在此点生成x,y滑动（613,384,1257,679）
				x = math.random(613,1257);
				y = math.random(384,679);
				dhxyUtils_tab.move(500,x, y, x, (y-165));
			end
		end
	end
end
--寻找师门并点击
function pubFun_tab.clickShiMen(width, height)
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		for i = 1, 10 do
			x, y = findColor({238, 185, 1162, 529}, "0|0|0xf7fbf7,3|18|0x425173,22|8|0xffffff,-18|23|0xfffbff",90, 0, 0, 0);
			if(x ~= -1 and y ~= -1) then
				dhxyUtils_tab.tap(300,math.random((x+292), (x+367)),math.random((y-15), (y+15)));
				break;
			else
				--在此点生成x,y滑动（591,377,841,465）
				x = math.random(591,841);
				y = math.random(377,465);
				dhxyUtils_tab.move(500,x, y, x, (y-107));
			end
		end
	end
	if(width == 1080 and height == 1920) then
		for i = 1, 10 do
			x, y = findColor({238, 277, 1619, 780}, "0|0|0xf5f8fa,-40|24|0xd1eff8,29|42|0x7397b6,0|62|0x6893b9",95, 0, 0, 0);
			if(x ~= -1 and y ~= -1) then
				dhxyUtils_tab.tap(300,math.random((x+434), (x+546)),math.random((y-17), (y+24)));
				break;
			else
				--在此点生成x,y滑动（613,384,1257,679）
				x = math.random(613,1257);
				y = math.random(384,679);
				dhxyUtils_tab.move(500,x, y, x, (y-165));
			end
		end
	end
end
--寻找200环并点击
function pubFun_tab.huan200Click(width, height)
	local x, y = 0, 0;
	local flag = false;
	if(width == 720 and height == 1440) then
		for i = 1, 10 do
			x, y = findColor({236, 188, 1157, 524}, "0|0|0x8ca2bd,-11|24|0xf7fbff,24|16|0x9caac6,25|33|0x94aabd",95, 0, 0, 0);
			if(x ~= -1 and y ~= -1) then
				--点击前往
				dhxyUtils_tab.tap(300,math.random((x+301), (x+375)),math.random((y-13), (y+14)));
				flag = true;
				break;
			else
				--在此点生成x,y滑动（591,377,841,465）
				x = math.random(591,841);
				y = math.random(377,465);
				dhxyUtils_tab.move(500,x, y, x, (y-107));
			end
		end
	end
	if(width == 1080 and height == 1920) then
		for i = 1, 10 do
			x, y = findColor({224, 265, 1631, 784}, "0|0|0x94a2bd,-16|28|0xeff7ff,-39|40|0xa4bece,36|19|0x9caece,55|43|0x7b96ad,274|10|0x8c1819",95, 0, 0, 0);
			if(x ~= -1 and y ~= -1) then
				--点击前往
				dhxyUtils_tab.tap(300,math.random((x+447), (x+548)),math.random((y-11), (y+26)));
				flag = true;
				break;
			else
				--在此点生成x,y滑动（613,384,1257,679）
				x = math.random(613,1257);
				y = math.random(384,679);
				dhxyUtils_tab.move(500,x, y, x, (y-165));
			end
		end
	end	
	return flag;
end
--寻找右下角的购买并点击
function pubFun_tab.buy(width, height)
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = findColor({894, 559, 1138, 629}, "0|0|0xf7ffff,206|4|0x8ccfa5,-2|40|0x31ba94,202|38|0x31ba8c",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			dhxyUtils_tab.tap(300,math.random(911, 1119),math.random(572, 613));
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({1213, 833, 1595, 965}, "0|0|0xfeffff,314|2|0x97d2ad,5|63|0x29c4a5,299|57|0x30b88f",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			dhxyUtils_tab.tap(300,math.random(1250, 1547),math.random(867, 917));
		end
	end
end
--检测帮派结束
function pubFun_tab.bangPaiEnd(width, height)
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = findColor({286, 444, 859, 582}, "0|0|0xf7fbff,242|5|0xfff721,253|7|0xfffff6,259|6|0xffef10,512|-56|0xb5a68c",92, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({419, 628, 1074, 864}, "0|0|0xfefefe,398|8|0xfff213,524|-79|0xc5bf9d",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
end
--检测师门结束
function pubFun_tab.shiMenEnd(width, height)
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = findColor({593, 444, 888, 580}, "0|0|0x000000,5|0|0xf7db18,9|0|0x000808,3|8|0xef5163,202|-59|0xb5a294",90, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({861, 664, 1078, 857}, "0|0|0x000000,13|1|0x000000,2|13|0xf33d52,52|-90|0xb2a491",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
end
--把结束框点掉
function pubFun_tab.clickEnd(width, height)
	if(width == 720 and height == 1440) then
		dhxyUtils_tab.tap(300,math.random(514, 713),math.random(553, 650));
	end
	if(width == 1080 and height == 1920) then
		dhxyUtils_tab.tap(300,math.random(835, 1024),math.random(864, 960));
	end
end
--活动中检测宝图并点击
function pubFun_tab.clickBaoTu(width, height)
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		for i = 1, 10 do
			x, y = findColor({237, 183, 1157, 524}, "0|0|0xc64d39,-6|28|0xf7f7bd,16|-2|0xcea25a",95, 0, 0, 0);
			if(x ~= -1 and y ~= -1) then
				dhxyUtils_tab.tap(300,math.random((x+292), (x+363)),math.random((y-19), (y+11)));
				break;
			else
				--在此点生成x,y滑动（591,377,841,465）
				x = math.random(591,841);
				y = math.random(377,465);
				dhxyUtils_tab.move(500,x, y, x, (y-107));
			end
		end
	end
	if(width == 1080 and height == 1920) then
		for i = 1, 10 do
			x, y = findColor({228, 270, 1628, 783}, "0|0|0xc64e3c,42|-1|0xa9703d,-13|-12|0xb37b44,-3|43|0xf6f3bc,27|52|0xab6d48",95, 0, 0, 0);
			if(x ~= -1 and y ~= -1) then
				dhxyUtils_tab.tap(300,math.random((x+445), (x+548)),math.random((y-23), (y+11)));
				break;
			else
				--在此点生成x,y（613,384,1257,679）
				x = math.random(613,1257);
				y = math.random(384,679);
				dhxyUtils_tab.move(500,x, y, x, (y-165));
			end
		end
	end
end
--寻找包裹中的宝图并点击
function pubFun_tab.findBoxBaoTu(width, height) 
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = findColor({723, 202, 1145, 579}, "0|0|0xc64539,-2|21|0xdedf94,15|-1|0xcea25a,-23|36|0x947d6b",90, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			dhxyUtils_tab.tap(300,math.random((x-22), (x+31)),math.random((y-19), (y+39)));
			return true;
		else
			--没找到就把包裹关闭
			dhxyUtils_tab.tap(300,math.random(1170, 1206),math.random(85, 113));
			return false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({954, 293, 1599, 948}, "0|0|0xc54d3a,-27|47|0xa48673,0|28|0xe6db94",93, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			dhxyUtils_tab.tap(300,math.random((x-27), (x+31)),math.random((y-17), (y+41)));
			return true;
		else
			return false;
		end
--		point = findColors({959, 298, 1593, 951}, "0|0|0xc5493a,-42|62|0x94756b,-17|37|0xeff3bd,13|41|0xb59e52",95, 0, 0, 0);
--		if #point ~= 0 then
--			for var = 1,#point do
--				x = point[var].x;
--				y = point[var].y;
--			end
--			dhxyUtils_tab.tap(300,math.random((x-33), (x+34)),math.random((y-21), (y+44)));
--			return true;
--		else
--			return false;
--		end
	end
end
--寻找物品的使用并点击
function pubFun_tab.findUse(width, height)
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = findColor({864, 215, 1059, 482}, "0|0|0xf7ffff,112|2|0x8ccfad,6|34|0x29ae8c,110|36|0x31b694",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击使用:893,254,1004,294
			dhxyUtils_tab.tap(300,math.random(893, 1004),math.random(254, 294));
			return true;
		else
			return false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({1184, 333, 1424, 494}, "0|0|0xffffff,170|6|0x8bcca5,1|63|0x2cbe9b,172|66|0x2dc49f",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击使用:1217,377,1391,444
			dhxyUtils_tab.tap(300,math.random(1217, 1391),math.random(377, 444));
			return true;
		else
			return false;
		end
	end
end
-- 领双
function pubFun_tab.shuang(width, height)
	if(width == 720 and height == 1440) then
		--寻找活动并点击
		local activityTabXY = pubFun_tab.findActivity(width, height);
		pubFun_tab.click(activityTabXY, "活动", math.random(23, 75), math.random(199, 247), "click");
		mSleep(3000);
		--点击两次领取:1042,129,1118,158
		dhxyUtils_tab.doubleClick(300,math.random(1042, 1118),math.random(129, 158));
		mSleep(1000);
		pubFun_tab.close(width, height, "活动面板");
	end
	if(width == 1080 and height == 1920) then
		--寻找活动并点击
		local activityTabXY = pubFun_tab.findActivity(width, height);
		pubFun_tab.click(activityTabXY, "活动", math.random(30, 108), math.random(288, 370), "click");
		mSleep(3000);
		--点击两次领取:1440,196,1551,238
		dhxyUtils_tab.tap(300,math.random(1440, 1551),math.random(196, 238));
		mSleep(1000);
		pubFun_tab.close(width, height, "活动面板");
	end
end
--找签到确定按钮
function pubFun_tab.isOk(width, height, height)
	if(width == 720 and height == 1440) then
		x, y = findColor({699, 409, 1026, 527}, "0|0|0x63be9c,98|-3|0x73c39c,-1|22|0x31ba8c,94|22|0x31ba94",90, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({573, 620, 1345, 777}, "0|0|0xdc953b,298|4|0xd99841,444|2|0x42b78b,669|7|0x3cb88b",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
end
--做天抓鬼是否继续以及查看掉线
function pubFun_tab.isContinue(width, height)
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = findColor({699, 409, 1026, 527}, "0|0|0x63be9c,98|-3|0x73c39c,-1|22|0x31ba8c,94|22|0x31ba94",90, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击确定:805,448,917,483
			dhxyUtils_tab.tap(300,math.random(805, 917),math.random(448, 483));
			mSleep(1000);
			return true;
		else
			return false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({569, 636, 1336, 767}, "0|0|0xde8e31,447|0|0x31ba84,65|86|0xdea652,473|86|0x31be84",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击确定:1033,666,1303,728
			dhxyUtils_tab.tap(300,math.random(1033, 1303),math.random(666, 728));
			mSleep(1000);
			return true;
		else
			return false;
		end
	end
end
--做天抓鬼循环体
function pubFun_tab.body(width, height,nTime)
	mSleep(5000);
	if(width == 720 and height == 1440) then
		--判断是否在战斗中
		local isPk = pubFun_tab.isPk(width, height);
		if(isPk) then
			while true do
				mSleep(2000);
				isPk = pubFun_tab.isPk(width, height);
				if(not isPk) then
					break;
				end
				nTime = mTime();
			end
		end
		--点击领悟技能知道了
		if(pubFun_tab.findLingWu(width, height)) then
			nTime = mTime();
		end
		--是否继续后30轮
		if(pubFun_tab.isContinue(width, height)) then
			nTime = mTime();
		end
	end
	if(width == 1080 and height == 1920) then
		--判断是否在战斗中
		local isPk = pubFun_tab.isPk(width, height);
		if (isPk) then
			while true do
				mSleep(2000);
				isPk = pubFun_tab.isPk(width, height);
				if(not isPk) then
					break;
				end
				nTime = mTime();
			end
			--点击领悟技能知道了
			if(pubFun_tab.findLingWu(width, height)) then
				nTime = mTime();
			end
		end
		--是否继续
		if(pubFun_tab.isContinue(width, height)) then
			nTime = mTime();
		end
	end
	return nTime;
end
--查找引妖香
function pubFun_tab.findYinYaoXiang(width, height)
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = findColor({725, 201, 1147, 581}, "0|0|0xfff7ee,20|-20|0x212019,26|-14|0xcec3b5",90, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击引妖香:736,208,798,276
			dhxyUtils_tab.tap(300,math.random((x-13), (x+49)),math.random((y-30), (y+38)));
			return true;
		else
			return false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({961, 297, 1600, 919}, "0|0|0x131310,-10|11|0xfefefd,-34|5|0xf0d16c,24|5|0xc67d2b,-3|45|0xfa9160",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击引妖香:1033,666,1303,728
			dhxyUtils_tab.tap(300,math.random((x-44), (x+33)),math.random((y-14), (y+70)));
			return true;
		else
			return false;
		end
	end
end
--引妖香巡逻
function pubFun_tab.patrol(width, height, isClick)
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		--点击小地图102,31,215,71
		dhxyUtils_tab.tap(300,math.random(102, 215),math.random(31, 71));
		mSleep(2000);
		--点击地图上这个地方984,482,1038,528
		dhxyUtils_tab.tap(300,math.random(984, 1038),math.random(482, 528));
	end
	if(width == 1080 and height == 1920) then
		--点击小地图159,44,305,106
		dhxyUtils_tab.tap(300,math.random(159, 305),math.random(44, 106));
		mSleep(2000);
		--点击地图上这个地方1351,715,1424,772
		dhxyUtils_tab.tap(300,math.random(1351, 1424),math.random(715, 772));
	end
end
--上交各种物品，召唤兽
function pubFun_tab.shangJiao(width, height)
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = findColor({757, 531, 961, 597}, "0|0|0xf7ffff,154|3|0x8ccba5,16|31|0x39ba94,140|30|0x31ba94",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			mSleep(1000);
			--点击上交：797,541,927,584
			dhxyUtils_tab.tap(300,math.random(797, 927),math.random(541, 584));
			return true;
		else
			return false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({1014, 789, 1335, 907}, "0|0|0xffffff,243|10|0x70c297,7|54|0x32b68d,237|51|0x34b58b",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			mSleep(1000);
			--点击上交：1047,816,1287,872
			dhxyUtils_tab.tap(300,math.random(1047, 1287),math.random(816, 872));
			return true;
		else
			return false;
		end
	end
end
--先找是否上交宝宝的任务，再购买需要的宝宝
function pubFun_tab.maiBaobao(width, height)
	local x, y = 0, 0;
	local flag = false;
	if(width == 720 and height == 1440) then
		--是否购买宝宝的对话框
		x, y = findColor({225, 118, 397, 195}, "0|0|0x8c1d18,0|-5|0x840900,68|16|0xffebad,76|-11|0xfffbe7",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			for i = 1, 10 do
				--找需要的宝宝购买
				x, y = findColor({531, 199, 1159, 611}, "0|0|0xffe384,22|-5|0xffe78c,1|10|0xf7aa6b,26|2|0xffbe73",95, 0, 0, 0);
				if (x ~= -1 and y ~= -1) then
					--找到就点击
					dhxyUtils_tab.tap(300,math.random((x+69), (x+244)),math.random((y-27), (y+35)));
					mSleep(1000);
					--836,539,1022,576点击购买
					dhxyUtils_tab.tap(300,math.random(836, 1022),math.random(539, 576));
					flag = true;
					break;
				else
					--在此点生成x,y滑动（591,377,841,465）
					x = math.random(591,841);
					y = math.random(377,465);
					dhxyUtils_tab.move(500,x, y, x, (y-107));
				end
			end
			return flag;
		else
			return flag;
		end
	end
	if(width == 1080 and height == 1920) then
		--是否购买宝宝的对话框
		x, y = findColor({211, 173, 738, 299}, "0|0|0xfffbec,181|4|0xfffbf0,255|-1|0xf7ece0,180|33|0xffe6a2,255|32|0xeacbae",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			for i = 1, 10 do
				--找需要的宝宝购买
				x, y = findColor({673, 295, 1626, 920}, "0|0|0xffef93,-59|63|0xfb895a,-75|23|0xffe58d,14|40|0xfe9762,-13|29|0xffc075,-49|24|0xffe688",95, 0, 0, 0);
				if (x ~= -1 and y ~= -1) then
					--找到就点击
					dhxyUtils_tab.tap(300,math.random((x+50), (x+336)),math.random((y-20), (y+80)));
					mSleep(1000);
					--1071,809,1495,862点击购买
					dhxyUtils_tab.tap(300,math.random(1071, 1495),math.random(809, 862));
					flag = true;
					break;
				else
					--没找到就滑下一页
					x = math.random(739, 1546);
					y = math.random(650, 885);
					dhxyUtils_tab.move(500, x, y, x, (y-160));
				end
			end
			return flag;
		else
			return flag;
		end
	end
end
--寻找右上角关闭（并不是世界关闭）
function pubFun_tab.findYouClose(width, height)
	local x, y = 0, 0;
	if(widht == 720 and height == 1440) then
		x, y = findColor({1381, 7, 1430, 57}, "0|0|0xefaa9c,13|-1|0xef716b,-2|15|0xef716b,12|14|0xef716b,5|7|0xef716b",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			return true;
		else 
			return false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({1803, 23, 1902, 120}, "0|0|0xef7173,-4|-25|0xefe3c5,1|21|0xefd2b5",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--1831,47,1875,92点击关闭
			--dhxyUtils_tab.tap(300,math.random(1831, 1875),math.random(47, 92));
			return true;
		else
			return false;
		end
	end
end
--寻找传闻卡确定按钮
function pubFun_tab.findCard(width, height) 
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = findColor({814, 550, 1046, 628}, "0|0|0xffffff,183|7|0x73c39c,5|34|0x31ae84,169|35|0x29ba94",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击确定834,563,1021,605
			dhxyUtils_tab.tap(300,math.random(834, 1021),math.random(563, 605));
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({1083, 819, 1502, 943}, "0|0|0xffffff,270|12|0x65bf92,40|54|0x2cbb93,246|49|0x30ba90",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击确定1129,844,1407,911
			dhxyUtils_tab.tap(300,math.random(1129, 1407),math.random(844, 911));
		end
	end
end
--寻找右下角使用并点击
function pubFun_tab.findYouUse(width, height)
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = findColor({1080, 509, 1197, 555}, "0|0|0xf7fbf7,90|1|0x94cba5,4|22|0x31be9c,88|21|0x39ba94",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--1091,517,1180,548点击使用
			dhxyUtils_tab.tap(300,math.random(1091, 1180),math.random(517, 548));
			mSleep(1000);
			pubFun_tab.findCard(width, height);
			return true;
		else
			return false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({1320, 550, 1598, 859}, "0|0|0xffffff,133|17|0x52be94,6|37|0x31be94,126|34|0x3abe94",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--1396,777,1526,820点击使用
			dhxyUtils_tab.tap(300,math.random(1396, 1526),math.random(777, 820));
			mSleep(1000);
			pubFun_tab.findCard(width, height);
			return true;
		else
			return false;
		end
	end
end
--查找世界关闭
function pubFun_tab.findShiJieClose(width, height)
	local x, y = 0, 0;
	sysLog(width);
	if(width == 720 and height == 1440) then
		x, y = findColor({1378, 3, 1435, 60}, "0|0|0xe77173,16|0|0xe77173,8|7|0xef716b",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--关闭右上角世界界面:1390,18,1423,46
			dhxyUtils_tab.tap(300,math.random(1390, 1423),math.random(18, 46));
			return true;
		else
			return false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({1815, 1, 1917, 104}, "0|0|0xe67173,7|-24|0xf7efde,5|18|0xe6cead,-13|-4|0xefd7b5",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--关闭右上角世界界面1080坐标:1836,29,1887,77
			dhxyUtils_tab.tap(300,math.random(1836, 1887),math.random(29, 77));
			return true;
		else
			return false;
		end
	end
end
--查找是否领悟技能对话框
function pubFun_tab.findLingWu(width, height)
	local x, y = 0, 0;
	if(width == 720 and height == 1440) then
		x, y = findColor({755, 431, 971, 505}, "0|0|0xffffff,170|6|0x84c79c,6|38|0x31b68c,159|35|0x31ba94",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击769,443,951,486知道了
			dhxyUtils_tab.tap(300,math.random(769, 951),math.random(443, 486));
			return true;
		else
			return false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({589, 637, 1373, 760}, "0|0|0xff75ff,208|-32|0xf7fbf7,476|-16|0x52ba8c,243|18|0x31ba94,446|18|0x31ba94",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击1037,668,1297,727知道了
			dhxyUtils_tab.tap(300,math.random(1037, 1297),math.random(668, 727));
			return true;
		else
			return false;
		end
	end
end
--查找竞技场的挑战按钮
function pubFun_tab.findTiaoZhan(width, height)
	local x, y = 0, 0;
	--选择挑战的目标集合
	local pkList = {};
	if(width == 720 and height == 1440) then
		pkList = {
			{x1=983,x2=1111,y1=229,y2=270},
			{x1=983,x2=1111,y1=347,y2=387},
			{x1=983,x2=1111,y1=459,y2=503},
			{x1=983,x2=1111,y1=574,y2=617}
		}
		--找挑战按钮
		x, y = findColor({953, 320, 1144, 418}, "0|0|0xffffff,127|4|0x84cba5,-1|39|0x31ba94,123|32|0x31be9c",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			local index = math.random(1, 4);
			--随机找一个PK且生成随机坐标,点击目标挑战
			x = math.random(pkList[index].x1, pkList[index].x2);
			y = math.random(pkList[index].y1, pkList[index].y2);
			sysLog("挑战x:"..x.."，y:"..y);
			dhxyUtils_tab.tap(100,x,y);
			return true;
		else
			return false;
		end
	end
	if(width == 1080 and height == 1920) then
		pkList = {
			--{x1=1357,x2=1540,y1=205,y2=235},
			{x1=1357,x2=1540,y1=346,y2=408},
			{x1=1357,x2=1540,y1=522,y2=578},
			{x1=1357,x2=1540,y1=695,y2=755},
			{x1=1357,x2=1540,y1=869,y2=927}
		}
		--找挑战按钮
		x, y = findColor({1316, 664, 1577, 785}, "0|0|0xffffff,191|9|0x73c29c,13|64|0x29c6a4,191|56|0x31b68c",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			local index = math.random(1, 4);
			--随机找一个PK且生成随机坐标,点击目标挑战
			x = math.random(pkList[index].x1, pkList[index].x2);
			y = math.random(pkList[index].y1, pkList[index].y2);
			sysLog("挑战x:"..x.."，y:"..y);
			dhxyUtils_tab.tap(100,x,y);
			return true;
		else
			return false;
		end
	end
end

--切换账号输入账号密码功能
function pubFun_tab.input(width, height, account, pwd) 
	if(width == 720 and height == 1440) then
		--点击账号输入框获取焦点
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(474,241,836,269).x,pubFun_tab.randomXY(474,241,836,269).y);
		mSleep(3000);
		--点击一下别的地方把输入法点掉
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(34,14,260,166).x,pubFun_tab.randomXY(34,14,260,166).y);
		mSleep(3000);
		--清空账号
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(975,244,988,256).x,pubFun_tab.randomXY(975,244,988,256).y);
		--点击一下别的地方把输入法点掉
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(34,14,260,166).x,pubFun_tab.randomXY(34,14,260,166).y);
		mSleep(3000);
		--在输入框中输入字符串并回车
		inputText(account .. "#ENTER#");
		--点击一下别的地方把输入法点掉
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(34,14,260,166).x,pubFun_tab.randomXY(34,14,260,166).y);
		mSleep(3000);
		--点击密码输入框获取焦点
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(474,333,792,362).x,pubFun_tab.randomXY(474,333,792,362).y);
		mSleep(3000);
		--点击一下别的地方把输入法点掉
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(34,14,260,166).x,pubFun_tab.randomXY(34,14,260,166).y);
		mSleep(3000);
		--清空密码
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(906,340,918,353).x,pubFun_tab.randomXY(906,340,918,353).y);
		--点击一下别的地方把输入法点掉
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(34,14,260,166).x,pubFun_tab.randomXY(34,14,260,166).y);
		mSleep(3000);
		--在输入框中输入字符串并回车
		inputText(pwd .. "#ENTER#");
		--点击一下别的地方把输入法点掉
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(34,14,260,166).x,pubFun_tab.randomXY(34,14,260,166).y);
		mSleep(3000);
	end
	if(width == 1080 and height == 1920) then
		--点击账号输入框获取焦点
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(553,335,1126,411).x,pubFun_tab.randomXY(553,335,1126,411).y);
		mSleep(3000);
		--点击一下别的地方把输入法点掉
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(164,23,321,154).x,pubFun_tab.randomXY(164,23,321,154).y);
		mSleep(3000);
		--清空账号
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(1339,364,1363,383).x,pubFun_tab.randomXY(1339,364,1363,383).y);
		--点击一下别的地方把输入法点掉
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(164,23,321,154).x,pubFun_tab.randomXY(164,23,321,154).y);
		mSleep(3000);
		--在输入框中输入字符串并回车
		inputText(account .. "#ENTER#");
		--点击一下别的地方
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(164,23,321,154).x,pubFun_tab.randomXY(164,23,321,154).y);
		mSleep(3000);
		--点击密码输入框获取焦点
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(560,485,1000,554).x,pubFun_tab.randomXY(560,485,1000,554).y);
		mSleep(3000);
		--点击一下别的地方把输入法点掉
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(164,23,321,154).x,pubFun_tab.randomXY(164,23,321,154).y);
		mSleep(3000);
		--清空密码
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(1234,511,1257,531).x,pubFun_tab.randomXY(1234,511,1257,531).y);
		--点击一下别的地方把输入法点掉
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(164,23,321,154).x,pubFun_tab.randomXY(164,23,321,154).y);
		mSleep(3000);
		--在输入框中输入字符串并回车
		inputText(pwd .. "#ENTER#");
		--点击一下别的地方把输入法点掉
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(164,23,321,154).x,pubFun_tab.randomXY(164,23,321,154).y);
		mSleep(3000);
	end
end
--检查是否有登录按钮
function pubFun_tab.isLoginBtn(width, height) 
	if(width == 720 and height == 1440) then
		x, y = findColor({417, 397, 1024, 500}, "0|0|0xfdfffe,555|11|0x35c593,29|48|0x17cba3,546|50|0x17cba3,261|31|0xfeffff,303|30|0xffffff",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({393, 379, 1601, 950}, "0|0|0xfdfffe,839|7|0x4cc798,14|70|0x17caa0,835|70|0x17caa0",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
end
--检测是否有网易邮箱按钮，有的话就点击 
function pubFun_tab.isWYClick(width, height)
	if(width == 720 and height == 1440) then
		x, y = findColor({764, 472, 873, 623}, "0|0|0xffffff,0|-4|0xd41d13,0|26|0xd41d13",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击网易邮箱按钮
			dhxyUtils_tab.tap(300,math.random(x-13, x+16),math.random(y-3, y+25));
		else
			sysLog("没有找到网易邮箱按钮");
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({974, 546, 1425, 1078}, "0|0|0xd41d13,44|6|0xd41d13,-4|35|0xd41d13,37|37|0xd41d13,21|13|0xffffff",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击网易邮箱按钮
			dhxyUtils_tab.tap(300,math.random(x-1, x+41),math.random(y+7, y+49));
		else
			sysLog("没有找到网易邮箱按钮");
		end
	end
end
--寻找切换账号按钮并点击
function pubFun_tab.findSwitchAccountClick(widht, height)
	if(width == 720 and height == 1440) then
		x, y = findColor({33, 94, 1432, 323}, "0|0|0xfb5050,81|-18|0xfb5050,159|14|0xfb5050,75|51|0xfb5050,86|19|0xfb5151",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击换账号按钮
			dhxyUtils_tab.tap(300,math.random(x+16, x+146),math.random(y-8, y+36));
		else
			sysLog("没有找到切换账号按钮");
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({218, 152, 1910, 443}, "0|0|0xfb4f4f,239|8|0xfb4f4f,121|-44|0xfb4f4f,118|59|0xfb4f4f",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击换账号按钮
			dhxyUtils_tab.tap(300,math.random(x+22, x+214),math.random(y-27, y+40));
		else
			sysLog("没有找到切换账号按钮");
		end
	end
end
--寻找其他账号按钮并点击
function pubFun_tab.findOtherAccountClick(widht, height)
	if(width == 720 and height == 1440) then
		x, y = findColor({384, 390, 1134, 661}, "0|0|0xa35b1c,27|-3|0xa35b1b,54|-1|0xad6c31,89|1|0xa35b1b,119|-3|0xaa682c,148|0|0xa76224",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击其他账号按钮
			dhxyUtils_tab.tap(300,math.random(x, x+148),math.random(y-10, y+10));
		else
			sysLog("没有找到其他账号按钮");
		end
	end
	if(width == 1080 and height == 1920) then
		x, y = findColor({732, 576, 1274, 1020}, "0|0|0xa35b1b,70|3|0xa35b1b,97|1|0xa35b1b,140|13|0xa35b1b,180|8|0xa35b1b,234|9|0xa35b1b",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击其他账号按钮
			dhxyUtils_tab.tap(300,math.random(x, x+221),math.random(y-2, y+27));
		else
			sysLog("没有找到其他账号按钮");
		end
	end
end