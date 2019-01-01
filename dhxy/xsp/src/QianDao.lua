qiandao_funtab1080 = {};
qiandao_funtab720 = {};
require("DhxyUtils");
require("PubFun");

--签到720
function qiandao_funtab720.qiandao(width)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"签到",width);
	mSleep(3000);
	--获得奖励xy坐标并点击奖励
	local jiangliXYTab = pubFun_tab.findJiangli(width);
	pubFun_tab.click(jiangliXYTab, "奖励", math.random(jiangliXYTab.x-20, jiangliXYTab.x+23), math.random(jiangliXYTab.y-3, jiangliXYTab.y+35), "click");
	mSleep(1000);
	--直接点击第一个每日签到不查找
	dhxyUtils_tab.tap(200,math.random(150, 350),math.random(315, 375));
	mSleep(3000);
	--直接点击第一个牌
	dhxyUtils_tab.tap(200,math.random(630, 750),math.random(165, 315));
	mSleep(1000);
	--关闭窗口
	dhxyUtils_tab.tap(200,math.random(1183, 1204),math.random(107, 133));
	--找确定按钮
	if(pubFun_tab.isOk(width)) then
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
	pubFun_tab.showHud(hud,"签到结束",width);
	mSleep(2000);
	hideHUD(hud);
end

--签到1080
function qiandao_funtab1080.qiandao(width)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"签到",width);
	mSleep(2000);
	--获得奖励xy坐标并点击奖励
	local jiangliXYTab = pubFun_tab.findJiangli(width);
	pubFun_tab.click(jiangliXYTab, "奖励", math.random(33, 103), math.random(445, 512), "click");
	--休息一秒
	mSleep(1000);
	--直接点击第一个每日签到不查找
	dhxyUtils_tab.tap(300,math.random(224, 511),math.random(474, 558));
	--休息2秒
	mSleep(2000);
	--直接点关闭签到关闭特殊，单独做
	dhxyUtils_tab.tap(300,math.random(1647, 1690),math.random(159, 196));
	pubFun_tab.showHud(hud,"签到结束",width);
	mSleep(1000);
	hideHUD(hud);
end