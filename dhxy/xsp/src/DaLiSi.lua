dalisi_funtab1080 = {};
require("PubFun");

--1080大理寺
function dalisi_funtab1080.dalisi(width)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"大理寺答题",width);
	local x, y = 0, 0;
	mSleep(2000);
	--点击世界地图并回家
	pubFun_tab.goHome(width, "goHome");
	mSleep(1000);
	pubFun_tab.goHome(width);
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
	pubFun_tab.dialogBox(width, 1);
	mSleep(1000);
	local answerNum = 0;--回答次数
	while true do
		if(answerNum == 10) then
			pubFun_tab.showHud(hud,"答题结束",width);
			--答题完后随便点个位置，把对话框点掉
			pubFun_tab.clickEnd(width);
			break;
		end
		--检查是否答题界面,是的话就选择a就可以
		local datiTabXY = pubFun_tab.findDaTi(width);
		pubFun_tab.click(datiTabXY, "大理寺答题", math.random(432, 900), math.random(635, 707), "click");
		answerNum = answerNum + 1;
		mSleep(2000);
	end
	hideHUD(hud);
end