beiJu_funtab = {};
beiJu_funtab1080 = {};
require("PubFun");

beiJu_funtab.isLoop = true;
beiJu_funtab1080.isLoop = true;
--北倶挂机方法540
function beiJu_funtab.motor()
  local x, y = 0, 0;
	--先看看有没有遮挡框，有的话一概取消（掉线之类的另说）
	for i = 1, 2 do
		mSleep(1000);
    x, y = findMultiColorInRegionFuzzy(0xda943d,"140|42|0xdda75e,71|-1|0xdfaa66", 96, 291, 324, 457, 377)
    if (x ~= -1 and y ~= -1) then
      x = math.random((x+5), (x+135));
      y = math.random((y+6), (y+36));
      sysLog("取消x:"..x..",y:"..y);
      pubFun_tab.doubleClick(300,x,y);
      break;
    else
      sysLog("没找到取消！");
    end
  end
  mSleep(2000);
  --先使用循环找是否在战斗中
	x, y = findMultiColorInRegionFuzzy(0x79624d,"-17|0|0x997150,-31|0|0x9f7451,-80|0|0xaf6d2d", 95, 3, 18, 101, 60);
	if (x ~= -1 and y ~= -1) then
		sysLog("战斗中！");
		while true do
			mSleep(10000);
			x, y = findMultiColorInRegionFuzzy(0x79624d,"-17|0|0x997150,-31|0|0x9f7451,-80|0|0xaf6d2d", 95, 3, 18, 101, 60);
			if(x == -1 and y == -1) then
				break;
			end
		end
	end
  mSleep(2000);
  local flag = true;
  for i = 1, 5 do
    while flag do
      --上来点击包裹
			x, y = findMultiColorInRegionFuzzy(0xe79a3e,"-15|6|0x932620,15|30|0xd45955,2|31|0xcc4130,-16|16|0xfffddf,16|7|0xc55627", 95, 818, 463, 879, 528)
			if (x ~= -1 and y ~= -1) then
			--848  479
				x = math.random(830, 860);
				y = math.random(y, 515);
				sysLog("包裹x:"..x..",y:"..y);
				pubFun_tab.doubleClick(300,x,y);
			else
				sysLog("对不起，没找到包裹！");
				sysLog("截图");
				local nowDate = os.date("%H:%M:%S", os.time());
				snapshot("[public]"..nowDate..".png",2,2,955,530);
			end
			mSleep(500);
			--点完包裹就找香
			point = findMultiColorInRegionFuzzyExt(0xc4983a,"-16|8|0xede685,21|7|0xa56525,9|12|0xf6f4ed,2|21|0x370d09,2|26|0x773b28,1|32|0xf5a668",80,484, 150, 798, 432);
			if (#point ~= 0) then
				for var = 1,#point do
					x = point[var].x;
					y = point[var].y;
				end
				x = math.random((x-24), (x+28));
				y = math.random((y-7), (y+46));
				sysLog("香x:"..x..",y:"..y);
				pubFun_tab.tap(300,x,y);
			else
					sysLog("对不起，没找到香！");
			end
			mSleep(500);
			--点击完香后点使用
			point = findMultiColorInRegionFuzzyExt(0xffffff,"84|0|0xa4d8b4,-1|32|0x2dbc98,88|32|0x2ec5a0,21|18|0xe2f4ee,46|18|0x3bb78b,65|18|0xaee1cf",95,235, 139, 796, 446);
			if (#point ~= 0) then
				for var = 1,#point do
					x = point[var].x;
					y = point[var].y;
				end
				x = math.random((x-1), (x+83));
				y = math.random((y-4), (y+31));
				sysLog("使用x:"..x..",y:"..y);
				pubFun_tab.tap(300,x,y);
			else
				sysLog("对不起，没找到使用！");
			end
			mSleep(500);
			--使用后点确定
			x, y = findMultiColorInRegionFuzzy(0xffffff,"137|3|0x88cba5,1|31|0x2dc09d,133|32|0x2dc7a7,65|1|0x9cd4af,71|36|0x28d1b4", 95, 502, 321, 666, 380);
			if (x ~= -1 and y ~= -1) then
				x = math.random((x-2), (x+136));
				y = math.random((y-2), (y+33));
				sysLog("确定x:"..x..",y:"..y);
				pubFun_tab.tap(300,x,y);
			else
				sysLog("对不起，没有找到确定！");
				break;
			end
			mSleep(500);
			--确定完后关闭包裹
			x = math.random(817, 844);
			y = math.random(60, 87);
			sysLog("关闭包裹x:"..x..",y:"..y);
			pubFun_tab.tap(300, x, y);
			mSleep(500);
			--休息2秒点击巡逻
			for i = 1, 2 do
				mSleep(2000);
				sysLog("第"..i.."次巡逻！");
				point = findMultiColorInRegionFuzzyExt(0xa76122,"-5|-4|0xa66021,-5|0|0xc38f55,4|0|0xa96425,9|0|0xbf884d,29|-6|0xaa672a,21|-4|0xa66021,20|0|0xb47639,21|5|0xa65f20,37|11|0xad6b2c",95,493, 92, 616, 134);
				if (#point ~= 0) then
					--540,111 巡逻按钮534,104,578,121
					for var = 1,#point do
						x = point[var].x;
						y = point[var].y;
					end
					x = math.random((x-7), (x+38));
					y = math.random((y-7), (y+10));
					sysLog("巡逻x:"..x..",y:"..y);
					pubFun_tab.doubleClick(300,x,y);
					break;
				end
			end
			sysLog("任务结束！");
			flag = false;
    end
    sysLog("第"..i.."次");
  end
end
--北俱挂机方法入口540
function beiJu_funtab.loopFun()
  sysLog("进入调用方法！");
  beiJu_funtab.isLoop = true;
  if(pubFun_tab.getNowHour() ~= "05") then
    beiJu_funtab.motor();
    setTimer(1810000, beiJu_funtab.loopFun);
  else
    sysLog("5点了，休息了！"..pubFun_tab.getNowDate());
    beiJu_funtab.isLoop = false;
  end
end

--北倶挂机方法1080
function beiJu_funtab1080.motor()
  local x, y = 0, 0;
	--先看看有没有遮挡框，有的话一概取消（掉线之类的另说）
	for i = 1, 2 do
		mSleep(1000);
		x, y = findMultiColorInRegionFuzzy(0xd68121,"48|38|0xd69a4a,-251|40|0xde9a4a,-110|87|0xdea252,-17|12|0xfffbe6,224|37|0x4ab68c", 95, 592, 647, 1327, 752)
		if (x ~= -1 and y ~= -1) then
			x = math.random((x-235), (x+37));
			y = math.random((y+10), (y+77));
			sysLog("取消x:"..x..",y:"..y);
			pubFun_tab.doubleClick(300,x,y);
			break;
		else
			sysLog("没找到取消");
		end
	end
	mSleep(2000);
	--先使用循环找是否在战斗中
		x, y = findMultiColorInRegionFuzzy(0x845d3a,"18|27|0x8c6142,85|48|0xa47552,117|4|0x7b6552", 95, 12, 23, 239, 145)
		if (x ~= -1 and y ~= -1) then
			sysLog("战斗中！");
			while true do
				mSleep(10000);
				x, y = findMultiColorInRegionFuzzy(0x845d3a,"18|27|0x8c6142,85|48|0xa47552,117|4|0x7b6552", 95, 12, 23, 239, 145);
				if(x == -1 and y == -1) then
					break;
				end
			end
		end
	mSleep(2000);
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
			point = findMultiColorInRegionFuzzyExt(0x191c19,"-10|11|0xf7f7ef,-34|4|0xefce6b,23|4|0xc57d29,-31|23|0xffffff,-3|33|0xe6a684,-3|40|0x7b4129",95,966, 295, 1592, 867);
			if (#point ~= 0) then
				for var = 1,#point do
					x = point[var].x;
					y = point[var].y;
				end
				x = math.random((x-56), (x+45));
				y = math.random((y-22), (y+78));
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
  beiJu_funtab1080.isLoop = true;
  if(pubFun_tab.getNowHour() ~= "05") then
    beiJu_funtab1080.motor();
    setTimer(1810000, beiJu_funtab1080.loopFun);
  else
    sysLog("5点了，休息了！"..pubFun_tab.getNowDate());
    beiJu_funtab1080.isLoop = false;
  end
end