qiandao_funtab540 = {};
qiandao_funtab1080 = {};
require("PubFun");

--签到540
function qiandao_funtab540.qiandao()
	local hud = createHUD();
	showHUD(hud,"签到",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
	local x, y = 0, 0;
	mSleep(2000);
	--25,210找奖励18,218,48,246
	x, y = findMultiColorInRegionFuzzy(0xfbe154,"19|0|0xeeb443,9|18|0xfffffd,10|34|0xfca8a9,23|31|0xf8c53b,-1|34|0xf3b53b", 95, 3, 202, 74, 267)
	if (x ~= -1 and y ~= -1) then
		x = math.random((x-7), (x+23));
		y = math.random((y+8), (y+36));
		sysLog("奖励x:"..x.."，y:"..y);
		pubFun_tab.tap(300,x,y);
	end
	mSleep(1000);
	--找每日签到114,242,252,278
	x, y = findMultiColorInRegionFuzzy(0xa86529,"-58|12|0xf6ebde,74|16|0xf5eadd,51|11|0xf5e4d1", 95, 97, 217, 278, 300)
	if (x ~= -1 and y ~= -1) then
		x = math.random(114, 252);
		y = math.random(242, 278);
		sysLog("每日签到x:"..x.."，y:"..y);
		pubFun_tab.tap(300,x,y);
	end
	mSleep(1500);
	--找当天签到图标
	for i = 1, 10 do
		point = findMultiColorInRegionFuzzyExt(0xffbaff,"1|-4|0xf78eff",95,761, 221, 1582, 890);
		if (#point ~= 0) then
			for var = 1,#point do
				x = point[var].x;
				y = point[var].y;
				break;
			end
			--1083,310点击992,274,1048,321
			x = math.random((x-90), (x-30));
			y = math.random((y-10), (y+10));
			sysLog("签到图标x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			mSleep(1000);
			--关闭签到窗口1658,124,1707,173
			x = math.random(1658, 1707);
			y = math.random(124, 173);
			sysLog("关闭签到窗口x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			showHUD(hud,"签到结束",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
			mSleep(2000);
			hideHUD(hud);
			break;
		elseif(i == 10) then
			showHUD(hud,"没有找到签到图标",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
			--关闭签到窗口1658,124,1707,173
			x = math.random(1658, 1707);
			y = math.random(124, 173);
			sysLog("关闭签到窗口x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			mSleep(2000);
			hideHUD(hud);
		end
		mSleep(500);
	end
	showHUD(hud,"签到结束",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
	mSleep(2000);
	hideHUD(hud);
end

--签到1080
function qiandao_funtab1080.qiandao()
	local hud = createHUD();
	showHUD(hud,"签到",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
	local x, y = 0, 0;
	mSleep(1000);
	--46,421找奖励40,430,95,509
	x, y = findMultiColorInRegionFuzzy(0xf7d23a,"22|9|0xffe7c5,43|0|0xf7c242,24|36|0xf7fbf7,30|67|0xde456b,0|67|0xffb631,51|67|0xf7c23a", 95, 12, 406, 128, 533)
	if (x ~= -1 and y ~= -1) then
		x = math.random((x-6), (x+49));
		y = math.random((y+9), (y+88));
		sysLog("奖励x:"..x.."，y:"..y);
		pubFun_tab.tap(300,x,y);
	end
	mSleep(1000);
	--341,517找每日签到222,477,512,558
	x, y = findMultiColorInRegionFuzzy(0xa46121,"-123|34|0xefdbc5,173|32|0xefdbc5,-104|27|0xf7ebde,151|32|0xf7ebde,31|39|0xefdfce", 95, 145, 420, 587, 953)
	if (x ~= -1 and y ~= -1) then
		x = math.random(222, 512);
		y = math.random(477, 558);
		sysLog("每日签到x:"..x.."，y:"..y);
		pubFun_tab.tap(300,x,y);
	end
	mSleep(1500);
	--找当天签到图标
	while true do
		point = findMultiColorInRegionFuzzyExt(0xffbaff,"1|-4|0xf78eff",95,761, 221, 1582, 890);
		if (#point ~= 0) then
			for var = 1,#point do
				x = point[var].x;
				y = point[var].y;
				break;
			end
			--1083,310点击992,274,1048,321
			x = math.random((x-90), (x-30));
			y = math.random((y-10), (y+10));
			sysLog("签到图标x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
		else
			--关闭签到窗口1658,124,1707,173
			x = math.random(1658, 1707);
			y = math.random(124, 173);
			sysLog("关闭签到窗口x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			showHUD(hud,"签到结束",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
			mSleep(2000);
			hideHUD(hud);
			break;
		end
		mSleep(500);
	end
end