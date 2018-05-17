qiandao_funtab1080 = {};
require("DhxyUtils");
require("PubFun");

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