beiJu_funtab1080 = {};
require("DhxyUtils");
require("PubFun");

beiJu_funtab1080.isLoop = true;

--北倶挂机方法1080
function beiJu_funtab1080.motor()
  local x, y = 0, 0;
	mSleep(3000);
	--先看掉线
	for i = 1, 2 do
		mSleep(1000);
		x, y = findMultiColorInRegionFuzzy(0x42b68c,"-594|-373|0xb58673,-587|-300|0xc54942,-596|-271|0x3a2019,-565|-247|0xe69e94,-564|-132|0x7ba694,-445|-199|0xd6a694,-737|-8|0xce8642,-631|39|0xf7ebc5,-536|-294|0xa4594a", 95, 245, 227, 1456, 825);
		if (x ~= -1 and y ~= -1) then
			--1029,674,1291,740点击确定
			x = math.random(1029, 1291);
			y = math.random(674, 740);
			sysLog("确定x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			mSleep(8000);
			break;
		else
			sysLog("没找到掉线");
		end
	end
	--看看是否连接失败
	while true do
		mSleep(5000);
		x, y = findMultiColorInRegionFuzzy(0x4ab68c,"-377|-293|0xce413a,-388|-262|0x422019,-334|-283|0x311c19,-400|-238|0x8c5d31,-369|-183|0xd6c26b,-374|-17|0x63aac5,-553|3|0xc53131,-272|-11|0xdebac5", 95, 203, 222, 1419, 809)
		if (x ~= -1 and y ~= -1) then
			--837,679,1097,737点击确定
			x = math.random(837, 1097);
			y = math.random(679, 737);
			sysLog("确定x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
		else
			break;
		end
	end
	--先看看有没有遮挡框，有的话一概取消（掉线之类的另说）
	for i = 1, 2 do
		mSleep(1000);
		x, y = findMultiColorInRegionFuzzy(0xd68121,"48|38|0xd69a4a,-251|40|0xde9a4a,-110|87|0xdea252,-17|12|0xfffbe6,224|37|0x4ab68c", 95, 592, 647, 1327, 752)
		if (x ~= -1 and y ~= -1) then
			x = math.random((x-235), (x+37));
			y = math.random((y+10), (y+77));
			sysLog("取消x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			break;
		else
			sysLog("没找到取消");
		end
	end
	mSleep(1000);
	--先使用循环找是否在战斗中
	x, y = findMultiColorInRegionFuzzy(0xefbe6b,"-158|-60|0xbd793a,-46|-77|0x735d4a", 95, 19, 42, 224, 146);
	if (x ~= -1 and y ~= -1) then
		sysLog("战斗中！");
		while true do
			mSleep(10000);
			x, y = findMultiColorInRegionFuzzy(0xefbe6b,"-158|-60|0xbd793a,-46|-77|0x735d4a", 95, 19, 42, 224, 146);
			if(x == -1 and y == -1) then
				break;
			end
		end
	end
	mSleep(3000);
	--找不到更多按钮的话就点一下让包裹露出来
	x, y = findMultiColorInRegionFuzzy(0xefffff,"39|28|0xeff7f7,-31|28|0xe6f7ef,0|73|0xdefbf7,5|71|0x29f3ef", 95, 1770, 930, 1910, 1067);
	if (x == -1 and y == -1) then
		--点一下更多，使还原1814,995,1876,1039
		x = math.random(1814, 1876);
		y = math.random(995, 1039);
		sysLog("更多x:"..x.."，y:"..y);
		pubFun_tab.tap(200,x,y);
	end
	local flag = true;
	for i = 1, 2 do
		while flag do
			--上来找包裹点击
			x, y = findMultiColorInRegionFuzzy(0xad2831,"-29|19|0x942d21,26|22|0x942d21,4|23|0xbd6510,11|69|0xad1819,43|63|0x52baac", 95, 1637, 926, 1752, 1056);
			if (x ~= -1 and y ~= -1) then
				--1696,951
				x = math.random(1650, 1737);
				y = math.random(y, 1046);
				sysLog("包裹x:"..x..",y:"..y);
				pubFun_tab.doubleClick(300,x,y);
			else
				sysLog("对不起，没找到包裹！");
				--sysLog("截图");
				--local nowDate = os.date("%H:%M:%S", os.time());
				--snapshot("[public]"..nowDate..".png",2,2,1919,1079);
			end
			mSleep(500);
			--点完包裹就找香
			point = findMultiColorInRegionFuzzyExt(0x191819,"-11|11|0xfff7f7,-33|11|0xf7d77b,14|-1|0xb56921,-4|41|0xe6a273,-32|24|0xfff7f7",90,966, 301, 1591, 858);
			if (#point ~= 0) then
				for var = 1,#point do
					x = point[var].x;
					y = point[var].y;
				end
				--1036,332——984,316,1069,403
				x = math.random((x-50), (x+30));
				y = math.random((y-15), (y+68));
				sysLog("香x："..x..",y:"..y);
				pubFun_tab.tap(300,x,y);
			else
				sysLog("对不起，没找到香！");
			end
			mSleep(500);
			--找完香后点使用
			x, y = findMultiColorInRegionFuzzy(0xffffff,"168|1|0x9cd2ad,3|61|0x31c29c,181|58|0x29b68c,167|56|0x31b68c,84|-2|0xb5dfbd", 95, 1182, 325, 1439, 503);
			if (x ~= -1 and y ~= -1) then
				--1219,377
				x = math.random(x, (x+169));
				y = math.random(y, (y+63));
				sysLog("使用x："..x..",y:"..y);
				pubFun_tab.tap(300,x,y);
			else
				sysLog("对不起，没找到使用！");
			end
			mSleep(500);
			--使用香后点确定
			x, y = findMultiColorInRegionFuzzy(0x31b67b,"271|13|0x94cea4,2|74|0x29c2a4,268|71|0x31c2a4,-293|0|0xd68629", 95, 588, 646, 1331, 753);
			if (x ~= -1 and y ~= -1) then
				--1036,657
				x = math.random(x, (x+259));
				y = math.random((y+13), (y+73));
				sysLog("确定x："..x..",y:"..y);
				pubFun_tab.tap(300,x,y);
			else
				sysLog("对不起，没找到确定！");
				break;
			end
			mSleep(500);
			--关闭包裹
			x = math.random(1636, 1690);
			y = math.random(121, 176);
			sysLog("关闭包裹x："..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			mSleep(500);
			--休息2秒点击巡逻
			x, y = findMultiColorInRegionFuzzy(0xad6d31,"51|0|0xa45d21,164|3|0xad6129,218|5|0xad6121", 95, 889, 184, 1215, 269)
			if (x ~= -1 and y ~= -1) then
				--922,203,1024,246
				x = math.random(922, 1024);
				y = math.random(203, 246);
				sysLog("巡逻x："..x..",y:"..y);
				pubFun_tab.tap(300,x,y);
			else
				--1100,209,1156,235
				x = math.random(1100, 1156);
				y = math.random(209, 235);
				sysLog("巡逻x："..x..",y:"..y);
				pubFun_tab.tap(300,x,y);
			end
			sysLog("任务结束！");
			flag = false;
		end
		sysLog("第"..i.."次");
	end
end
--北俱挂机方法入口1080
function beiJu_funtab1080.loopFun()
  sysLog("进入1080调用方法！");
  if(pubFun_tab.getNowHour() ~= "05") then
    beiJu_funtab1080.motor();
    setTimer(183000, beiJu_funtab1080.loopFun);
  else
    sysLog("5点了，北倶挂机完毕"..pubFun_tab.getNowDate());
		beiJu_funtab1080.isLoop = false;
  end
end

--无限循环，一般用来防止脚本自动结束
function beiJu_funtab1080.infiniteLoop()
	while beiJu_funtab1080.isLoop do
		mSleep(1000);
	end
end