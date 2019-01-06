dalisi_funtab1080_1920 = {};
dalisi_funtab720_1440 = {};
require("PubFun");

--720_1440大理寺
function dalisi_funtab720_1440.dalisi(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"大理寺答题",width, height);
	local x, y = 0, 0;
	mSleep(3000);
	--点击世界地图并回家
	pubFun_tab.goHome(width, height, "goHome");
	mSleep(2000);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width, height);
	mSleep(1000);
	--再点一下世界地图
	pubFun_tab.goHome(width, height);
	mSleep(1000);
	--780,238,891,332长安
	dhxyUtils_tab.tap(300,math.random(780, 891),math.random(238, 332));
	mSleep(1000);
	--301,288,372,301大理寺官员
	dhxyUtils_tab.tap(300,math.random(301, 372),math.random(288, 301));
	mSleep(1000);
	--1192,54,1225,86关闭小地图
	dhxyUtils_tab.tap(300,math.random(1192, 1225),math.random(54, 86));
	mSleep(8000);
	--找官员对话框点击第一个选项
	pubFun_tab.dialogBox(width, height, 1);
	mSleep(1000);
	while true do
		--检查是否答题界面,是的话就选择a就可以
		local datiTabXY = pubFun_tab.findDaTi(width, height);
		if(datiTabXY.isFound) then
			pubFun_tab.click(datiTabXY, "大理寺答题", math.random(511, 755), math.random(392, 461), "click");
		else
			--答题完后随便点个位置，把对话框点掉
			pubFun_tab.clickEnd(width, height);
			break;
		end
		mSleep(2000);
	end
	pubFun_tab.showHud(hud,"答题结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end

--1080_1920大理寺
function dalisi_funtab1080_1920.dalisi(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"大理寺答题",width, height);
	local x, y = 0, 0;
	mSleep(3000);
	--点击世界地图并回家
	pubFun_tab.goHome(width, height, "goHome");
	mSleep(2000);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width, height);
	mSleep(1000);
	--再点一下世界地图
	pubFun_tab.goHome(width, height);
	mSleep(1000);
	--1034,369,1163,441长安
	dhxyUtils_tab.tap(300,math.random(1034, 1163),math.random(369, 441));
	mSleep(1000);
	--331,434,410,449大理寺官员
	dhxyUtils_tab.tap(300,math.random(331, 410),math.random(434, 449));
	mSleep(1000);
	--1666,85,1714,129关闭小地图特殊关闭，不调用方法，手动在此关闭
	dhxyUtils_tab.tap(300,math.random(1666, 1714),math.random(85, 129));
	mSleep(8000);
	--找官员对话框点击第一个选项
	pubFun_tab.dialogBox(width, height, 1);
	mSleep(1000);
	while true do
		--检查是否答题界面,是的话就选择a就可以
		local datiTabXY = pubFun_tab.findDaTi(width, height);
		if(datiTabXY.isFound) then
			pubFun_tab.click(datiTabXY, "大理寺答题", math.random(804, 998), math.random(604, 661), "click");
		end
		--答题完后随便点个位置，把对话框点掉
		pubFun_tab.clickEnd(width, height);
		mSleep(2000);
	end
	pubFun_tab.showHud(hud,"答题结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end