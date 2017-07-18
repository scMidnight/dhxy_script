shimen_funtab540 = {};
shimen_funtab1080 = {};
require("PubFun");
local hud = createHUD();

function shimen_funtab540.shimen()
	showHUD(hud,"师门任务",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
	mSleep(5000);
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
	--找师门
	for i = 1, 10 do
		point = findMultiColorInRegionFuzzyExt(0xccecf7,"-38|8|0xfcffff,-17|13|0x84aece",95,121, 130, 816, 397);
		if (#point ~= 0) then
			for var = 1,#point do
				x = point[var].x;
				y = point[var].y;
			end
			--726,327,776,347点击前往525,347
			x = math.random((x+201), (x+251));
			y = math.random((y-20), y);
			sysLog("前往师门x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			break;
		else
			--208,238,698,361滑动
			x = math.random(208, 698);
			y = math.random(238, 361);
			pubFun_tab.move(500,x,y,x,(y-80));
		end
	end
	mSleep(10000);
	--找师门对话框
	x, y = findMultiColorInRegionFuzzy(0xd78729,"4|43|0xe8b46b,6|57|0xd88c32,6|100|0xe7b064", 95, 604, 297, 905, 425)
	if (x ~= -1 and y ~= -1) then
		--638,317,880,342点击师门任务
		x = math.random(638, 880);
		y = math.random(317, 342);
		sysLog("师门任务x:"..x..",y:"..y);
		pubFun_tab.tap(300,x,y);
	end
	--一直找买卖东西或者提示战斗的对话框
	local nTime = mTime();--记录一个时间
	while true do 
		mSleep(15000);
		--判断是否在战斗中
		x, y = findMultiColorInRegionFuzzy(0x79624d,"-17|0|0x997150,-31|0|0x9f7451,-80|0|0xaf6d2d", 95, 3, 18, 101, 60);
		if (x ~= -1 and y ~= -1) then
			--439,231,522,307随机点一下
			x = math.random(439, 522);
			y = math.random(231, 307);
			pubFun_tab.tap(300,x,y);
			while true do
				mSleep(10000);
				x, y = findMultiColorInRegionFuzzy(0x79624d,"-17|0|0x997150,-31|0|0x9f7451,-80|0|0xaf6d2d", 95, 3, 18, 101, 60);
				if(x == -1 and y == -1) then
					nTime = mTime();
					break;
				end
			end
		end
		mSleep(500);
		--买各类东西
		x, y = findMultiColorInRegionFuzzy(0xdbefe2,"-1|0|0xfeffff,151|5|0x73c29a,1|29|0x30b88f,149|26|0x32b58b", 95, 608, 417, 797, 477)
		if (x ~= -1 and y ~= -1) then
			--623,430,776,460点击购买
			x = math.random(623, 776);
			y = math.random(430, 460);
			sysLog("购买x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			nTime = mTime();
		end
		mSleep(500);
		--找战斗对话框
		x, y = findMultiColorInRegionFuzzy(0xd78729,"21|43|0xe8b46b,39|57|0xd88c32,45|100|0xe7b064", 95, 604, 296, 901, 423)
		if (x ~= -1 and y ~= -1) then
			--636,315,880,341点击战斗
			x = math.random(636, 880);
			y = math.random(315, 341);
			sysLog("战斗x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			nTime = mTime();
		end
		mSleep(500);
		if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 180) then
			showHUD(hud,"师门任务结束",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
			--431,469,580,508点一下
			x = math.random(431, 580);
			y = math.random(469, 508);
			pubFun_tab.tap(300,x,y);
			mSleep(2000);
			break;
		end
	end
	hideHUD(hud);
end


function shimen_funtab1080.shimen()
	showHUD(hud,"师门任务",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
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
	--找师门
	for i = 1, 10 do
		point = findMultiColorInRegionFuzzyExt(0xceebf7,"-62|14|0xffffff,-29|-6|0x425d7b,-28|33|0x7ba6ce",95,245, 275, 1619, 781);
		if (#point ~= 0) then
			for var = 1,#point do
				x = point[var].x;
				y = point[var].y;
			end
			--1450,484,1556,523点击前往1043,525
			x = math.random((x+407), (x+513));
			y = math.random((y-41), (y-2));
			sysLog("前往师门x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			break;
		else
			--426,469,1394,715滑动
			x = math.random(426, 1394);
			y = math.random(469, 715);
			pubFun_tab.move(500,x,y,x,(y-160));
		end
	end
	mSleep(10000);
	--找师门对话框
	x, y = findMultiColorInRegionFuzzy(0xdea252,"19|87|0xde963a,27|114|0xde9a4a,46|201|0xd6963a", 95, 1225, 608, 1809, 831)
	if (x ~= -1 and y ~= -1) then
		--1264,627,1762,689
		x = math.random(1264, 1762);
		y = math.random(627, 689);
		sysLog("师门任务x:"..x..",y:"..y);
		pubFun_tab.tap(300,x,y);
	end
	--一直找买卖东西或者提示战斗的对话框
	local nTime = mTime();--记录一个时间
	while true do 
		mSleep(15000);
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
		mSleep(500);
		--买各类东西
		x, y = findMultiColorInRegionFuzzy(0xf7fbf7,"312|3|0x94cead,2|57|0x31b694,308|56|0x31b68c", 95, 1219, 832, 1595, 959);
		if (x ~= -1 and y ~= -1) then
			--1250,867,1547,917点击购买
			x = math.random(1250, 1547);
			y = math.random(867, 917);
			sysLog("购买x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			nTime = mTime();
		end
		mSleep(500);
		--找战斗对话框
		x, y = findMultiColorInRegionFuzzy(0xdea252,"19|87|0xde963a,27|114|0xde9a4a,46|201|0xd6963a", 95, 1225, 608, 1809, 831);
		if (x ~= -1 and y ~= -1) then
			--1273,633,1767,688点击战斗
			x = math.random(1273, 1767);
			y = math.random(633, 688);
			sysLog("战斗x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			nTime = mTime();
		end
		mSleep(500);
		if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 180) then
			showHUD(hud,"师门任务结束",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
			--757,906,1143,1044点一下
			x = math.random(757, 1143);
			y = math.random(906, 1044);
			pubFun_tab.tap(300,x,y);
			mSleep(2000);
			break;
		end
	end
	hideHUD(hud);
end