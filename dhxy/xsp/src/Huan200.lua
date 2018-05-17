huan200_funtab1080 = {};
require("DhxyUtils");
require("PubFun");

--1080的200环
function huan200_funtab1080.run()
	local hud = createHUD();
	pubFun_tab.showHud(hud,"200环任务",30,1,-450,-740,260,50);
	local x , y = 0, 0;
	mSleep(2000);
	--先点活动
	x, y = findMultiColorInRegionFuzzy(0xad2d31,"-13|-4|0xfffbde,-40|6|0xf7698c,-61|10|0xe6929c,-42|36|0xd64163,-12|39|0xce3d5a,16|-4|0xffd73a", 95, 15, 264, 125, 385)
	if (x ~= -1 and y ~= -1) then
		x = math.random((x-34), (x+19));
		y = math.random((y-10), (y+60));
		sysLog("活动x:"..x.."，y:"..y);
		pubFun_tab.tap(300,x,y);
	else
		sysLog("对不起，没找到活动！");
		toast("对不起，没找到活动！");
	end
	mSleep(2000);
	--找200环
	for i = 1, 10 do
		point = findMultiColorInRegionFuzzyExt(0x94a6bd,"-16|26|0xeff7f7,0|26|0x8caac5,-9|51|0xa4c2ce,53|39|0x5a7994,444|-16|0xffffff,552|-9|0x7bc6a4,447|23|0x31be94,558|18|0x3abe94",95,233, 260, 1630, 783);
		if (#point ~= 0) then
			for var = 1,#point do
				x = point[var].x;
				y = point[var].y;
				break;
			end
			--745,645,858,689点击前往303,661
			x = math.random((x+442), (x+555));
			y = math.random((y-16), (y+28));
			sysLog("200环x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			break;
		else
			--426,469,1394,715滑动
			x = math.random(426, 1394);
			y = math.random(469, 715);
			pubFun_tab.move(500,x,y,x,(y-160));
		end
		if(i == 10) then
			showHUD(hud,"200环任务结束",30,"0xffffffff","0x70161212",1,-450,-740,260,50);
			mSleep(2000);
			hideHUD(hud);
			lua_exit();
		end
	end
	mSleep(5000);
	--找领取200环任务对话框
	x, y = findMultiColorInRegionFuzzy(0xde9e52,"48|87|0xde963a,54|114|0xd69a4a,60|201|0xde9a3a", 95, 1232, 604, 1812, 839)
	if (x ~= -1 and y ~= -1) then
		--1268,632,1769,687领取200对话框
		x = math.random(1268, 1769);
		y = math.random(632, 687);
		sysLog("领取200对话框x:"..x.."，y:"..y);
		pubFun_tab.tap(300,x,y);
	end
	local nTime = mTime();--记录一个时间
	while true do
		mSleep(2000);
		--诗词鬼
		while true do 
			mSleep(3000);
			x, y = findMultiColorInRegionFuzzy(0xd68a29,"263|-37|0xd68a29,538|14|0xde9a42,320|68|0xde9a42,771|-36|0xde9242,843|70|0xdea252", 95, 389, 611, 1520, 745);
			if (x ~= -1 and y ~= -1) then
				--418,637,923,712找到就只点a
				x = math.random(418, 923);
				y = math.random(637, 712);
				sysLog("诗词鬼选择a,x:"..x..",y:"..y);
				pubFun_tab.tap(300,x,y);
				mSleep(2000);
				nTime = mTime();
				--找是否通过
				x, y = findMultiColorInRegionFuzzy(0xbdb294,"96|-41|0xefc294", 95, 923, 620, 1270, 780);
				if (x ~= -1 and y ~= -1) then
					--1564,280,1860,345没有通过的话再200环处点3下
					x = math.random(1564, 1860);
					y = math.random(280, 345);
					sysLog("诗词鬼没通过，继续,x:"..x..",y:"..y);
					pubFun_tab.doubleClick(300,x,y);
					pubFun_tab.tap(300,x,y);
				else
					break;
				end
			else 
				break;
			end
		end
		mSleep(500);
		--是否在战斗中
		x, y = findMultiColorInRegionFuzzy(0xefbe6b,"-158|-60|0xbd793a,-46|-77|0x735d4a", 95, 19, 42, 224, 146);
		if (x ~= -1 and y ~= -1) then
			nTime = mTime();
			while true do
				sysLog("战斗中");
				mSleep(10000);
				x, y = findMultiColorInRegionFuzzy(0xefbe6b,"-158|-60|0xbd793a,-46|-77|0x735d4a", 95, 19, 42, 224, 146);
				if(x == -1 and y == -1) then
					break;
				end
			end
		end
		mSleep(500);
		--上交药品，宝宝
		x, y = findMultiColorInRegionFuzzy(0xd6be9c,"229|146|0xffffff,477|153|0x84caa4,233|204|0x31ba94,474|205|0x31ba94", 95, 795, 619, 1556, 905);
		if (x ~= -1 and y ~= -1) then
			local x1, y1 = 0, 0;
			--玫瑰仙叶
			point = findMultiColorInRegionFuzzyExt(0x6bd75a,"29|5|0x4adb52,1|22|0x94e363,22|30|0x31ce42,43|27|0x219629",95,326, 275, 767, 880);
			--千年熊胆
			point1 = findMultiColorInRegionFuzzyExt(0xde3952,"1|-20|0xf7dfbd,17|-15|0xf76d6b,38|1|0x942d3a,13|22|0x9c1c29",95,330, 272, 766, 844);
			if (#point ~= 0) then
				for var = 1,#point do
					x1 = point[var].x;
					y1 = point[var].y;
					break;
				end
				--513,303,581,373点一下玫瑰仙叶531，315
				x1 = math.random((x1+18), (x1+50));
				y1 = math.random((y1-12), (y1+58));
				sysLog("点击玫瑰仙叶x:"..x1..",y:"..y1);
				pubFun_tab.tap(300,x1,y1);
				nTime = mTime();
			elseif (#point1 ~= 0) then
				for var = 1,#point1 do
					x1 = point1[var].x;
					y1 = point1[var].y;
					break;
				end
				--369,307,442,373点一下千年熊胆400,343
				x1 = math.random((x1-31), (x1+42));
				y1 = math.random((y1-36), (y1+30));
				sysLog("点击千年熊胆x:"..x1..",y:"..y1);
				pubFun_tab.tap(300,x1,y1);
				nTime = mTime();
			end
			--1053,813,1284,873上交
			x = math.random(1053, 1284);
			y = math.random(813, 873);
			sysLog("上交药品x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			nTime = mTime();
		end
		mSleep(500);
		--看是不是要买宝宝的任务
		x, y = findMultiColorInRegionFuzzy(0xffefbd,"164|-2|0xfffbe6,-8|43|0xf7e3a4,161|37|0xffe7a4,69|12|0x942819", 95, 207, 177, 472, 289)
		if (x ~= -1 and y ~= -1) then
			for i = 1, 4 do
				--找符合需求的宝宝
				point = findMultiColorInRegionFuzzyExt(0xffe78c,"14|1|0xf7df8c,22|20|0xffa26b,46|-9|0xffe384,51|10|0xffa66b",95,684, 302, 1616, 922);
				if (#point ~= 0) then
					for var = 1,#point do
						x = point[var].x;
						y = point[var].y;
						break;
					end
					--839,326,1116,430点击符合条件的722,374
					x = math.random((x+117), (x+394));
					y = math.random((y-48), (y+56));
					sysLog("符合条件的宝宝x:"..x..",y:"..y);
					pubFun_tab.tap(300,x,y);
					--1071,809,1495,862点击购买
					x = math.random(1071, 1495);
					y = math.random(809, 862);
					sysLog("购买宝宝x:"..x..",y:"..y);
					pubFun_tab.tap(300,x,y);
					nTime = mTime();
					break;
				else
					--739,650,1546,885没找到就翻页
					x = math.random(739, 1546);
					y = math.random(650, 885);
					pubFun_tab.move(300,x,y,x,(y-160));
				end
			end
		end
		mSleep(500);
		--上交技能书，先找200环任务链(已完成)
		x, y = findMultiColorInRegionFuzzy(0xdea252,"16|87|0xde9631,-43|46|0x199ef7", 95, 1223, 598, 1809, 719)
		if (x ~= -1 and y ~= -1) then
			--1274,633,1748,687点击200环任务链(已完成)按钮
			x = math.random(1274, 1748);
			y = math.random(633, 687);
			sysLog("200环任务链(已完成)x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			nTime = mTime();
		end
		mSleep(500);
		--夺魄妖王的对话框
		x, y = findMultiColorInRegionFuzzy(0xdea252,"-16|87|0xde9631,14|114|0xde9e4a,29|201|0xde9a3a", 95, 1235, 606, 1813, 835)
		if (x ~= -1 and y ~= -1) then
			--1274,633,1748,687点击夺魄妖王看你往哪里跑按钮
			x = math.random(1274, 1748);
			y = math.random(633, 687);
			sysLog("夺魄妖王看你往哪里跑x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			nTime = mTime();
		end
		--判断结束
		if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 180) then
			sysLog("200环结束！");
			pubFun_tab.showHud(hud,"200环结束！",30,1,-450,-740,260,50);
			mSleep(2000);
			break;
		end
	end
	hideHUD(hud);
end