suangua_funtab1080 = {};
suangua_funtab720 = {};
require("DhxyUtils");
require("PubFun");

--720算卦
function suangua_funtab720.suangua(width)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"算卦",width);
	local x, y = 0, 0;
	mSleep(3000);
	--找更多按钮并点击
	local moreXYTab = pubFun_tab.findMore(width);
	pubFun_tab.click(moreXYTab, "更多", math.random(1365, 1405), math.random(636, 686), "click");
	mSleep(1000);
	--找家园按钮并点击
	local homeXYTab = pubFun_tab.findHome(width);
	x, y = homeXYTab.x, homeXYTab.y;
	pubFun_tab.click(moreXYTab, "家园", math.random(x-18, x+19), math.random(y, y+47), "click");
	mSleep(2000);
	--点击算卦871,204,1016,230
	dhxyUtils_tab.tap(200,math.random(871, 1016),math.random(204, 230));
	mSleep(500);
	--点击算一卦781,537,944,578
	dhxyUtils_tab.tap(200,math.random(781, 944),math.random(537, 578));
	mSleep(500);
	--点击摇一摇640,399,803,443
	dhxyUtils_tab.tap(200,math.random(640, 803),math.random(399, 443));
	mSleep(500);
	--关闭摇一摇界面1384,20,1417,52
	dhxyUtils_tab.tap(200,math.random(1384, 1417),math.random(20, 52));
	mSleep(500);
	--关闭算卦界面1106,94,1141,124
	dhxyUtils_tab.tap(200,math.random(1106, 1141),math.random(94, 124));
	mSleep(500);
	--再点一下更多，使还原
	dhxyUtils_tab.tap(200,math.random(1364, 1413),math.random(643, 691));
	pubFun_tab.showHud(hud,"算卦结束",width);
	mSleep(2000);
	hideHUD(hud);
end

--1080算卦
function suangua_funtab1080.suangua(width)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"算卦",width);
	local x, y = 0, 0;
	mSleep(2000);
	--找更多按钮并点击
	local moreXYTab = pubFun_tab.findMore(width);
	pubFun_tab.click(moreXYTab, "更多", math.random(1808, 1872), math.random(976, 1040), "click");
	--找家园按钮并点击
	local homeXYTab = pubFun_tab.findHome(width);
	x, y = homeXYTab.x, homeXYTab.y;
	pubFun_tab.click(homeXYTab, "家园", math.random(x-29, x+28), math.random(y+18, y+100), "click");
	--休息2秒
	mSleep(2000);
	--算卦按钮是固定的，不需要找打开界面直接点1080坐标:1185,307,1397,343
	dhxyUtils_tab.tap(200,math.random(1185, 1397),math.random(307, 343));
	--休息2秒
	mSleep(2000);
	--算一卦按钮是固定的，不需要找打开界面直接点1080坐标:1047,807,1295,867
	dhxyUtils_tab.tap(200,math.random(1047, 1295),math.random(807, 867));
	mSleep(2000);
	--摇一摇按钮是固定的，不需要找打开界面直接点1080坐标:836,600,1084,660
	dhxyUtils_tab.tap(300,math.random(836, 1084),math.random(600, 660));
	--关闭摇一摇界面1080坐标:1836,29,1887,77
	dhxyUtils_tab.tap(300,math.random(1836, 1887),math.random(29, 77));
	--关闭卦签(算一卦)界面，此关闭较特殊，单独处理
	dhxyUtils_tab.tap(300,math.random(1536, 1586),math.random(139, 189));
	pubFun_tab.showHud(hud,"算卦结束",width);
	--再点一下更多，使还原
	dhxyUtils_tab.tap(200,math.random(1808, 1872),math.random(976, 1040));
	hideHUD(hud);
end