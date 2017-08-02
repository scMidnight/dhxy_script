bangpai_funtab540 = {};
bangpai_funtab1080 = {};
require("PubFun");


--540帮派
function bangpai_funtab540.bangpai()
	local hud = createHUD();
	showHUD(hud,"帮派任务",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
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
	--找帮派
	for i = 1, 10 do
		point = findMultiColorInRegionFuzzyExt(0xc05721,"-11|-2|0xd79100,13|-3|0xfdffa7,16|17|0xffe790,-4|15|0xde7325,-4|32|0xfab64d,21|16|0xf7d580",95,114, 137, 818, 393);
		if (#point ~= 0) then
			for var = 1,#point do
				x = point[var].x;
				y = point[var].y;
			end
			--375,158,426,180点击前往153,166
			x = math.random((x+222), (x+273));
			y = math.random((y-8), (y+14));
			sysLog("前往帮派x:"..x..",y:"..y);
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
	--找帮派主管对话框
	x, y = findMultiColorInRegionFuzzy(0xd68729,"-8|43|0xe8b46b,-9|57|0xd88c32,-13|100|0xe7b064,-12|114|0xda9139,-10|157|0xe6ad5e", 95, 608, 299, 906, 478)
	if (x ~= -1 and y ~= -1) then
		--635,316,879,342点击帮派任务
		x = math.random(635, 879);
		y = math.random(316, 342);
		sysLog("帮派任务x:"..x..",y:"..y);
		pubFun_tab.tap(300,x,y);
	end
	--一直找买卖东西或者提示战斗的对话框
	while true do 
		mSleep(5000);
		--买各类东西
		x, y = findMultiColorInRegionFuzzy(0xdbefe2,"-1|0|0xfeffff,151|5|0x73c29a,1|29|0x30b88f,149|26|0x32b58b", 95, 608, 417, 797, 477)
		if (x ~= -1 and y ~= -1) then
			--623,430,776,460点击购买
			x = math.random(623, 776);
			y = math.random(430, 460);
			sysLog("购买x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
		end
		mSleep(300);
		--找战斗对话框
		x, y = findMultiColorInRegionFuzzy(0xd78729,"21|43|0xe8b46b,39|57|0xd88c32,45|100|0xe7b064", 95, 604, 296, 901, 423)
		if (x ~= -1 and y ~= -1) then
			--636,315,880,341点击战斗
			x = math.random(636, 880);
			y = math.random(315, 341);
			sysLog("战斗x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
		end
		mSleep(300);
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
					break;
				end
			end
		end
		local flag = false;
		--判断是否结束
		for i=1,10 do
			mSleep(300);
			x, y = findMultiColorInRegionFuzzy(0xf5f5f5,"195|5|0xffffe8,199|5|0xffe519,265|-44|0xbca186,319|-63|0xe5a76d", 90, 212, 313, 585, 433);
			if(x ~= -1 and y ~= -1) then
				flag = true;
				break;
			end
		end
		if(flag) then
			showHUD(hud,"帮派任务结束",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
			--350,446,512,503点一下
			x = math.random(350, 512);
			y = math.random(446, 503);
			pubFun_tab.tap(300,x,y);
			mSleep(2000);
			break;
		end
	end
	hideHUD(hud);
end


--1080帮派
function bangpai_funtab1080.bangpai()
	local hud = createHUD();
	showHUD(hud,"帮派任务",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
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
	--找帮派
	for i = 1, 10 do
		point = findMultiColorInRegionFuzzyExt(0xbd5521,"8|-9|0xf7fb73,-32|32|0xefa63a,20|35|0xe6a23a,20|72|0xde6d21",95,235, 267, 1615, 774);
		if (#point ~= 0) then
			for var = 1,#point do
				x = point[var].x;
				y = point[var].y;
			end
			--748,645,857,687点击前往314,662
			x = math.random((x+431), (x+543));
			y = math.random((y-17), (y+25));
			sysLog("前往帮派x:"..x..",y:"..y);
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
	--找帮派主管对话框
	x, y = findMultiColorInRegionFuzzy(0xdea252,"11|87|0xde963a,49|114|0xd69a4a,49|201|0xde9a3a,59|228|0xd69642,72|315|0xd6963a", 95, 1225, 594, 1812, 963)
	if (x ~= -1 and y ~= -1) then
		--1264,627,1762,689
		x = math.random(1264, 1762);
		y = math.random(627, 689);
		sysLog("帮派任务x:"..x..",y:"..y);
		pubFun_tab.tap(300,x,y);
	end
	--一直找买卖东西或者提示战斗的对话框
	while true do
		mSleep(5000);
		--买各类东西
		x, y = findMultiColorInRegionFuzzy(0xf7fbf7,"312|3|0x94cead,2|57|0x31b694,308|56|0x31b68c", 95, 1219, 832, 1595, 959);
		if (x ~= -1 and y ~= -1) then
			--1250,867,1547,917点击购买
			x = math.random(1250, 1547);
			y = math.random(867, 917);
			sysLog("购买x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
		end
		mSleep(300);
		--找战斗对话框
		x, y = findMultiColorInRegionFuzzy(0xdea252,"19|87|0xde963a,27|114|0xde9a4a,46|201|0xd6963a", 95, 1225, 608, 1809, 831);
		if (x ~= -1 and y ~= -1) then
			--1273,633,1767,688点击战斗
			x = math.random(1273, 1767);
			y = math.random(633, 688);
			sysLog("战斗x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
		end
		mSleep(300);
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
					break;
				end
			end
		end
		local flag = false;
		--检测是否结束
		for i = 1, 10 do
			mSleep(500);
			x, y = findMultiColorInRegionFuzzy(0xf7f7ff,"0|9|0x8c2829,386|6|0xfff719,378|9|0xf7f3f7", 85, 441, 783, 888, 841);
			if (x ~= -1 and y ~= -1) then
				flag = true;
				break;
			end
		end
		if(flag) then
			showHUD(hud,"帮派任务结束",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
			--719,921,946,1033点一下
			x = math.random(719, 946);
			y = math.random(921, 1033);
			pubFun_tab.tap(300,x,y);
			mSleep(2000);
			break;
		end
	end
	hideHUD(hud);
end