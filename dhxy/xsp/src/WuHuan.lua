wuhuan_funtab540 = {};
wuhuan_funtab1080 = {};


local function tap(delay, x, y) 
	touchDown(1, x, y);
	mSleep(delay);
	touchUp(1, x, y);
	mSleep(delay);
end

--540五环
function wuhuan_funtab540.wuhuan(flag)
	local hud = createHUD();
	showHUD(hud,"五环任务",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
	mSleep(2000);
	local x,y = 0,0;
	--8,6,54,55点击世界地图
	x = math.random(8, 54);
	y = math.random(6, 55);
	sysLog("世界地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--516,188,598,241长安
	x = math.random(516, 598);
	y = math.random(188, 241);
	sysLog("长安x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--560,330,610,336云游大师
	x = math.random(560, 610);
	y = math.random(330, 336);
	sysLog("云游大师x:"..x.."，y:"..y);
	tap(300,x,y);
	--833,42,856,63关闭小地图
	x = math.random(833, 856);
	y = math.random(42, 63);
	sysLog("关闭小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(100,x,y);
	mSleep(500);
	--检查世界地图是否需要关闭
	x, y = findMultiColorInRegionFuzzy(0xea716f,"-6|-6|0xea716f,6|-6|0xea716f,-5|5|0xea716f,7|7|0xea716f", 95, 900, 1, 958, 58)
	if (x ~= -1 and y ~= -1) then
		--关闭世界地图923,11,946,35
		x = math.random(923, 946);
		y = math.random(11, 35);
		sysLog("关闭世界地图x:"..x.."，y:"..y);
		pubFun_tab.tap(100,x,y);
	end
	mSleep(8000);
	--点击五环
	x, y = findMultiColorInRegionFuzzy(0xd68729,"0|43|0xe8b46b,-24|57|0xd88c32,-14|100|0xe7b064,-14|114|0xda9139,-16|157|0xe6ad5e,-6|171|0xdb9541", 95, 607, 292, 900, 515)
	if (x ~= -1 and y ~= -1) then
		if(flag == "single") then--单人645,372,870,398
			x = math.random(645, 870);
			y = math.random(372, 398);
			sysLog("单人五环x:"..x.."，y:"..y);
			showHUD(hud,"单人五环",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
		elseif(flag == "double") then--双人634,315,878,341
			x = math.random(634, 878);
			y = math.random(315, 341);
			sysLog("双人五环x:"..x.."，y:"..y);
			showHUD(hud,"双人五环",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
		end
		pubFun_tab.tap(300,x,y);
	end
	local nTime = mTime();--记录一个时间
	local pkNum = 0;
	--是否战斗
	while true do
		mSleep(10000);
		x, y = findMultiColorInRegionFuzzy(0xf6ca71,"10|2|0xf3c36f,3|-15|0xe1d6c2", 95, 62, 28, 112, 79);
		if (x ~= -1 and y ~= -1) then
			pkNum = pkNum + 1;
			while true do
				mSleep(10000);
				x, y = findMultiColorInRegionFuzzy(0xf6ca71,"10|2|0xf3c36f,3|-15|0xe1d6c2", 95, 62, 28, 112, 79);
				if(x == -1 and y == -1) then
					nTime = mTime();
					break;
				end
			end
		end
		if(pkNum == 5 or tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 60) then
			sysLog("五环结束！");
			showHUD(hud,"五环结束",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
			mSleep(2000);
			break;
		end
	end
	hideHUD(hud);
end

--1080五环
function wuhuan_funtab1080.wuhuan(flag)
	local hud = createHUD();
	showHUD(hud,"五环任务",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
	mSleep(2000);
	local x,y = 0,0;
	--13,15,109,110世界地图
	x = math.random(13, 109);
	y = math.random(15, 110);
	sysLog("世界地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--1034,369,1163,441长安
	x = math.random(1034, 1163);
	y = math.random(369, 441);
	sysLog("长安x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--1118,657,1226,675云游大师
	x = math.random(1118, 1226);
	y = math.random(657, 675);
	sysLog("云游大师x:"..x.."，y:"..y);
	tap(200,x,y);
	--1669,82,1715,129关闭小地图
	x = math.random(1669, 1715);
	y = math.random(82, 129);
	sysLog("关闭小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(100,x,y);
	mSleep(500);
	--检测世界地图是否关闭
	x, y = findMultiColorInRegionFuzzy(0xef7173,"-12|-10|0xef7173,10|-11|0xe6716b,-14|14|0xe67173,15|15|0xef7173", 95, 1843, 24, 1896, 71)
	if (x ~= -1 and y ~= -1) then
		--关闭世界地图1846,24,1896,71
		x = math.random(1846, 1896);
		y = math.random(24, 71);
		sysLog("关闭世界地图x:"..x.."，y:"..y);
		pubFun_tab.tap(100,x,y);
	end
	mSleep(8000);
	--选择五环
	x, y = findMultiColorInRegionFuzzy(0xde9e52,"10|87|0xde963a,3|114|0xde9e4a,6|201|0xde9a3a,6|228|0xd69642,13|315|0xd6963a,17|342|0xde9242", 95, 1230, 606, 1799, 1012);
	if (x ~= -1 and y ~= -1) then
		if(flag == "single") then--单人1266,746,1761,798
			x = math.random(1266, 1761);
			y = math.random(746, 798);
			sysLog("单人五环x:"..x.."，y:"..y);
			showHUD(hud,"单人五环",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
		elseif(flag == "double") then--双人1267,630,1765,688
			x = math.random(1267, 1765);
			y = math.random(630, 688);
			sysLog("双人五环x:"..x.."，y:"..y);
			showHUD(hud,"双人五环",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
		end
		pubFun_tab.tap(300,x,y);
	end
	local nTime = mTime();--记录一个时间
	local pkNum = 0;
	--是否战斗
	while true do
		mSleep(10000);
		x, y = findMultiColorInRegionFuzzy(0x845d3a,"18|27|0x8c6142,85|48|0xa47552,117|4|0x7b6552", 95, 12, 23, 239, 145);
		if (x ~= -1 and y ~= -1) then
			pkNum = pkNum + 1;
			while true do
				mSleep(10000);
				x, y = findMultiColorInRegionFuzzy(0x845d3a,"18|27|0x8c6142,85|48|0xa47552,117|4|0x7b6552", 95, 12, 23, 239, 145);
				if(x == -1 and y == -1) then
					nTime = mTime();
					break;
				end
			end
		end
		if(pkNum == 5 or tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 60) then
			showHUD(hud,"五环结束",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
			mSleep(2000);
			break;
		end
	end
	hideHUD(hud);
end