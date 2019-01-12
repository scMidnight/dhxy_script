qiandao_funtab1080_1920 = {};
qiandao_funtab720_1440 = {};
qiandao_funtab1080_2160 = {};
require("DhxyUtils");
require("PubFun");

--签到1080_2160
function qiandao_funtab1080_2160.qiandao(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"签到",width, height);
	mSleep(3000);
	local tapXY;
	--获得奖励xy坐标并点击奖励
	local jiangliXYTab = pubFun_tab.findJiangli(width, height);
	pubFun_tab.click(jiangliXYTab, "奖励", math.random(jiangliXYTab.x-41, jiangliXYTab.x+41), math.random(jiangliXYTab.y-18, jiangliXYTab.y+55), "click");
	mSleep(2000);
	--直接点击第一个每日签到不查找
	tapXY = pubFun_tab.randomXY(224,476,517,557);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	mSleep(5000);
	--直接点击第一个牌
	tapXY = pubFun_tab.randomXY(958,284,1116,462);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	mSleep(2000);
	--关闭窗口
	tapXY = pubFun_tab.randomXY(1768,160,1811,198);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	--找确定按钮 
	if(pubFun_tab.isContinue(width, height)) then
		--找到了说明卡包满了，点取消
		tapXY = pubFun_tab.randomXY(748,673,992,726);
		dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
		mSleep(1000);
		--再点第一个奖励领取掉空出卡包
		tapXY = pubFun_tab.randomXY(552,261,792,355);
		dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
		mSleep(1000);
		--点击后点兑换奖励
		tapXY = pubFun_tab.randomXY(1034,706,1292,764);
		dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
		mSleep(1000);
		--再点兑换
		tapXY = pubFun_tab.randomXY(1254,825,1496,883);
		dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
		mSleep(5000);
		--直接点击第一个牌
		tapXY = pubFun_tab.randomXY(958,284,1116,462);
		dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
		mSleep(1000);
		--关闭窗口
		tapXY = pubFun_tab.randomXY(1768,160,1811,198);
		dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	end
	pubFun_tab.showHud(hud,"签到结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end

--签到720_1440
function qiandao_funtab720_1440.qiandao(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"签到",width, height);
	mSleep(3000);
	--获得奖励xy坐标并点击奖励
	local jiangliXYTab = pubFun_tab.findJiangli(width, height);
	pubFun_tab.click(jiangliXYTab, "奖励", math.random(jiangliXYTab.x-20, jiangliXYTab.x+23), math.random(jiangliXYTab.y-3, jiangliXYTab.y+35), "click");
	mSleep(2000);
	--直接点击第一个每日签到不查找
	dhxyUtils_tab.tap(200,math.random(150, 350),math.random(315, 375));
	mSleep(5000);
	--直接点击第一个牌
	dhxyUtils_tab.tap(200,math.random(630, 750),math.random(165, 315));
	mSleep(2000);
	--关闭窗口
	dhxyUtils_tab.tap(200,math.random(1183, 1204),math.random(107, 133));
	--找确定按钮
	if(pubFun_tab.isOk(width, height)) then
		--找到了说明卡包满了，点取消523,444,645,486
		dhxyUtils_tab.tap(200,math.random(523, 645),math.random(444, 486));
		mSleep(1000);
		--再点第一个奖励领取掉空出卡包391,172,523,230
		dhxyUtils_tab.tap(200,math.random(391, 523),math.random(172, 230));
		mSleep(1000);
		--点击后点兑换奖励711,471,854,506
		dhxyUtils_tab.tap(200,math.random(711, 854),math.random(471, 506));
		mSleep(1000);
		--再点兑换856,547,986,588
		dhxyUtils_tab.tap(200,math.random(856, 986),math.random(547, 588));
		mSleep(5000);
		--直接点击第一个牌
		dhxyUtils_tab.tap(200,math.random(630, 750),math.random(165, 315));
		mSleep(1000);
		--关闭窗口
		dhxyUtils_tab.tap(200,math.random(1183, 1204),math.random(107, 133));
	end
	pubFun_tab.showHud(hud,"签到结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end

--签到1080_1920
function qiandao_funtab1080_1920.qiandao(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"签到",width, height);
	mSleep(3000);
	--获得奖励xy坐标并点击奖励
	local jiangliXYTab = pubFun_tab.findJiangli(width, height);
	pubFun_tab.click(jiangliXYTab, "奖励", math.random(33, 103), math.random(445, 512), "click");
	--休息一秒
	mSleep(2000);
	--直接点击第一个每日签到不查找
	dhxyUtils_tab.tap(300,math.random(224, 511),math.random(474, 558));
	mSleep(5000);
	--直接点击第一个牌817,258,1015,502
	dhxyUtils_tab.tap(200,math.random(817, 1015),math.random(258, 502));
	mSleep(2000);
	--关闭窗口
	dhxyUtils_tab.tap(300,math.random(1647, 1690),math.random(159, 196));
	--找确定按钮
	if(pubFun_tab.isOk(width, height)) then
		--找到了说明卡包满了，点取消615,672,883,727
		dhxyUtils_tab.tap(200,math.random(615, 883),math.random(672, 727));
		mSleep(1000);
		--再点第一个奖励领取掉空出卡包418,260,678,366
		dhxyUtils_tab.tap(200,math.random(418, 678),math.random(260, 366));
		mSleep(1000);
		--点击后点兑换奖励903,709,1175,767
		dhxyUtils_tab.tap(200,math.random(903, 1175),math.random(709, 767));
		mSleep(1000);
		--再点兑换1129,820,1378,883
		dhxyUtils_tab.tap(200,math.random(1129, 1378),math.random(820, 883));
		mSleep(5000);
		--直接点击第一个牌817,258,1015,502
		dhxyUtils_tab.tap(200,math.random(817, 1015),math.random(258, 502));
		mSleep(1000);
		--关闭窗口
		dhxyUtils_tab.tap(300,math.random(1647, 1690),math.random(159, 196));
	end
	pubFun_tab.showHud(hud,"签到结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end