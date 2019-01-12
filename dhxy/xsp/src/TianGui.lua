tiangui_funtab1080_1920 = {};
tiangui_funtab1080_2160 = {};
tiangui_funtab720_1440 = {};
require("DhxyUtils");
require("PubFun");

--1080_2160抓鬼
function tiangui_funtab1080_2160.gui(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"抓鬼",width, height);
	local x, y = 0, 0;
	mSleep(3000);
	local tapXY;
	--领双
	pubFun_tab.shuang(width, height);
	mSleep(1500);
	--点击世界地图并回家
	pubFun_tab.goHome(width, height, "goHome");
	mSleep(1500);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width, height);
	mSleep(1500);
	--再点一下世界地图
	pubFun_tab.goHome(width, height);
	mSleep(1500);
	--点击地府：1621,763,1725,855
	tapXY = pubFun_tab.randomXY(1621,763,1725,855);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	mSleep(2000);
	--钟馗
	tapXY = pubFun_tab.randomXY(649,803,702,821);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	mSleep(2000);
	--1683,82,1743,131关闭小地图特殊关闭，不调用方法，手动在此关闭
	tapXY = pubFun_tab.randomXY(1683,82,1743,131);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	--休息10s
	mSleep(10000);
	--找对话框
	local isDialog = pubFun_tab.findDialog(width, height);
	if (isDialog) then
		--点对话框第一个选项
		pubFun_tab.dialogBox(width, height, 1);
		--判断是否在战斗中
		local nTime = mTime();--记录一个时间
		while true do
			nTime = pubFun_tab.body(width, height, nTime);
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 120) then
				break;
			end
		end
	end
	pubFun_tab.showHud(hud,"抓鬼结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end
--1080_2160天
function tiangui_funtab1080_2160.tian(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"做天",width, height);
	local x, y = 0, 0;
	mSleep(3000);
	local tapXY;
	--领双
	pubFun_tab.shuang(width, height);
	mSleep(1500);
	--点击世界地图并回家
	pubFun_tab.goHome(width, height, "goHome");
	mSleep(1500);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width, height);
	mSleep(1500);
	--再点一下世界地图
	pubFun_tab.goHome(width, height);
	mSleep(1500);
	--点击天宫：512,29,621,119
	tapXY = pubFun_tab.randomXY(512,29,621,119);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	mSleep(2000);
	--994,464,1040,484李靖
	tapXY = pubFun_tab.randomXY(994,464,1040,484);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	--1580,78,1629,130关闭小地图特殊关闭，不调用方法，手动在此关闭
	tapXY = pubFun_tab.randomXY(1580,78,1629,130);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	--休息10s
	mSleep(10000);
	--找对话框
	local isDialog = pubFun_tab.findDialog(width, height);
	if (isDialog) then
		--点对话框第一个选项
		pubFun_tab.dialogBox(width, height, 1);
		--判断是否在战斗中
		local nTime = mTime();--记录一个时间
		while true do
			nTime = pubFun_tab.body(width, height, nTime);
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 120) then
				break;
			end
		end
	end
	pubFun_tab.showHud(hud,"做天结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end

--720_1440抓鬼
function tiangui_funtab720_1440.gui(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"抓鬼",width, height);
	local x, y = 0, 0;
	mSleep(3000);
	--领双
	pubFun_tab.shuang(width, height);
	mSleep(2000);
	--点击世界地图并回家
	pubFun_tab.goHome(width, height, "goHome");
	mSleep(2000);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width, height);
	mSleep(2000);
	--再点一下世界地图
	pubFun_tab.goHome(width, height);
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
	local isDialog = pubFun_tab.findDialog(width, height);
	if (isDialog) then
		--点对话框第一个选项
		pubFun_tab.dialogBox(width, height, 1);
		--判断是否在战斗中
		local nTime = mTime();--记录一个时间
		while true do
			nTime = pubFun_tab.body(width, height, nTime);
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 120) then
				break;
			end
		end
	end
	pubFun_tab.showHud(hud,"抓鬼结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end

--720_1440天
function tiangui_funtab720_1440.tian(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"做天",width, height);
	local x, y = 0, 0;
	mSleep(3000);
	--领双
	pubFun_tab.shuang(width, height);
	mSleep(2000);
	--点击世界地图并回家
	pubFun_tab.goHome(width, height, "goHome");
	mSleep(2000);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width, height);
	mSleep(2000);
	--再点一下世界地图
	pubFun_tab.goHome(width, height);
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
	local isDialog = pubFun_tab.findDialog(width, height);
	if (isDialog) then
		--点对话框第一个选项
		pubFun_tab.dialogBox(width, height, 1);
		--判断是否在战斗中
		local nTime = mTime();--记录一个时间
		while true do
			nTime = pubFun_tab.body(width, height, nTime);
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 120) then
				break;
			end
		end
	end
	pubFun_tab.showHud(hud,"做天结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end

--1080_1920抓鬼
function tiangui_funtab1080_1920.gui(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"抓鬼",width, height);
	local x, y = 0, 0;
	mSleep(3000);
	--领双
	pubFun_tab.shuang(width, height);
	mSleep(2000);
	--点击世界地图并回家
	pubFun_tab.goHome(width, height, "goHome");
	mSleep(2000);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width, height);
	mSleep(2000);
	--再点一下世界地图
	pubFun_tab.goHome(width, height);
	mSleep(2000);
	--点击地府：1514,782,1565,938
	dhxyUtils_tab.tap(300,math.random(1514, 1565),math.random(782, 938));
	mSleep(2000);
	--531,803,579,823钟馗
	dhxyUtils_tab.tap(300,math.random(531, 579),math.random(803, 823));
	mSleep(2000);
	--1562,82,1617,128关闭小地图特殊关闭，不调用方法，手动在此关闭
	dhxyUtils_tab.tap(300,math.random(1562, 1617),math.random(82, 128));
	--休息10s
	mSleep(10000);
	--找对话框
	local isDialog = pubFun_tab.findDialog(width, height);
	if (isDialog) then
		--点对话框第一个选项
		pubFun_tab.dialogBox(width, height, 1);
		--判断是否在战斗中
		local nTime = mTime();--记录一个时间
		while true do
			nTime = pubFun_tab.body(width, height, nTime);
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 120) then
				break;
			end
		end
	end
	pubFun_tab.showHud(hud,"抓鬼结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end
--1080_1920做天
function tiangui_funtab1080_1920.tian(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"做天",width, height);
	local x, y = 0, 0;
	mSleep(3000);
	--领双
	pubFun_tab.shuang(width, height);
	mSleep(2000);
	--点击世界地图并回家
	pubFun_tab.goHome(width, height, "goHome");
	mSleep(2000);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width, height);
	mSleep(2000);
	--再点一下世界地图
	pubFun_tab.goHome(width, height);
	mSleep(2000);
	--点击天宫：404,22,511,112
	dhxyUtils_tab.tap(300,math.random(404, 511),math.random(22, 112));
	mSleep(2000);
	--872,466,921,485李靖
	dhxyUtils_tab.tap(300,math.random(872, 921),math.random(466, 485));
	--1454,81,1510,129关闭小地图特殊关闭，不调用方法，手动在此关闭
	dhxyUtils_tab.tap(300,math.random(1454, 1510),math.random(81, 129));
	--休息10s
	mSleep(10000);
	--找对话框
	local isDialog = pubFun_tab.findDialog(width, height);
	if (isDialog) then
		--点对话框第一个选项
		pubFun_tab.dialogBox(width, height, 1);
		--判断是否在战斗中
		local nTime = mTime();--记录一个时间
		while true do
			nTime = pubFun_tab.body(width, height, nTime);
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 120) then
				break;
			end
		end
	end
	pubFun_tab.showHud(hud,"做天结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end