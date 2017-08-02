huan200_funtab540 = {};
huan200_funtab1080 = {};
require("PubFun");


local function tap(delay, x, y) 
	touchDown(1, x, y);
	mSleep(delay);
	touchUp(1, x, y);
	mSleep(delay);
end

--540领取200环任务
function huan200_funtab540.lingqu()
	local hud = createHUD();
	showHUD(hud,"200环",12,"0xffffffff","0x70161212",1,-240,-260,192,30);
	local x, y = 0, 0;
	mSleep(1000);
	--8,6,54,55点击世界地图
	x = math.random(8, 54);
	y = math.random(6, 55);
	sysLog("世界地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--98,36,160,67点击蟠桃园
	x = math.random(98, 160);
	y = math.random(36, 67);
	sysLog("蟠桃园x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--556,418,610,427点击护园大将
	x = math.random(556, 610);
	y = math.random(418, 427);
	sysLog("护园大将x:"..x.."，y:"..y);
	tap(300,x,y);
	--628,41,651,63关闭小地图
	x = math.random(628, 651);
	y = math.random(41, 63);
	sysLog("小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(5000);
	for i = 1, 2 do
		--632,314,883,343找领取200对话框
		x, y = findMultiColorInRegionFuzzy(0xd78729,"7|43|0xe8b46b,10|57|0xd88c32,14|100|0xe7b064", 95, 609, 301, 903, 423)
		if (x ~= -1 and y ~= -1) then
			x = math.random(632, 883);
			y = math.random(314, 343);
			sysLog("领取200对话框x:"..x.."，y:"..y);
			pubFun_tab.tap(300,x,y);
			break;
		elseif (i == 2) then 
			sysLog("没有找到200对话框，任务结束！");
			showHUD(hud,"没有找到200对话框，任务结束！",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
			mSleep(2000);
		end
	end
	hideHUD(hud);
end
--540的200环具体逻辑
function huan200_funtab540.neirong()
	local hud = createHUD();
	showHUD(hud,"200环任务",12,"0xffffffff","0x70161212",1,-240,-260,192,30);
	local x, y = 0, 0;
	local nTime = mTime();--记录一个时间
	while true do
		mSleep(2000);
		--诗词鬼
		while true do
			x, y = findMultiColorInRegionFuzzy(0xda9743,"16|53|0xdba04f,304|1|0xd98e35,302|54|0xd6b077", 95, 190, 296, 761, 441)
			if (x ~= -1 and y ~= -1) then
				--214,322,455,349找到就只点a
				x = math.random(214, 455);
				y = math.random(322, 349);
				sysLog("诗词鬼选择a,x:"..x..",y:"..y);
				pubFun_tab.tap(300,x,y);
				mSleep(5000);
				nTime = mTime();
				--找是否通过
--				x, y = findMultiColorInRegionFuzzy(0xd19660,"-74|0|0xd69a64,15|0|0xd3965e,39|0|0xf5e9d1,49|-6|0xc4b497,59|-17|0xb36f37", 95, 186, 324, 573, 398);
				x, y = findMultiColorInRegionFuzzy(0xfffefa,"71|-29|0xe5a76d", 95, 446, 315, 643, 393);
				if (x ~= -1 and y ~= -1) then
					--786,136,922,175没有通过的话再200环处点3下
					x = math.random(786, 922);
					y = math.random(136, 175);
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
		--是否战斗
		x, y = findMultiColorInRegionFuzzy(0xf6ca71,"10|2|0xf3c36f,3|-15|0xe1d6c2", 95, 62, 28, 112, 79);
		if (x ~= -1 and y ~= -1) then
			--439,231,522,307随机点一下
			x = math.random(439, 522);
			y = math.random(231, 307);
			pubFun_tab.tap(300,x,y);
			nTime = mTime();
			while true do
				sysLog("战斗中");
				mSleep(10000);
				x, y = findMultiColorInRegionFuzzy(0xf6ca71,"10|2|0xf3c36f,3|-15|0xe1d6c2", 95, 62, 28, 112, 79);
				if(x == -1 and y == -1) then
					nTime = mTime();
					break;
				end
			end
		end
		mSleep(500);
		--上交药品，宝宝
		x, y = findMultiColorInRegionFuzzy(0xfeffff,"-106|-62|0xdcc2a1,-20|-5|0xf1eedc,9|12|0x4db88c,121|13|0x4ab88c,16|27|0x2cbb92", 95, 374, 131, 781, 460);
		if (x ~= -1 and y ~= -1) then
			local x1,y1 = 0,0;
			--玫瑰仙叶
			point = findMultiColorInRegionFuzzyExt(0x6ddd5f,"-11|14|0x3eb03b,0|16|0x35ce43,11|14|0x146928",95,163, 135, 388, 440);
			--千年熊胆
			point1 = findMultiColorInRegionFuzzyExt(0xfde8c8,"-10|10|0xdc2c48,5|3|0xf46f6d,3|19|0x821729",95,162, 134, 386, 439);
			if (#point ~= 0) then
				for var = 1,#point do
					x1 = point[var].x;
					y1 = point[var].y;
					break;
				end
				--257,151,290,189点一下玫瑰仙叶270,159
				x1 = math.random((x1-13), (x1+20));
				y1 = math.random((y1-8), (y1+30));
				sysLog("点击玫瑰仙叶x:"..x1..",y:"..y1);
				pubFun_tab.tap(300,x1,y1);
				nTime = mTime();
			elseif (#point1 ~= 0) then
				for var = 1,#point1 do
					x1 = point1[var].x;
					y1 = point1[var].y;
					break;
				end
				--184,150,223,189点一下千年熊胆203,161
				x1 = math.random((x1-19), (x1+20));
				y1 = math.random((y1-11), (y1+28));
				sysLog("点击千年熊胆x:"..x1..",y:"..y1);
				pubFun_tab.tap(300,x1,y1);
				nTime = mTime();
			end
			--521,406,644,439
			x = math.random(x, (x+143));
			y = math.random(y, (y+33));
			sysLog("上交药品x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			nTime = mTime();
		end
		mSleep(500);
		--看是不是上交宝宝的界面
		x, y = findMultiColorInRegionFuzzy(0xfffbed,"95|28|0xf9e5ac,128|5|0xeacbb1,221|26|0xefcfb4,572|7|0xfff7e0,669|18|0xfce6b6,50|-43|0xb39072", 95, 66, 27, 874, 156)
		if (x ~= -1 and y ~= -1) then
			for i = 1, 4 do 
				--上交宝宝
				--point = findMultiColorInRegionFuzzyExt(0xe2bf7d,"11|0|0xfdd985,6|6|0xf9b370,22|2|0xffbe77,20|-4|0xffe487,25|1|0xffbf74",95,344, 148, 811, 456);
				point = findMultiColorInRegionFuzzyExt(0xa96f5a,"-1|-2|0xff9d64",95,338, 150, 811, 460);
				if (#point ~= 0) then
					for var = 1,#point do
						x = point[var].x;
						y = point[var].y;
						break;
					end
					--420,169,546,204选择宝宝 进行买卖393,200
					x = math.random((x+27), (x+153));
					y = math.random((y-31), (y+4));
					sysLog("选择符合的宝宝x:"..x..",y:"..y);
					pubFun_tab.tap(300,x,y);
					--531,400,748,432点击购买
					x = math.random(531, 748);
					y = math.random(400, 432);
					sysLog("购买符合的宝宝x:"..x..",y:"..y);
					pubFun_tab.tap(300,x,y);
					nTime = mTime();
					break;
				else
					--没找到就翻页
					x = math.random(380, 720);
					y = math.random(340, 420);
					pubFun_tab.move(300, x, y, x, (y-130));
				end
			end
		end
		mSleep(500);
		--150环有右侧对话框上交技能书点击200环(已完成)
		x, y = findMultiColorInRegionFuzzy(0xdeaa62,"0|-5|0xdda861,269|-3|0xdf9c46,152|21|0xe8b46b,95|-3|0x0297fe", 95, 614, 297, 902, 362)
		if (x ~= -1 and y ~= -1) then
			--635,317,876,342
			x = math.random(635, 876);
			y = math.random(317, 342);
			sysLog("上交技能书x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			nTime = mTime();
		end
		mSleep(500);
		--夺魄妖王的对话框
		x, y = findMultiColorInRegionFuzzy(0xd68729,"0|43|0xe8b46b,0|57|0xd88c32,0|100|0xe7b064", 95, 612, 303, 906, 417)
		if (x ~= -1 and y ~= -1) then
			--632,315,880,341
			x = math.random(632, 880);
			y = math.random(315, 341);
			sysLog("夺魄妖王对话框x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			nTime = mTime();
		end
		--判断结束
		if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 180) then
			sysLog("200环结束！");
			showHUD(hud,"200环结束！",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
			mSleep(2000);
			break;
		end
	end
	hideHUD(hud);
end
--540执行领取加逻辑
function huan200_funtab540.quanbu()
	huan200_funtab540.lingqu();
	huan200_funtab540.neirong();	
end

--1080领取200环任务
function huan200_funtab1080.lingqu()
	local hud = createHUD();
	showHUD(hud,"200环",30,"0xffffffff","0x70161212",1,-450,-740,260,50);
	local x , y = 0, 0;
	mSleep(1000);
	--13,15,109,110世界地图
	x = math.random(13, 109);
	y = math.random(15, 110);
	sysLog("世界地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--229,68,310,133蟠桃园
	x = math.random(229, 310);
	y = math.random(68, 133);
	sysLog("蟠桃园x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--1113,836,1220,854护园大将
	x = math.random(1113, 1220);
	y = math.random(836, 854);
	sysLog("蟠桃园x:"..x.."，y:"..y);
	tap(300,x,y);
	--1252,81,1306,128关闭小地图
	x = math.random(1252, 1306);
	y = math.random(81, 128);
	sysLog("关闭小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(5000);
	for i = 1,2 do 
		x, y = findMultiColorInRegionFuzzy(0xde9e52,"48|87|0xde963a,54|114|0xd69a4a,60|201|0xde9a3a", 95, 1232, 604, 1812, 839)
		if (x ~= -1 and y ~= -1) then
			--1268,632,1769,687领取200对话框
			x = math.random(1268, 1769);
			y = math.random(632, 687);
			sysLog("领取200对话框x:"..x.."，y:"..y);
			pubFun_tab.tap(300,x,y);
			break;
		elseif (i == 2) then 
			sysLog("没有找到200对话框，任务结束！");
			showHUD(hud,"没有找到200环对话框，任务结束！",30,"0xffffffff","0x70161212",1,-450,-740,260,50);
			mSleep(2000);
		end
	end
	hideHUD(hud);
end

--1080的200环具体逻辑
function huan200_funtab1080.neirong()
	local hud = createHUD();
	showHUD(hud,"200环任务",30,"0xffffffff","0x70161212",1,-450,-740,260,50);
	local nTime = mTime();--记录一个时间
	local x , y = 0, 0;
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
				mSleep(5000);
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
		x, y = findMultiColorInRegionFuzzy(0x845d3a,"18|27|0x8c6142,85|48|0xa47552,117|4|0x7b6552", 95, 12, 23, 239, 145);
		if (x ~= -1 and y ~= -1) then
			--747,615,873,720点击一下
			x = math.random(747, 873);
			y = math.random(615, 720);
			pubFun_tab.tap(300,x,y);
			nTime = mTime();
			while true do
				sysLog("战斗中");
				mSleep(10000);
				x, y = findMultiColorInRegionFuzzy(0x845d3a,"18|27|0x8c6142,85|48|0xa47552,117|4|0x7b6552", 95, 12, 23, 239, 145);
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
			showHUD(hud,"200环结束！",30,"0xffffffff","0x70161212",1,-450,-740,260,50);
			mSleep(2000);
			break;
		end
	end
	hideHUD(hud);
end

--1080执行领取加逻辑
function huan200_funtab1080.quanbu()
	huan200_funtab1080.lingqu();
	huan200_funtab1080.neirong();
end