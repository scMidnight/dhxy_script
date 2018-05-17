lingxiu_funtab1080 = {};
require("DhxyUtils");
require("PubFun");

--1080灵修
function lingxiu_funtab1080.lingxiu(choice,width,zhaohuanShou)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"召唤兽灵修",width);
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
	--管家按钮是固定的，不需要找打开界面直接点1080坐标:1193,714,1387,761
	dhxyUtils_tab.tap(200,math.random(1193, 1387),math.random(714, 761));
	--休息5秒
	mSleep(5000);
	--召唤兽灵修按钮，对话框点击第一个
	pubFun_tab.dialogBox(width, 1);
	--休息2秒
	mSleep(2000);
	--判断灵修经验还是亲密
	if(choice == "经验") then
		--点击经验1080坐标:1655,288,1715,398
		dhxyUtils_tab.tap(200,math.random(1655, 1715),math.random(288, 398));
	elseif(choice == "亲密") then
		--点击亲密1655,489,1715,619
		dhxyUtils_tab.tap(200,math.random(1655, 1715),math.random(489, 619));
	end
	--判断第几个召唤兽灵修
	if(zhaohuanShou == "0") then
		--点击第一个1080坐标:390,238,685,341
		dhxyUtils_tab.tap(200,math.random(390, 680),math.random(238, 341));
	elseif(zhaohuanShou == "1") then
		--点击第二个1080坐标:390,410,680,500
		dhxyUtils_tab.tap(200,math.random(390, 680),math.random(410, 500));
	elseif(zhaohuanShou == "2") then
		--点击第三个1080坐标:390,570,680,670
		dhxyUtils_tab.tap(200,math.random(390, 680),math.random(570, 670));
	end
	--点击开始1080坐标:1033,868,1310,925
	dhxyUtils_tab.tap(200,math.random(1033, 1310),math.random(868, 925));
	mSleep(1000);
	--关闭灵修对话框
	pubFun_tab.close(width, "灵修对话框");
	pubFun_tab.showHud(hud,"召唤兽灵修结束",width);
	--再点一下更多，使还原
	dhxyUtils_tab.tap(200,math.random(1808, 1872),math.random(976, 1040));
	hideHUD(hud);
end