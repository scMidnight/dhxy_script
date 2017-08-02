suangua_funtab540 = {};
suangua_funtab1080 = {};
require("PubFun");

--540算卦
function suangua_funtab540.suangua()
	local hud = createHUD();
	showHUD(hud,"算卦",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
	local x, y = 0, 0;
	mSleep(2000);
	showHUD(hud,"算卦结束",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
	mSleep(2000);
	hideHUD(hud);
end
--1080算卦
function suangua_funtab1080.suangua()
	local hud = createHUD();
	showHUD(hud,"算卦",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
	local x, y = 0, 0;
	mSleep(2000);
	--找更多按钮
	x, y = findMultiColorInRegionFuzzy(0xefffff,"39|28|0xeff7f7,-31|28|0xe6f7ef,0|73|0xdefbf7,5|71|0x29f3ef", 95, 1770, 930, 1910, 1067);
	if (x ~= -1 and y ~= -1) then
		--点更多1808,976,1872,1035
		x = math.random(1808, 1872);
		y = math.random(976, 1035);
		sysLog("更多x:"..x.."，y:"..y);
		pubFun_tab.tap(200,x,y);
	end
	--找家园按钮
	x, y = findMultiColorInRegionFuzzy(0xfffbad,"8|20|0x9cf3e6,-5|43|0x8cefd6,21|48|0xf7e373,-2|65|0xf78e63,-30|68|0xefdfb5", 95, 1480, 925, 1614, 1056);
	if (x ~= -1 and y ~= -1) then
		--点击家园1520,972,1585,1038
		x = math.random(1520, 1585);
		y = math.random(972, 1038);
		sysLog("家园x:"..x.."，y:"..y);
		pubFun_tab.tap(200,x,y);
	end
	mSleep(2000);
	--找算卦按钮
	x, y = findMultiColorInRegionFuzzy(0xd6f3e6,"139|4|0x63cead,596|-2|0xdef7ef,790|3|0x63ceb5", 95, 508, 827, 1488, 976);
	if (x ~= -1 and y ~= -1) then
		--点击算卦1185,307,1397,343
		x = math.random(1185, 1397);
		y = math.random(307, 343);
		sysLog("算卦x:"..x.."，y:"..y);
		pubFun_tab.tap(200,x,y);
	end
	mSleep(1000);
	--找算一卦按钮
	x, y = findMultiColorInRegionFuzzy(0xdef7ef,"245|1|0x63cead,4|51|0x31b68c,249|51|0x31b28c", 95, 1016, 789, 1332, 896);
	if (x ~= -1 and y ~= -1) then
		--点击算一卦1047,807,1302,867
		x = math.random(1047, 1302);
		y = math.random(807, 867);
		sysLog("算一卦x:"..x.."，y:"..y);
		pubFun_tab.tap(200,x,y);
	end
	mSleep(1000);
	--找摇一摇按钮
	x, y = findMultiColorInRegionFuzzy(0xefca52,"-52|28|0xde8673,-26|113|0xffeb7b,-33|207|0x84caa4", 95, 769, 222, 1169, 714);
	if (x ~= -1 and y ~= -1) then
		--点击摇一摇按钮836,600,1084,660
		x = math.random(836, 1084);
		y = math.random(600, 660);
		sysLog("摇一摇x:"..x.."，y:"..y);
		pubFun_tab.tap(300,x,y);
		--关闭摇一摇界面1836,29,1887,77
		x = math.random(1836, 1887);
		y = math.random(29, 77);
		sysLog("关闭摇一摇界面x:"..x.."，y:"..y);
		pubFun_tab.tap(300,x,y);
		--再关闭卦签(算一卦)界面1536,139,1586,189
		x = math.random(1536, 1586);
		y = math.random(139, 189);
		sysLog("关闭卦签(算一卦)界面x:"..x.."，y:"..y);
		pubFun_tab.tap(300,x,y);
	end
	showHUD(hud,"算卦结束",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
	--再点一下更多，使还原1814,995,1876,1039
	x = math.random(1814, 1876);
	y = math.random(995, 1039);
	sysLog("更多x:"..x.."，y:"..y);
	pubFun_tab.tap(200,x,y);
	mSleep(2000);
	hideHUD(hud);
end