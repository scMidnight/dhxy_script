lingxiu_funtab540 = {};
lingxiu_funtab1080 = {};
require("PubFun");

--540灵修
function lingxiu_funtab540.lingxiu(choice)
	local hud = createHUD();
	showHUD(hud,"召唤兽灵修",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
	local x, y = 0, 0;
	mSleep(2000);
	showHUD(hud,"召唤兽灵修结束",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
	mSleep(2000);
	hideHUD(hud);
end

--1080灵修
function lingxiu_funtab1080.lingxiu(choice)
	local hud = createHUD();
	showHUD(hud,"召唤兽灵修",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
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
	--找管家按钮
	x, y = findMultiColorInRegionFuzzy(0xd6f3e6,"139|4|0x63cead,596|-2|0xdef7ef,790|3|0x63ceb5", 95, 508, 827, 1488, 976);
	if (x ~= -1 and y ~= -1) then
		--点击管家1193,714,1387,761
		x = math.random(1193, 1387);
		y = math.random(714, 761);
		sysLog("管家x:"..x.."，y:"..y);
		pubFun_tab.tap(200,x,y);
	end
	mSleep(3000);
	--找召唤兽灵修按钮
	x, y = findMultiColorInRegionFuzzy(0xdea252,"0|87|0xde9631,-18|114|0xde9e4a,-27|201|0xde9a3a,-27|228|0xd69642,-22|315|0xd6963a", 95, 1231, 600, 1802, 948)
	if (x ~= -1 and y ~= -1) then
		--点击召唤兽灵修1263,630,1766,687
		x = math.random(1263, 1766);
		y = math.random(630, 687);
		sysLog("召唤兽灵修x:"..x.."，y:"..y);
		pubFun_tab.tap(200,x,y);
	end
	mSleep(1000);
	--确定是灵修对话框
	x, y = findMultiColorInRegionFuzzy(0xfffbff,"274|5|0x8ccea4,9|49|0x31ae84,266|44|0x31b684", 95, 960, 844, 1413, 965)
	if (x ~= -1 and y ~= -1) then
		if(choice == "经验") then
			--点击经验1662,288,1719,398
			x = math.random(1655, 1715);
			y = math.random(288, 398);
			sysLog("经验x:"..x.."，y:"..y);
			pubFun_tab.tap(200,x,y);
		elseif(choice == "亲密") then
			--点击亲密1655,489,1715,619
			x = math.random(1655, 1715);
			y = math.random(489, 619);
			sysLog("亲密x:"..x.."，y:"..y);
			pubFun_tab.tap(200,x,y);
		end
		--点击开始1033,868,1310,925
		x = math.random(1033, 1310);
		y = math.random(868, 925);
		sysLog("开始x:"..x.."，y:"..y);
		pubFun_tab.tap(200,x,y);
		mSleep(1000);
		--关闭灵修对话框1638,124,1690,174
		x = math.random(1638, 1690);
		y = math.random(124, 174);
		sysLog("关闭灵修对话框x:"..x.."，y:"..y);
		pubFun_tab.tap(200,x,y);
	end
	showHUD(hud,"召唤兽灵修结束",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
	--再点一下更多，使还原1814,995,1876,1039
	x = math.random(1814, 1876);
	y = math.random(995, 1039);
	sysLog("更多x:"..x.."，y:"..y);
	pubFun_tab.tap(200,x,y);
	mSleep(2000);
	hideHUD(hud);
end