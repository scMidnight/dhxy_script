suangua_funtab1080_1920 = {};
suangua_funtab720_1440 = {};
suangua_funtab1080_2160 = {};
require("DhxyUtils");
require("PubFun");

--1080_2160算卦
function suangua_funtab1080_2160.suangua(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"算卦",width, height);
	local x, y = 0, 0;
	local tapXY;
	mSleep(3000);
	--找更多按钮并点击，先找是否反向更多
	if(not pubFun_tab.findNoMore(width, height)) then
		local moreXYTab = pubFun_tab.findMore(width, height);
		tapXY = pubFun_tab.randomXY(2045,976,2117,1039);
		pubFun_tab.click(moreXYTab, "更多", tapXY.x, tapXY.y, "click");
		mSleep(1000);
	end
	--找家园按钮并点击
	local homeXYTab = pubFun_tab.findHome(width, height);
	x, y = homeXYTab.x, homeXYTab.y;
	pubFun_tab.click(homeXYTab, "家园", math.random(x-23, x+44), math.random(y+23, y+89), "click");
	mSleep(2000);
	--点击算卦1314,306,1509,350
	tapXY = pubFun_tab.randomXY(1314,306,1509,350);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	mSleep(1000);
	--点击算一卦1198,806,1399,870
	tapXY = pubFun_tab.randomXY(1198,806,1399,870);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	mSleep(1000);
	--点击摇一摇977,598,1193,663
	tapXY = pubFun_tab.randomXY(977,598,1193,663);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	mSleep(1000);
	--关闭摇一摇界面2076,29,2127,79
	tapXY = pubFun_tab.randomXY(2076,29,2127,79);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	mSleep(1000);
	--关闭算卦界面1660,140,1709,187
	tapXY = pubFun_tab.randomXY(1660,140,1709,187);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	mSleep(1000);
	--再点一下更多，使还原2056,958,2107,1034
	tapXY = pubFun_tab.randomXY(2056,958,2107,1034);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	pubFun_tab.showHud(hud,"算卦结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end

--720_1440算卦
function suangua_funtab720_1440.suangua(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"算卦",width, height);
	local x, y = 0, 0;
	mSleep(3000);
	--找更多按钮并点击，先找是否反向更多
	if(not pubFun_tab.findNoMore(width, height)) then
		local moreXYTab = pubFun_tab.findMore(width, height);
		pubFun_tab.click(moreXYTab, "更多", math.random(1365, 1405), math.random(636, 686), "click");
		mSleep(1000);
	end
	--找家园按钮并点击
	local homeXYTab = pubFun_tab.findHome(width, height);
	x, y = homeXYTab.x, homeXYTab.y;
	pubFun_tab.click(homeXYTab, "家园", math.random(x-18, x+19), math.random(y, y+47), "click");
	mSleep(2000);
	--点击算卦871,204,1016,230
	dhxyUtils_tab.tap(200,math.random(871, 1016),math.random(204, 230));
	mSleep(1000);
	--点击算一卦781,537,944,578
	dhxyUtils_tab.tap(200,math.random(781, 944),math.random(537, 578));
	mSleep(1000);
	--点击摇一摇640,399,803,443
	dhxyUtils_tab.tap(200,math.random(640, 803),math.random(399, 443));
	mSleep(1000);
	--关闭摇一摇界面1384,20,1417,52
	dhxyUtils_tab.tap(200,math.random(1384, 1417),math.random(20, 52));
	mSleep(1000);
	--关闭算卦界面1106,94,1141,124
	dhxyUtils_tab.tap(200,math.random(1106, 1141),math.random(94, 124));
	mSleep(1000);
	--再点一下更多，使还原
	dhxyUtils_tab.tap(200,math.random(1364, 1413),math.random(643, 691));
	pubFun_tab.showHud(hud,"算卦结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end

--1080_1920算卦
function suangua_funtab1080_1920.suangua(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"算卦",width, height);
	local x, y = 0, 0;
	mSleep(3000);
	--找更多按钮并点击，先找是否反向更多
	if(not pubFun_tab.findNoMore(width, height)) then
		local moreXYTab = pubFun_tab.findMore(width, height);
		pubFun_tab.click(moreXYTab, "更多", math.random(1808, 1872), math.random(976, 1040), "click");
		mSleep(1000);
	end
	--找家园按钮并点击
	local homeXYTab = pubFun_tab.findHome(width, height);
	x, y = homeXYTab.x, homeXYTab.y;
	pubFun_tab.click(homeXYTab, "家园", math.random(x-29, x+28), math.random(y+18, y+100), "click");
	mSleep(2000);
	--点击算卦:1185,307,1397,343
	dhxyUtils_tab.tap(200,math.random(1185, 1397),math.random(307, 343));
	mSleep(1000);
	--点击算一卦:1047,807,1295,867
	dhxyUtils_tab.tap(200,math.random(1047, 1295),math.random(807, 867));
	mSleep(1000);
	--点击摇一摇:836,600,1084,660
	dhxyUtils_tab.tap(300,math.random(836, 1084),math.random(600, 660));
	--关闭摇一摇界面:1836,29,1887,77
	dhxyUtils_tab.tap(300,math.random(1836, 1887),math.random(29, 77));
	--关闭算卦界面
	dhxyUtils_tab.tap(300,math.random(1536, 1586),math.random(139, 189));
	--再点一下更多，使还原
	dhxyUtils_tab.tap(200,math.random(1808, 1872),math.random(976, 1040));
	pubFun_tab.showHud(hud,"算卦结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end