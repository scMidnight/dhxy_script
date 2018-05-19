huoyue_funtab1080 = {};
require("DhxyUtils");
require("PubFun");

--活跃领奖
function huoyue_funtab1080.huoyue(width)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"活跃领奖",width);
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
	local activityTabXY = pubFun_tab.findActivity(width);
	if(pubFun_tab.click(activityTabXY, "活动", math.random(30, 108), math.random(288, 370), "click")) then
		for var = 1,#jiangliList do
			dhxyUtils_tab.doubleClick(0,math.random(jiangliList[var].x1, jiangliList[var].x2),math.random(834, 898));
		end
	end
	pubFun_tab.close(width, "活动面板");
	while true do
		--寻找右下角使用并点击
		if(not pubFun_tab.findYouUse(width)) then
			break;
		end
	end
	pubFun_tab.showHud(hud,"领奖结束",width);
	mSleep(2000);
	hideHUD(hud);
end