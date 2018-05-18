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
		else 
			dhxyUtils_tab.tap(300,x,y);
		end
	else
		sysLog("对不起没有找到"..text);
		toast("对不起没有找到"..text);
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
				--在此点生成x,y（613,384,1257,679）
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
				--在此点生成x,y（613,384,1257,679）
				x = math.random(613,1257);
				y = math.random(384,679);
				dhxyUtils_tab.move(500,x, y, x, (y-165));
			end
		end
	end
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
		x, y = findColor({272, 673, 1083, 908}, "0|0|0xc2b795,-115|13|0xd1945e,-141|88|0xf9cb10,-529|85|0xfafaff",95, 0, 0, 0);
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
		x, y = findColor({389, 661, 1045, 873}, "0|0|0xb1a087,-304|16|0xd29963,-50|90|0xfdeb17,-52|103|0xff5166",95, 0, 0, 0);
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
		point = findColors({959, 298, 1593, 951}, "0|0|0xc5493a,-42|62|0x94756b,-17|37|0xeff3bd,13|41|0xb59e52",95, 0, 0, 0);
		if #point ~= 0 then
			for var = 1,#point do
				x = point[var].x;
				y = point[var].y;
			end
			dhxyUtils_tab.tap(300,math.random((x-33), (x+34)),math.random((y-21), (y+44)));
			return true;
		else
			return false;
		end
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