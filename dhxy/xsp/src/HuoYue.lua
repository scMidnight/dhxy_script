huoyue_funtab1080_1920 = {};
huoyue_funtab720_1440 = {};
require("DhxyUtils");
require("PubFun");

--活跃领奖
function huoyue_funtab720_1440.huoyue(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"活跃领奖",width, height);
	--每个奖励的x坐标
	local jiangliList = {
		{x1=403,x2=451},
		{x1=527,x2=575},
		{x1=651,x2=701},
		{x1=777,x2=826},
		{x1=904,x2=951},
		{x1=1029,x2=1073}
	}
	mSleep(3000);
	--寻找活动并点击30,288,108,370
	local activityTabXY = pubFun_tab.findActivity(width, height);
	if(activityTabXY.isFound) then
		if(pubFun_tab.click(activityTabXY, "活动", math.random(23, 75), math.random(199, 247), "click")) then
			for var = 1,#jiangliList do
				dhxyUtils_tab.doubleClick(0,math.random(jiangliList[var].x1, jiangliList[var].x2),math.random(555, 600));
			end
		end
		pubFun_tab.close(width, height, "活动面板");
		while true do
			--寻找右下角使用并点击
			if(not pubFun_tab.findYouUse(width, height)) then
				break;
			end
		end
		pubFun_tab.showHud(hud,"领奖结束",width, height);
		mSleep(2000);
	else
		pubFun_tab.showHud(hud,"未找到活动",width, height);
		mSleep(2000);
		pubFun_tab.showHud(hud,"领奖结束",width, height);
		mSleep(2000);
	end
	hideHUD(hud);
end

--活跃领奖
function huoyue_funtab1080_1920.huoyue(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"活跃领奖",width, height);
	--每个奖励的x坐标
	local jiangliList = {
		{x1=487,x2=547},
		{x1=674,x2=736},
		{x1=859,x2=926},
		{x1=1047,x2=1113},
		{x1=1236,x2=1302},
		{x1=1421,x2=1491}
	}
	mSleep(3000);
	--寻找活动并点击30,288,108,370
	local activityTabXY = pubFun_tab.findActivity(width, height);
	if(activityTabXY.isFound) then
		if(pubFun_tab.click(activityTabXY, "活动", math.random(30, 108), math.random(288, 370), "click")) then
			for var = 1,#jiangliList do
				dhxyUtils_tab.doubleClick(0,math.random(jiangliList[var].x1, jiangliList[var].x2),math.random(834, 898));
			end
		end
		pubFun_tab.close(width, height, "活动面板");
		while true do
			--寻找右下角使用并点击
			if(not pubFun_tab.findYouUse(width, height)) then
				break;
			end
		end
		pubFun_tab.showHud(hud,"领奖结束",width, height);
		mSleep(2000);
	else
		pubFun_tab.showHud(hud,"未找到活动",width, height);
		mSleep(2000);
		pubFun_tab.showHud(hud,"领奖结束",width, height);
		mSleep(2000);
	end
	hideHUD(hud);
end