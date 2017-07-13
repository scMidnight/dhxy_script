huan200_funtab540 = {};
huan200_funtab1080 = {};
require("PubFun");
local hud = createHUD();

local function tap(delay, x, y) 
	touchDown(1, x, y);
	mSleep(delay);
	touchUp(1, x, y);
	mSleep(delay);
end

function huan200_funtab540.pao()
	local num = 1;
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
			lua_exit();
		end
	end
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
				--找是否通过
				x, y = findMultiColorInRegionFuzzy(0xd19660,"-74|0|0xd69a64,15|0|0xd3965e,39|0|0xf5e9d1,49|-6|0xc4b497,59|-17|0xb36f37", 95, 186, 324, 573, 398);
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
		x, y = findMultiColorInRegionFuzzy(0x79624d,"-17|0|0x997150,-31|0|0x9f7451,-80|0|0xaf6d2d", 95, 3, 18, 101, 60);
		if (x ~= -1 and y ~= -1) then
			--439,231,522,307随机点一下
			x = math.random(439, 522);
			y = math.random(231, 307);
			pubFun_tab.tap(300,x,y);
			while true do
				sysLog("战斗中");
				mSleep(10000);
				x, y = findMultiColorInRegionFuzzy(0x79624d,"-17|0|0x997150,-31|0|0x9f7451,-80|0|0xaf6d2d", 95, 3, 18, 101, 60);
				if(x == -1 and y == -1) then
					break;
				end
			end
		end
		mSleep(500);
		--上交药品，宝宝
		x, y = findMultiColorInRegionFuzzy(0xfeffff,"-106|-62|0xdcc2a1,-20|-5|0xf1eedc,9|12|0x4db88c,121|13|0x4ab88c,16|27|0x2cbb92", 95, 374, 131, 781, 460);
		if (x ~= -1 and y ~= -1) then
			--521,406,644,439
			x = math.random(x, (x+143));
			y = math.random(y, (y+33));
			sysLog("上交药品x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
		end
		mSleep(500);
		--看是不是上交宝宝的界面
		x, y = findMultiColorInRegionFuzzy(0xfffbed,"95|28|0xf9e5ac,128|5|0xeacbb1,221|26|0xefcfb4,572|7|0xfff7e0,669|18|0xfce6b6,50|-43|0xb39072", 95, 66, 27, 874, 156)
		if (x ~= -1 and y ~= -1) then
			for i = 1, 4 do 
				--上交宝宝
				point = findMultiColorInRegionFuzzyExt(0xe2bf7d,"11|0|0xfdd985,6|6|0xf9b370,22|2|0xffbe77,20|-4|0xffe487,25|1|0xffbf74",95,344, 148, 811, 456);
				if (#point ~= 0) then
					for var = 1,#point do
						x = point[var].x;
						y = point[var].y;
						break;
					end
					--362,163,550,204选择宝宝 进行买卖
					x = math.random(x, (x+185));
					y = math.random((y-21), (y+20));
					sysLog("选择符合的宝宝x:"..x..",y:"..y);
					pubFun_tab.tap(300,x,y);
					--531,400,748,432点击购买
					x = math.random(531, 748);
					y = math.random(400, 432);
					sysLog("购买符合的宝宝x:"..x..",y:"..y);
					pubFun_tab.tap(300,x,y);
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
		end
		mSleep(500);
		--786,136,922,175什么都没找到的话在200环处点3下
		x = math.random(786, 922);
		y = math.random(136, 175);
		pubFun_tab.tap(300,x,y);
	end
end

function huan200_funtab1080.pao()
end