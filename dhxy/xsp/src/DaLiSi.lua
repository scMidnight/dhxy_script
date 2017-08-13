dalisi_funtab540 = {};
dalisi_funtab1080 = {};
require("PubFun");

--540大理寺
function dalisi_funtab540.dalisi()
	local hud = createHUD();
	showHUD(hud,"大理寺答题",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
	local x, y = 0, 0;
	mSleep(2000);
	--8,6,54,55点击世界地图
	x = math.random(8, 54);
	y = math.random(6, 55);
	sysLog("世界地图x:"..x.."，y:"..y);
	pubFun_tab.tap(200,x,y);
	--516,188,598,241长安
	x = math.random(516, 598);
	y = math.random(188, 241);
	sysLog("长安x:"..x.."，y:"..y);
	pubFun_tab.tap(200,x,y);
	--点大理寺官员165,216,207,226
	x = math.random(165, 207);
	y = math.random(216, 226);
	sysLog("大理寺官员x:"..x.."，y:"..y);
	pubFun_tab.tap(200,x,y);
	--关闭小地图832,39,856,63
	x = math.random(832, 856);
	y = math.random(39, 63);
	sysLog("长安x:"..x.."，y:"..y);
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
	--检查对话框
	for i = 1, 50 do
		mSleep(1000);
		x, y = findMultiColorInRegionFuzzy(0xd68729,"5|43|0xe8b46b,9|57|0xd88c32,23|100|0xe7b064", 95, 612, 301, 901, 417)
		if (x ~= -1 and y ~= -1) then
			--点击我要参加有奖问答634,315,878,341
			x = math.random(634, 878);
			y = math.random(315, 341);
			sysLog("我要参加有奖问答x:"..x.."，y:"..y);
			pubFun_tab.tap(200,x,y);
			break;
		end
	end
	mSleep(2000);
	local answerNum = 0;--回答次数
	while true do
		if(answerNum == 10) then
			local res = false;
			while true do
				mSleep(500);
				x, y = findMultiColorInRegionFuzzy(0xfef114,"12|0|0xfff415,6|-4|0xe0c116,7|1|0xf8f8f8,117|-44|0xc5bda1", 90, 363, 339, 523, 432);
				if (x ~= -1 and y ~= -1) then
					showHUD(hud,"大理寺答题结束",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
					--点一下350,437,553,507
					x = math.random(350, 553);
					y = math.random(437, 507);
					sysLog("大理寺答题结束x:"..x.."，y:"..y);
					pubFun_tab.tap(200,x,y);
					mSleep(2000);
					hideHUD(hud);
					res = true;
					break;
				end
			end
			if(res) then
				break;
			end
		end
		--检查是否答题界面
		x, y = findMultiColorInRegionFuzzy(0xda9743,"45|53|0xdba04f,357|1|0xd98e35,356|54|0xd6b077", 95, 183, 294, 766, 445);
		if (x ~= -1 and y ~= -1) then
			--选择a就可以209,315,456,355
			x = math.random(209, 456);
			y = math.random(315, 355);
			sysLog("选择a,x:"..x.."，y:"..y);
			pubFun_tab.tap(200,x,y);
			answerNum = answerNum + 1;
		end
		mSleep(3000);
	end
end

--1080大理寺
function dalisi_funtab1080.dalisi()
	local hud = createHUD();
	showHUD(hud,"大理寺答题",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
	local x, y = 0, 0;
	mSleep(2000);
	--13,15,109,110世界地图
	x = math.random(13, 109);
	y = math.random(15, 110);
	sysLog("世界地图x:"..x.."，y:"..y);
	pubFun_tab.tap(200,x,y);
	mSleep(500);
	--1034,369,1163,441长安
	x = math.random(1034, 1163);
	y = math.random(369, 441);
	sysLog("长安x:"..x.."，y:"..y);
	pubFun_tab.tap(200,x,y);
	--331,434,410,449大理寺官员
	x = math.random(331, 410);
	y = math.random(434, 449);
	sysLog("大理寺官员x:"..x.."，y:"..y);
	pubFun_tab.tap(200,x,y);
	--1666,85,1714,129关闭小地图
	x = math.random(1666, 1714);
	y = math.random(85, 129);
	sysLog("关闭小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(100,x,y);
	mSleep(500);
	--1870,47检查世界地图是否关闭
	x, y = findMultiColorInRegionFuzzy(0xef7173,"-12|-10|0xef7173,10|-11|0xe6716b,-14|14|0xe67173,15|15|0xef7173", 95, 1843, 24, 1896, 71)
	if (x ~= -1 and y ~= -1) then
		--关闭世界地图1846,24,1896,71
		x = math.random(1846, 1896);
		y = math.random(24, 71);
		sysLog("关闭世界地图x:"..x.."，y:"..y);
		pubFun_tab.tap(100,x,y);
	end
	--找官员对话框
	for i = 1, 50 do
		mSleep(1000);
		x, y = findMultiColorInRegionFuzzy(0xdea252,"-5|87|0xde963a,-6|114|0xde9e4a,-12|201|0xd6963a", 95, 1235, 602, 1805, 833)
		if (x ~= -1 and y ~= -1) then
			--1265,629,1767,689点击我要参加有奖问答
			x = math.random(1265, 1767);
			y = math.random(629, 689);
			sysLog("我要参加有奖问答x:"..x.."，y:"..y);
			pubFun_tab.tap(200,x,y);
			break;
		end
	end
	mSleep(2000);
	local answerNum = 0;--回答次数
	while true do
		if(answerNum == 10) then
			local res = false;
			while true do
				mSleep(500);
				x, y = findMultiColorInRegionFuzzy(0xf7ca10,"11|5|0xf7e710,-12|3|0xffeb10,228|-85|0xcec6b5", 90, 730, 665, 1042, 846)
				if (x ~= -1 and y ~= -1) then
					showHUD(hud,"大理寺答题结束",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
					--点一下670,867,889,1039
					x = math.random(670, 889);
					y = math.random(867, 1039);
					sysLog("大理寺答题结束x:"..x.."，y:"..y);
					pubFun_tab.tap(200,x,y);
					res = true;
					mSleep(2000);
					hideHUD(hud);
					break;
				end
			end
			if(res) then
				break;
			end
		end
		--检查是否答题界面
		x, y = findMultiColorInRegionFuzzy(0xde8a31,"25|105|0xde9e42,649|1|0xde9242,677|107|0xdea252", 95, 385, 604, 1520, 759)
		if (x ~= -1 and y ~= -1) then
			--选择a就可以432,635,900,707
			x = math.random(432, 900);
			y = math.random(635, 707);
			sysLog("选择a,x:"..x.."，y:"..y);
			pubFun_tab.tap(200,x,y);
			answerNum = answerNum + 1;
		end
		mSleep(1000);
	end
end