baotu_funtab540 = {};
baotu_funtab1080 = {};
require("PubFun");
local hud = createHUD();

--540挖宝
function baotu_funtab540.baotu()
	showHUD(hud,"宝图任务",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
	mSleep(5000);
	local x,y = 0,0;
	--先点活动
	x, y = findMultiColorInRegionFuzzy(0xf38398,"12|18|0xdb5072,31|11|0xe68d34,23|-5|0xfff8bd,28|-5|0xb22a32,34|-5|0xfbdd44", 95, 6, 133, 68, 200);
	if (x ~= -1 and y ~= -1) then
		x = math.random((x-5), (x+36));
		y = math.random((y-10), (y+29));
		sysLog("活动x:"..x.."，y:"..y);
		pubFun_tab.tap(300,x,y);
	else
		sysLog("对不起，没找到活动！");
	end
	--找宝图
	for i = 1, 10 do
		point = findMultiColorInRegionFuzzyExt(0xc44738,"0|19|0xf6f5bd,14|0|0xd1a65e",95,115, 138, 814, 393);
		if (#point ~= 0) then
			for var = 1,#point do
				x = point[var].x;
				y = point[var].y;
			end
			--723,156,774,174点击前往503,170
			x = math.random((x+220), (x+271));
			y = math.random((y-14), (y+4));
			sysLog("宝图前往x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			break;
		else
			--208,238,698,361滑动
			x = math.random(208, 698);
			y = math.random(238, 361);
			pubFun_tab.move(500,x,y,x,(y-80));
		end
	end
	mSleep(20000);
	--找宝图任务对话框
	x, y = findMultiColorInRegionFuzzy(0xd78729,"21|43|0xe8b46b,39|57|0xd88c32,45|100|0xe7b064", 95, 604, 296, 901, 423)
	if (x ~= -1 and y ~= -1) then
		--636,315,880,341点击宝图任务
		x = math.random(636, 880);
		y = math.random(315, 341);
		sysLog("宝图任务x:"..x..",y:"..y);
		pubFun_tab.tap(300,x,y);
	end
	local nTime = mTime();--记录一个时间
	while true do
		mSleep(1000);
		--判断是否在战斗中
		x, y = findMultiColorInRegionFuzzy(0xf6ca71,"10|2|0xf3c36f,3|-15|0xe1d6c2", 95, 62, 28, 112, 79);
		if (x ~= -1 and y ~= -1) then
			--439,231,522,307随机点一下
			x = math.random(439, 522);
			y = math.random(231, 307);
			pubFun_tab.tap(300,x,y);
			while true do
				mSleep(10000);
				x, y = findMultiColorInRegionFuzzy(0xf6ca71,"10|2|0xf3c36f,3|-15|0xe1d6c2", 95, 62, 28, 112, 79);
				if(x == -1 and y == -1) then
					nTime = mTime();
					break;
				end
			end
		end
		if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 60) then
			showHUD(hud,"宝图任务结束",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
			mSleep(2000);
			break;
		end
	end
	hideHUD(hud);
end

--1080挖宝
function baotu_funtab1080.baotu()
	showHUD(hud,"宝图任务",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
	local x, y = 0, 0;
	mSleep(5000);
	x, y = findMultiColorInRegionFuzzy(0xad2d31,"-13|-4|0xfffbde,-40|6|0xf7698c,-61|10|0xe6929c,-42|36|0xd64163,-12|39|0xce3d5a,16|-4|0xffd73a", 95, 15, 264, 125, 385)
	--先点活动
	if (x ~= -1 and y ~= -1) then
		x = math.random((x-34), (x+19));
		y = math.random((y-10), (y+60));
		sysLog("活动x:"..x.."，y:"..y);
		pubFun_tab.tap(300,x,y);
	else
		sysLog("对不起，没找到活动！");
	end
	--找宝图
	for i = 1, 10 do
		point = findMultiColorInRegionFuzzyExt(0xc5493a,"-6|27|0xded284,2|42|0xf7f3bd,26|7|0xd6b66b",95,242, 286, 1621, 777);
		if (#point ~= 0) then
			for var = 1,#point do
				x = point[var].x;
				y = point[var].y;
			end
			--744,651,859,696点击前往308,682
			x = math.random((x+436), (x+551));
			y = math.random((y-31), (y+14));
			sysLog("宝图前往x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			break;
		else
			--426,469,1394,715滑动
			x = math.random(426, 1394);
			y = math.random(469, 715);
			pubFun_tab.move(500,x,y,x,(y-160));
		end
	end
	mSleep(20000);
	--找宝图任务对话框
	x, y = findMultiColorInRegionFuzzy(0xdea252,"19|87|0xde963a,27|114|0xde9a4a,46|201|0xd6963a", 95, 1225, 608, 1809, 831)
	if (x ~= -1 and y ~= -1) then
		--1273,633,1767,688点击战斗
		x = math.random(1273, 1767);
		y = math.random(633, 688);
		sysLog("宝图任务x:"..x..",y:"..y);
		pubFun_tab.tap(300,x,y);
	end
	local nTime = mTime();--记录一个时间
	while true do
		mSleep(1000);
		--判断是否在战斗中
		x, y = findMultiColorInRegionFuzzy(0x845d3a,"18|27|0x8c6142,85|48|0xa47552,117|4|0x7b6552", 95, 12, 23, 239, 145);
		if (x ~= -1 and y ~= -1) then
			--747,615,873,720点击一下
			x = math.random(747, 873);
			y = math.random(615, 720);
			pubFun_tab.tap(300,x,y);
			while true do
				mSleep(10000);
				x, y = findMultiColorInRegionFuzzy(0x845d3a,"18|27|0x8c6142,85|48|0xa47552,117|4|0x7b6552", 95, 12, 23, 239, 145);
				if(x == -1 and y == -1) then
					nTime = mTime();
					break;
				end
			end
		end
		if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 60) then
			showHUD(hud,"宝图任务结束",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
			mSleep(2000);
			break;
		end
	end
	hideHUD(hud);
end