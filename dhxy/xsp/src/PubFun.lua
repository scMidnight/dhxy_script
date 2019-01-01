require("DhxyUtils");
pubFun_tab = {};
--展示hud
function pubFun_tab.showHud(id,text,width)
	if(width == 720) then
		showHUD(id, text, 30, "0xFFFFFFFF","0xFF0000FF",1,-230,-290,180,60);
	end
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
	if(width == 720) then
		x, y = findColor({1246, 618, 1342, 709}, "0|0|0x9c2c31,-25|5|0xefd37b,25|5|0xefd384,22|50|0xce3c31,-21|27|0xfffff7",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			clickTabXY.isFound = true;
		else
			clickTabXY.isFound = false;
		end
	end
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
	if(width == 720) then
		local point = findColors({967, 98, 1023, 404}, "0|0|0xffffff,10|-1|0xfffbee,14|-1|0xefc339,7|6|0xf7d339,5|18|0xfffbde",95, 0, 0, 0);
		if #point ~= 0 then
			for var = 1,#point do
				x = point[var].x;
				y = point[var].y;
			end
		end
	end
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
function pubFun_tab.isPk(width, isClick)
	local x, y = 0, 0;
	if(width == 720) then
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
	if(width == 1080) then
		x, y = findColor({8, 107, 155, 158}, "0|0|0x8c5337,28|4|0x7d422e,57|0|0x7a412c,86|-2|0x7c412d,112|2|0x7e442f",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			if(isClick ~= "jingJi") then
				dhxyUtils_tab.tap(300,math.random(887, 1138),math.random(366, 553));
			end
			return true;
		else
			return false;
		end
	end
end
--找对对话框
function pubFun_tab.findDialog(width)
	if(width == 720) then 
		x, y = findColor({980, 400, 1357, 484}, "0|0|0xe7aa5a,145|-27|0xd68a32,358|-2|0xde963a,185|31|0xde963a",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
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
	if(width == 720) then
		if(num == 1) then
			dhxyUtils_tab.tap(300,math.random(1002, 1337),math.random(418, 461));
		elseif(num == 2) then
			dhxyUtils_tab.tap(300,math.random(1003, 1334),math.random(495, 535));
		end
	end
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
	if(width == 720) then
		x, y = math.random(1172, 1204), math.random(83, 114);
		sysLog("关闭"..text.."x:"..x.."，y:"..y);
		dhxyUtils_tab.tap(300,x,y);
	end
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
	if(width == 720) then
		x, y = findColor({8, 271, 97, 354}, "0|0|0xffffff,5|-21|0xefbe4a,9|23|0xde5584",95, 0, 0, 0);
	end
	jiangliXYTab.x = x;
	jiangliXYTab.y = y;
	return jiangliXYTab;
end
--寻找更多按钮
function pubFun_tab.findMore(width)
	local moreXYTab = {};
	local x, y = 0, 0;
	if(width == 720) then
		x, y = findColor({1355, 619, 1429, 702}, "0|0|0x31867b,12|-26|0xffffff,17|4|0x42d3ad,36|-1|0x42d3ad,18|19|0x29e7de",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			moreXYTab.isFound = true;
		else
			moreXYTab.isFound = false;
		end
	end
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
	if(width == 720) then
		x, y = findColor({1048, 614, 1236, 708}, "0|0|0x94f3de,-10|17|0x7befce,-8|29|0xf79e6b,32|43|0x4acb94,-30|37|0x42c78c",95, 0, 0, 0);
	end
	if(width == 1080) then
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
function pubFun_tab.goHome(width, choice)
	local x, y = 0, 0;
	if(width == 720) then
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
--检测是否200环答题
function pubFun_tab.findDaTi200(width)
	local datiTabXY = {};
	local x, y = 0, 0;
	if(width == 720) then
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
--检测答题界面
function pubFun_tab.findDaTi(width) 
	local datiTabXY = {};
	local x, y = 0, 0;
	if(width == 720) then
		x, y = findColor({168, 90, 1263, 689}, "0|0|0xc6fbb5,857|145|0xd6ffc6,774|401|0x63869c,845|385|0xb5dbb5,938|398|0x637994",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			datiTabXY.isFound = true;
		else
			datiTabXY.isFound = false;
		end
	end
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
	if(width == 720) then
		x, y = findColor({5, 179, 92, 260}, "0|0|0xffebc6,18|7|0xf7dbd6,35|-2|0xf7ffef,46|-1|0xad2c31,58|-1|0xffffff",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			activityTabXY.isFound = true;
		else
			activityTabXY.isFound = false;
		end
	end
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
	if(width == 720) then
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
	if(width == 720) then
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
	if(width == 720) then
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
	if(width == 720) then
		x, y = findColor({894, 559, 1138, 629}, "0|0|0xf7ffff,206|4|0x8ccfa5,-2|40|0x31ba94,202|38|0x31ba8c",95, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			dhxyUtils_tab.tap(300,math.random(911, 1119),math.random(572, 613));
		end
	end
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
	if(width == 720) then
		x, y = findColor({286, 444, 859, 582}, "0|0|0xf7fbff,242|5|0xfff721,253|7|0xfffff6,259|6|0xffef10,512|-56|0xb5a68c",92, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
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
	if(width == 720) then
		x, y = findColor({593, 444, 888, 580}, "0|0|0x000000,5|0|0xf7db18,9|0|0x000808,3|8|0xef5163,202|-59|0xb5a294",90, 0, 0, 0);
		if(x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
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
	if(width == 720) then
		dhxyUtils_tab.tap(300,math.random(514, 713),math.random(553, 650));
	end
	if(width == 1080) then
		dhxyUtils_tab.tap(300,math.random(670, 889),math.random(867, 1039));
	end
end
--活动中检测宝图并点击
function pubFun_tab.clickBaoTu(width)
	local x, y = 0, 0;
	if(width == 720) then
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
	if(width == 720) then
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
	if(width == 720) then
		x, y = findColor({864, 215, 1059, 482}, "0|0|0xf7ffff,112|2|0x8ccfad,6|34|0x29ae8c,110|36|0x31b694",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击使用:893,254,1004,294
			dhxyUtils_tab.tap(300,math.random(893, 1004),math.random(254, 294));
			return true;
		else
			return false;
		end
	end
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
	if(width == 720) then
		--寻找活动并点击30,288,108,370 
		local activityTabXY = pubFun_tab.findActivity(width);
		pubFun_tab.click(activityTabXY, "活动", math.random(23, 75), math.random(199, 247), "click");
		mSleep(3000);
		--点击两次领取:1042,129,1118,158
		dhxyUtils_tab.doubleClick(300,math.random(1042, 1118),math.random(129, 158));
		mSleep(1000);
		pubFun_tab.close(width, "活动面板");
	end
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
--找签到确定按钮
function pubFun_tab.isOk(width)
	if(width == 720) then
		x, y = findColor({699, 409, 1026, 527}, "0|0|0x63be9c,98|-3|0x73c39c,-1|22|0x31ba8c,94|22|0x31ba94",90, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			return true;
		else
			return false;
		end
	end
end
--做天抓鬼是否继续以及查看掉线
function pubFun_tab.isContinue(width)
	local x, y = 0, 0;
	if(width == 720) then
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
	mSleep(5000);
	if(width == 720) then
		--判断是否在战斗中
		local isPk = pubFun_tab.isPk(width);
		if(isPk) then
			while true do
				mSleep(2000);
				isPk = pubFun_tab.isPk(width);
				if(not isPk) then
					break;
				end
				nTime = mTime();
			end
		end
		--点击领悟技能知道了
		if(pubFun_tab.findLingWu(width)) then
			nTime = mTime();
		end
		--是否继续后30轮
		if(pubFun_tab.isContinue(width)) then
			nTime = mTime();
		end
	end
	if(width == 1080) then
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
			--点击领悟技能知道了
			if(pubFun_tab.findLingWu(width)) then
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
	if(width == 720) then
		x, y = findColor({725, 201, 1147, 581}, "0|0|0xfff7ee,20|-20|0x212019,26|-14|0xcec3b5",90, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击引妖香:736,208,798,276
			dhxyUtils_tab.tap(300,math.random((x-13), (x+49)),math.random((y-30), (y+38)));
			return true;
		else
			return false;
		end
	end
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
	if(width == 720) then
		--手机端巡逻
		if(isClick) then
			--点击巡逻：696,133,765,164
			dhxyUtils_tab.tap(300,math.random(696, 765),math.random(133, 164));
		end
	end
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
	if(width == 720) then
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
	if(width == 720) then
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
--寻找传闻卡确定按钮
function pubFun_tab.findCard(width) 
	local x, y = 0, 0;
	if(width == 720) then
		x, y = findColor({814, 550, 1046, 628}, "0|0|0xffffff,183|7|0x73c39c,5|34|0x31ae84,169|35|0x29ba94",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击确定834,563,1021,605
			dhxyUtils_tab.tap(300,math.random(834, 1021),math.random(563, 605));
		end
	end
end
--寻找右下角使用并点击
function pubFun_tab.findYouUse(width)
	local x, y = 0, 0;
	if(width == 720) then
		x, y = findColor({1080, 509, 1197, 555}, "0|0|0xf7fbf7,90|1|0x94cba5,4|22|0x31be9c,88|21|0x39ba94",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--1091,517,1180,548点击使用
			dhxyUtils_tab.tap(300,math.random(1091, 1180),math.random(517, 548));
			mSleep(1000);
			pubFun_tab.findCard(width);
			return true;
		else
			return false;
		end
	end
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
	sysLog(width);
	if(width == 720) then
		x, y = findColor({1378, 3, 1435, 60}, "0|0|0xe77173,16|0|0xe77173,8|7|0xef716b",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--关闭右上角世界界面:1390,18,1423,46
			dhxyUtils_tab.tap(300,math.random(1390, 1423),math.random(18, 46));
			return true;
		else
			return false;
		end
	end
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
--查找是否领悟技能对话框
function pubFun_tab.findLingWu(width)
	local x, y = 0, 0;
	if(width == 720) then
		x, y = findColor({755, 431, 971, 505}, "0|0|0xffffff,170|6|0x84c79c,6|38|0x31b68c,159|35|0x31ba94",95, 0, 0, 0);
		if (x ~= -1 and y ~= -1) then
			--点击769,443,951,486知道了
			dhxyUtils_tab.tap(300,math.random(769, 951),math.random(443, 486));
			return true;
		else
			return false;
		end
	end
	if(width == 1080) then
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
function pubFun_tab.findTiaoZhan(width)
	local x, y = 0, 0;
	--选择挑战的目标集合
	local pkList = {};
	if(width == 720) then
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
	if(width == 1080) then
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