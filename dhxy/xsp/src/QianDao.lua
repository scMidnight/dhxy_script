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
	while true do
		point = findMultiColorInRegionFuzzyExt(0xff94ff,"2|10|0xff9dff",95,381, 107, 790, 444);
		if (#point ~= 0) then
			for var = 1,#point do
				x = point[var].x;
				y = point[var].y;
				break;
			end
			--611,140点击
			x = math.random((x-25), (x-10));
			y = math.random((y-10), (y+10));
			sysLog("签到图标x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
		else
			--关闭签到窗口828,63,855,85
			x = math.random(828, 855);
			y = math.random(63, 85);
			sysLog("关闭签到窗口x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			mSleep(1000);
			--检查是否有右下角使用
			x, y = findMultiColorInRegionFuzzy(0xfdfefd,"66|3|0x77c69f,1|19|0x32bf99,66|18|0x34be97", 95, 665, 282, 798, 432)
			if (x ~= -1 and y ~= -1) then
				--697,388
				x = math.random(x, 760);
				y = math.random(y, 409);
				sysLog("右下角使用x:"..x..",y:"..y);
				pubFun_tab.tap(300,x,y);
			end
			showHUD(hud,"签到结束",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
			mSleep(2000);
			hideHUD(hud);
			break;
		end
		mSleep(500);
	end
end

--签到1080
function qiandao_funtab1080.qiandao()
	local hud = createHUD();
	showHUD(hud,"签到",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
	local x, y = 0, 0;
	mSleep(2000);
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
			mSleep(1000);
			--点右下角使用
			x, y = findMultiColorInRegionFuzzy(0xffffff,"132|4|0x84c6a4,3|43|0x29be9c,131|39|0x31be94,162|-178|0xef8a63", 95, 1331, 555, 1598, 870);
			if (x ~= -1 and y ~= -1) then
				--1396,778,1531,823
				x = math.random(x, 1531);
				y = math.random(y, 823);
				sysLog("右下角使用x:"..x..",y:"..y);
				pubFun_tab.tap(300,x,y);
			end
			showHUD(hud,"签到结束",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
			mSleep(2000);
			hideHUD(hud);
			break;
		end
		mSleep(500);
	end
end