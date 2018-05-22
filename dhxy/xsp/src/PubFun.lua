require("DhxyUtils");
pubFun_tab = {};
--展示hud
function pubFun_tab.showHud(id,text,width)
	if(width == 1080) then
		showHUD(id,text,35,"0xFFFFFFFF","0xFF0000FF",1,-300,-480,260,80);
	end
end
--随机生成x,y
function pubFun_tab.randomXY(x1,x2,y1,y2)
	local xyTab = {};
	xyTab.x = math.random(x1,x2);
	xyTab.y = math.random(y1,y2);
	return xyTab;
end
--寻找包裹
function pubFun_tab.findPackage(width)
	local clickTabXY = {};
	local x, y = 0, 0;
	if(width == 1080) then
		x, y = findColor({1622, 923, 1764, 1059}, "0|0|0xe66471,-38|36|0xe8948e,34|34|0xc76432,28|69|0xd9710a",95, 0, 0, 0)
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
function pubFun_tab.findJingJi(width)
	local x, y = 0, 0;
	if(width == 1080) then
		local point = findColors({1253, 126, 1775, 615}, "0|0|0xa28c73,-10|14|0x90310b,13|14|0x8b300f,34|14|0x99441a,-29|14|0x9c4515",95, 0, 0, 0)
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
function pubFun_tab.isPk(width)
	local x, y = 0, 0;
	if(width == 1080) then
		x, y = findColor({8, 107, 155, 158}, "0|0|0x8c5337,28|4|0x7d422e,57|0|0x7a412c,86|-2|0x7c412d,112|2|0x7e442f",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			dhxyUtils_tab.tap(300,math.random(887, 1138),math.random(366, 553));
			return true;
		else
			return false;
		end
	end
end
--找对对话框
function pubFun_tab.findDialog(width)
	if(width == 1080) then
		x, y = findColor({1219, 597, 1822, 719}, "0|0|0xda9743,-179|44|0xe4ac62,357|39|0xe2a75a,96|87|0xdb9f4d",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
end
--对话框点击 num  1 表示第一个选项  2 是第二个选项
function pubFun_tab.dialogBox(width, num)
	if(width == 1080) then
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
function pubFun_tab.close(width, text)
	local x, y = 0, 0;
	if(width == 1080) then
		x, y = math.random(1637, 1686), math.random(131, 171);
		sysLog("关闭"..text.."x:"..x.."，y:"..y);
		dhxyUtils_tab.tap(300,x,y);
	end
end
--寻找奖励
function pubFun_tab.findJiangli(width)
	local jiangliXYTab = {};
	local x, y = 0, 0;
	if(width == 1080) then
		x, y = findColor({5, 386, 189, 565}, "0|0|0xf6788f,42|7|0xfffefd,80|3|0xd13a5c",95, 0, 0, 0);
	end
	jiangliXYTab.x = x;
	jiangliXYTab.y = y;
	return jiangliXYTab;
end
--寻找更多按钮
function pubFun_tab.findMore(width)
	local moreXYTab = {};
	local x, y = 0, 0;
	if(width == 1080) then
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
function pubFun_tab.findNoMore(width)
	local x, y = 0, 0;
	if(width == 1080) then
		x, y = findColor({1755, 933, 1909, 1063}, "0|0|0xfdfefd,44|1|0x66dba3,-1|44|0x26e8e2,41|43|0x43d4ae",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
end
--寻找家园
function pubFun_tab.findHome(width)
	local homeXYTab = {};
	local x, y = 0, 0;
	if(width == 1080) then
		x, y = findColor({1331, 916, 1625, 1065}, "0|0|0xfffe9d,-13|17|0x9cf1d9,-13|41|0x82f1d3,-53|68|0x3ec58a,47|81|0x54d198",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			homeXYTab.isFound = true;
		else
			homeXYTab.isFound = false;
		end
	end
	homeXYTab.x = x;
	homeXYTab.y = y;
	return homeXYTab;
end
--世界地图根据类型判断是否回家
function pubFun_tab.goHome(width, choice)
	local x, y = 0, 0;
	if(width == 1080) then
		--点击世界地图13,15,109,110
		x, y = math.random(13, 109), math.random(15, 110);
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
--检测答题界面
function pubFun_tab.findDaTi(width) 
	local datiTabXY = {};
	local x, y = 0, 0;
	if(width == 1080) then
		x, y = findColor({361, 608, 1543, 906}, "0|0|0xdb933f,-2|105|0xdc9a40,338|53|0xda8f2f,875|47|0xda963d",95, 0, 0, 0);
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
function pubFun_tab.findActivity(width) 
	local activityTabXY = {};
	local x, y = 0, 0;
	if(width == 1080) then
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
function pubFun_tab.clickBangPai(width)
	local x, y = 0, 0;
	if(width == 1080) then
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
function pubFun_tab.clickShiMen(width)
	local x, y = 0, 0;
	if(width == 1080) then
		for i = 1, 10 do
			x, y = findColor({229, 265, 1627, 790}, "0|0|0x172844,-69|48|0xfcffff,-61|44|0xfaffff,-35|42|0xeef7fb,-34|8|0xf5f8fa,-4|43|0x8eb0ca",95, 0, 0, 0);
			if(x ~= -1 and y ~= -1) then
				dhxyUtils_tab.tap(300,math.random((x+399), (x+513)),math.random((y-15), (y+32)));
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
function pubFun_tab.huan200Click(width)
	local x, y = 0, 0;
	local flag = false;
	if(width == 1080) then
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
function pubFun_tab.buy(width)
	local x, y = 0, 0;
	if(width == 1080) then
		x, y = findColor({1213, 833, 1595, 965}, "0|0|0xfeffff,314|2|0x97d2ad,5|63|0x29c4a5,299|57|0x30b88f",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			dhxyUtils_tab.tap(300,math.random(1250, 1547),math.random(867, 917));
		end
	end
end
--检测帮派结束
function pubFun_tab.bangPaiEnd(width)
	local x, y = 0, 0;
	if(width == 1080) then
		x, y = findColor({93, 740, 962, 865}, "0|0|0xfffbff,376|8|0xf7f7f7,147|3|0xefe3d6",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
end
--检测师门结束
function pubFun_tab.shiMenEnd(width)
	local x, y = 0, 0;
	if(width == 1080) then
		x, y = findColor({93, 740, 962, 865}, "0|0|0xf7db29,-2|14|0xff516b,-138|-1|0xf7ebd6",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
end
--把结束框点掉
function pubFun_tab.clickEnd(width)
	if(width == 1080) then
		dhxyUtils_tab.tap(300,math.random(670, 889),math.random(867, 1039));
	end
end
--活动中测宝图并点击
function pubFun_tab.clickBaoTu(width)
	local x, y = 0, 0;
	if(width == 1080) then
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
function pubFun_tab.findBoxBaoTu(width) 
	local x, y = 0, 0;
	if(width == 1080) then
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
function pubFun_tab.findUse(width)
	local x, y = 0, 0;
	if(width == 1080) then
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
function pubFun_tab.shuang(width)
	if(width == 1080) then
		--寻找活动并点击30,288,108,370
		for i = 1, 2 do
			local activityTabXY = pubFun_tab.findActivity(width);
			pubFun_tab.click(activityTabXY, "活动", math.random(30, 108), math.random(288, 370), "click");
		end
		mSleep(2000);
		--点击两次领取:1440,196,1551,238
		for i = 1, 2 do
			dhxyUtils_tab.tap(300,math.random(1440, 1551),math.random(196, 238));
			mSleep(1000);
		end
		pubFun_tab.close(width, "活动面板");
	end
end
--做天抓鬼是否继续以及查看掉线
function pubFun_tab.isContinue(width)
	local x, y = 0, 0;
	if(width == 1080) then
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
function pubFun_tab.body(width,nTime)
	if(width == 1080) then
		mSleep(5000);
		--判断是否在战斗中
		local isPk = pubFun_tab.isPk(width);
		if (isPk) then
			while true do
				mSleep(2000);
				isPk = pubFun_tab.isPk(width);
				if(not isPk) then
					break;
				end
				nTime = mTime();
			end
		else
			for i =1, 2 do
				--是否继续
				pubFun_tab.isContinue(width);
			end
		end
	end
	return nTime;
end
--查找引妖香
function pubFun_tab.findYinYaoXiang(width)
	local x, y = 0, 0;
	if(width == 1080) then
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
function pubFun_tab.patrol(width, isClick)
	local x, y = 0, 0;
	if(width == 1080) then
		--手机端巡逻
		x, y = findColor({898, 190, 1049, 264}, "0|0|0xdeae6b,56|-30|0xd69e52,61|35|0xd6a25a,129|2|0xdeae6b",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			if(isClick) then
				--点击巡逻：923,207,1024,247
				dhxyUtils_tab.tap(300,math.random(923, 1024),math.random(207, 247));
			end
			return true;
		else
			--模拟器巡逻
			x, y = findColor({1041, 188, 1183, 263}, "0|0|0xe0b26e,72|-27|0xd8a051,66|38|0xd4a159,128|7|0xd9a65e",95, 0, 0, 0);
			if (x ~= -1 and y ~= -1) then
				if(isClick) then
					--点击巡逻：1062,207,1164,247
					dhxyUtils_tab.tap(300,math.random(1062, 1164),math.random(207, 247));
				end
				return true;
			else
				return false;
			end
		end
	end
end
--上交各种物品，召唤兽
function pubFun_tab.shangJiao(width)
	local x, y = 0, 0;
	if(width == 1080) then
		x, y = findColor({1014, 789, 1335, 907}, "0|0|0xffffff,243|10|0x70c297,7|54|0x32b68d,237|51|0x34b58b",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--找玫瑰仙叶
			x, y = findColor({327, 274, 766, 864}, "0|0|0x116926,10|-20|0x93e265,37|-32|0x4ad751",95, 0, 0, 0);
			if(x ~= -1 and y ~= -1) then
				--点击玫瑰仙叶
				dhxyUtils_tab.tap(300,math.random((x-15), (x+62)),math.random((y-47), (y+33)));
			else
				--找千年熊胆
				x, y = findColor({327, 274, 766, 864}, "0|0|0xfce9ca,14|-3|0xfdf1d4,-2|51|0xcb3848,20|8|0xec4e5e",95, 0, 0, 0);
				if(x ~= -1 and y ~= -1) then
					--点击千年熊胆
					dhxyUtils_tab.tap(300,math.random((x-49), (x+41)),math.random((y-20), (y+60)));
				end
			end
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
function pubFun_tab.maiBaobao(width)
	local x, y = 0, 0;
	local flag = false;
	if(width == 1080) then
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
function pubFun_tab.findYouClose(width)
	local x, y = 0, 0;
	if(width == 1080) then
		x, y = findColor({1803, 23, 1902, 120}, "0|0|0xef7173,-4|-25|0xefe3c5,1|21|0xefd2b5",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--1831,47,1875,92点击关闭
			dhxyUtils_tab.tap(300,math.random(1831, 1875),math.random(47, 92));
		end
	end
end
--寻找右下角使用并点击
function pubFun_tab.findYouUse(width)
	local x, y = 0, 0;
	if(width == 1080) then
		x, y = findColor({1320, 550, 1598, 859}, "0|0|0xffffff,133|17|0x52be94,6|37|0x31be94,126|34|0x3abe94",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--1396,777,1526,820点击使用
			dhxyUtils_tab.tap(300,math.random(1396, 1526),math.random(777, 820));
			mSleep(1000);
			pubFun_tab.findYouClose(width);
			return true;
		else
			return false;
		end
	end
end
--查找世界关闭
function pubFun_tab.findShiJieClose(width)
	local x, y = 0, 0;
	if(width == 1080) then
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
--查找竞技场的挑战按钮
function pubFun_tab.findTiaoZhan(width)
	local x, y = 0, 0;
	--选择挑战的目标集合
	local pkList = {};
	if(width == 1080) then
		pkList = {
			{x1=1357,x2=1540,y1=205,y2=235},
			{x1=1357,x2=1540,y1=346,y2=408},
			{x1=1357,x2=1540,y1=522,y2=578},
			{x1=1357,x2=1540,y1=695,y2=755},
			{x1=1357,x2=1540,y1=869,y2=927}
		}
		--找挑战按钮
		x, y = findColor({1316, 664, 1577, 785}, "0|0|0xffffff,191|9|0x73c29c,13|64|0x29c6a4,191|56|0x31b68c",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			local index = math.random(1, 5);
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