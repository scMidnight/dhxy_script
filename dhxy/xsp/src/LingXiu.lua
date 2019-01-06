lingxiu_funtab1080_1920 = {};
lingxiu_funtab720_1440 = {};
require("DhxyUtils");
require("PubFun");

--720_1440灵修
function lingxiu_funtab720_1440.lingxiu(lType, choice, width, height, zhaohuanShou) 
	local hud = createHUD();
	pubFun_tab.showHud(hud,"灵修",width, height);
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
	--管家按钮是固定的，不需要找打开界面直接点720坐标:878,475,1004,510
	dhxyUtils_tab.tap(200,math.random(878, 1004),math.random(475, 510));
	--休息5秒
	mSleep(5000);
	--召唤兽灵修按钮，对话框点击第一个
	pubFun_tab.dialogBox(width, height, 1);
	if(lType == "宝宝") then
		if(choice == "经验") then
			--点击经验572,130,701,165
			dhxyUtils_tab.tap(200,math.random(572, 701),math.random(130, 165));
		elseif(choice == "亲密") then
			--点击亲密747,129,870,165
			dhxyUtils_tab.tap(200,math.random(747, 870),math.random(129, 165));
		end
	elseif(lType == "坐骑") then
		--点击坐骑1186,320,1222,412
		dhxyUtils_tab.tap(200,math.random(1186, 1222),math.random(320, 412));
	end
	--判断第几个召唤兽灵修
	if(zhaohuanShou == "0") then
		--点击第一个:342,137,524,210
		dhxyUtils_tab.tap(200,math.random(342, 524),math.random(137, 210));
	elseif(zhaohuanShou == "1") then
		--点击第二个:346,249,531,323
		dhxyUtils_tab.tap(200,math.random(346, 531),math.random(249, 323));
	elseif(zhaohuanShou == "2") then
		--点击第三个:343,358,534,435
		dhxyUtils_tab.tap(200,math.random(343, 534),math.random(358, 435));
	elseif(zhaohuanShou == "3") then
		--点击第四个:342,471,533,547
		dhxyUtils_tab.tap(200,math.random(342, 533),math.random(471, 547));
	end
	--点击开始:773,594,951,636
	dhxyUtils_tab.tap(200,math.random(773, 951),math.random(594, 636));
	mSleep(1000);
	--关闭灵修对话框
	pubFun_tab.close(width, height, "灵修对话框");
	--再点一下更多，使还原
	dhxyUtils_tab.tap(200,math.random(1364, 1413),math.random(643, 691));
	pubFun_tab.showHud(hud,"灵修结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end

--1080_1920灵修
function lingxiu_funtab1080_1920.lingxiu(lType, choice, width, height, zhaohuanShou)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"召唤兽灵修",width, height);
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
	--休息2秒
	mSleep(2000);
	--管家按钮是固定的，不需要找打开界面直接点1080坐标:1193,714,1387,761
	dhxyUtils_tab.tap(200,math.random(1193, 1387),math.random(714, 761));
	--休息5秒
	mSleep(5000);
	--召唤兽灵修按钮，对话框点击第一个
	pubFun_tab.dialogBox(width, height, 1);
	if(lType == "宝宝") then
		if(choice == "经验") then
			--点击经验741,196,932,254
			dhxyUtils_tab.tap(200,math.random(741, 932),math.random(196, 254));
		elseif(choice == "亲密") then
			--点击亲密996,195,1187,252
			dhxyUtils_tab.tap(200,math.random(996, 1187),math.random(195, 252));
		end
	elseif(lType == "坐骑") then
		--点击坐骑1653,486,1715,617
		dhxyUtils_tab.tap(200,math.random(1653, 1715),math.random(486, 617));
	end
	--判断第几个召唤兽灵修
	if(zhaohuanShou == "0") then
		--点击第一个1080坐标:393,214,659,306
		dhxyUtils_tab.tap(200,math.random(393, 659),math.random(214, 306));
	elseif(zhaohuanShou == "1") then
		--点击第二个1080坐标:399,380,665,476
		dhxyUtils_tab.tap(200,math.random(399, 665),math.random(380, 476));
	elseif(zhaohuanShou == "2") then
		--点击第三个1080坐标:398,546,670,647
		dhxyUtils_tab.tap(200,math.random(398, 670),math.random(546, 647));
	elseif(zhaohuanShou == "3") then
		--点击第四个1080坐标:398,717,671,807
		dhxyUtils_tab.tap(200,math.random(398, 671),math.random(717, 807));
	end
	--点击开始1080坐标:1039,894,1306,950
	dhxyUtils_tab.tap(200,math.random(1039, 1306),math.random(894, 950));
	mSleep(1000);
	--关闭灵修对话框
	pubFun_tab.close(width, height, "灵修对话框");
	--再点一下更多，使还原
	dhxyUtils_tab.tap(200,math.random(1808, 1872),math.random(976, 1040));
	pubFun_tab.showHud(hud,"召唤兽灵修结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end