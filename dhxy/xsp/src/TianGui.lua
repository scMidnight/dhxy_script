tiangui_funtab1080 = {};
tiangui_funtab720 = {};
require("DhxyUtils");
require("PubFun");

--720抓鬼
function tiangui_funtab720.gui(width)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"抓鬼",width);
	local x, y = 0, 0;
	mSleep(3000);
	--领双
	pubFun_tab.shuang(width);
	mSleep(2000);
	--点击世界地图并回家
	pubFun_tab.goHome(width, "goHome");
	mSleep(2000);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width);
	mSleep(2000);
	--再点一下世界地图
	pubFun_tab.goHome(width);
	mSleep(2000);
	--点击地府：1078,508,1152,539
	dhxyUtils_tab.tap(300,math.random(1078, 1152),math.random(508, 539));
	mSleep(2000);
	--434,534,468,548钟馗
	dhxyUtils_tab.tap(300,math.random(434, 468),math.random(534, 548));
	mSleep(2000);
	--1126,54,1159,88关闭小地图特殊关闭，不调用方法，手动在此关闭
	dhxyUtils_tab.tap(300,math.random(1126, 1159),math.random(54, 88));
	--休息10s
	mSleep(10000);
	--找对话框
	local isDialog = pubFun_tab.findDialog(width);
	if (isDialog) then
		--点对话框第一个选项
		pubFun_tab.dialogBox(width, 1);
		--判断是否在战斗中
		local nTime = mTime();--记录一个时间
		while true do
			nTime = pubFun_tab.body(width, nTime);
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 120) then
				break;
			end
		end
	end
	pubFun_tab.showHud(hud,"抓鬼结束",width);
	mSleep(2000);
	hideHUD(hud);
end

--720天
function tiangui_funtab720.tian(width)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"做天",width);
	local x, y = 0, 0;
	mSleep(3000);
	--领双
	pubFun_tab.shuang(width);
	mSleep(2000);
	--点击世界地图并回家
	pubFun_tab.goHome(width, "goHome");
	mSleep(2000);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width);
	mSleep(2000);
	--再点一下世界地图
	pubFun_tab.goHome(width);
	mSleep(2000);
	--点击天宫：345,10,417,74
	dhxyUtils_tab.tap(300,math.random(345, 417),math.random(10, 74));
	mSleep(2000);
	--661,309,695,323李靖
	dhxyUtils_tab.tap(300,math.random(661, 695),math.random(309, 323));
	--1053,55,1089,86关闭小地图特殊关闭，不调用方法，手动在此关闭
	dhxyUtils_tab.tap(300,math.random(1053, 1089),math.random(55, 86));
	--休息10s
	mSleep(10000);
	--找对话框
	local isDialog = pubFun_tab.findDialog(width);
	if (isDialog) then
		--点对话框第一个选项
		pubFun_tab.dialogBox(width, 1);
		--判断是否在战斗中
		local nTime = mTime();--记录一个时间
		while true do
			nTime = pubFun_tab.body(width, nTime);
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 120) then
				break;
			end
		end
	end
	pubFun_tab.showHud(hud,"做天结束",width);
	mSleep(2000);
	hideHUD(hud);
end

--1080抓鬼
function tiangui_funtab1080.gui(width)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"抓鬼",width);
	local x, y = 0, 0;
	mSleep(1000);
	--领双
	pubFun_tab.shuang(width);
	mSleep(1000);
	--点击世界地图并回家
	pubFun_tab.goHome(width, "goHome");
	mSleep(2000);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width);
	mSleep(1000);
	--再点一下世界地图
	pubFun_tab.goHome(width);
	mSleep(1000);
	--点击地府：1514,782,1565,938
	dhxyUtils_tab.tap(300,math.random(1514, 1565),math.random(782, 938));
	mSleep(1000);
	--531,803,579,823钟馗
	dhxyUtils_tab.tap(300,math.random(531, 579),math.random(803, 823));
	mSleep(1000);
	--1666,85,1714,129关闭小地图特殊关闭，不调用方法，手动在此关闭
	dhxyUtils_tab.tap(300,math.random(1666, 1714),math.random(85, 129));
	--休息10s
	mSleep(10000);
	--找对话框
	local isDialog = pubFun_tab.findDialog(width);
	if (isDialog) then
		--点对话框第一个选项
		pubFun_tab.dialogBox(width, 1);
		--判断是否在战斗中
		local nTime = mTime();--记录一个时间
		while true do
			nTime = pubFun_tab.body(width, nTime);
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 120) then
				break;
			end
		end
	end
	pubFun_tab.showHud(hud,"抓鬼结束",width);
	mSleep(2000);
	hideHUD(hud);
end
--1080做天
function tiangui_funtab1080.tian(width)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"做天",width);
	local x, y = 0, 0;
	mSleep(1000);
	--领双
	pubFun_tab.shuang(width);
	mSleep(1000);
	--点击世界地图并回家
	pubFun_tab.goHome(width, "goHome");
	mSleep(2000);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width);
	mSleep(1000);
	--再点一下世界地图
	pubFun_tab.goHome(width);
	mSleep(1000);
	--点击天宫：404,22,511,112
	dhxyUtils_tab.tap(300,math.random(404, 511),math.random(22, 112));
	mSleep(1000);
	--872,466,921,485李靖
	dhxyUtils_tab.tap(300,math.random(872, 921),math.random(466, 485));
	--1666,85,1714,129关闭小地图特殊关闭，不调用方法，手动在此关闭
	dhxyUtils_tab.tap(300,math.random(1666, 1714),math.random(85, 129));
	--休息10s
	mSleep(10000);
	--找对话框
	local isDialog = pubFun_tab.findDialog(width);
	if (isDialog) then
		--点对话框第一个选项
		pubFun_tab.dialogBox(width, 1);
		--判断是否在战斗中
		local nTime = mTime();--记录一个时间
		while true do
			nTime = pubFun_tab.body(width, nTime);
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 120) then
				break;
			end
		end
	end
	pubFun_tab.showHud(hud,"做天结束",width);
	mSleep(2000);
	hideHUD(hud);
end