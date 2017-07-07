beiJu_funtab1080 = {};
require("PubFun");
beiJu_funtab1080.isLoop = true;
--北倶挂机方法
function beiJu_funtab1080.motor()
  local x, y = 0, 0;
	--先看看有没有遮挡框，有的话一概取消（掉线之类的另说）
	for i = 1, 2 do
		mSleep(1000);
		x, y = findMultiColorInRegionFuzzy(0xd68121,"48|38|0xd69a4a,-251|40|0xde9a4a,-110|87|0xdea252,-17|12|0xfffbe6,224|37|0x4ab68c", 95, 592, 647, 1327, 752)
		if (x ~= -1 and y ~= -1) then
			x = math.random((x-235), (x+37));
			y = math.random((y+10), (y+77));
			sysLog("取消x:"..x);
      sysLog("取消y:"..y);
			pubFun_tab.tap(500,x,y);
			break;
		else
			sysLog("没找到取消");
		end
	end
	mSleep(2000);
	--先使用循环找是否在战斗中
	while true do
		x, y = findMultiColorInRegionFuzzy(0x191821,"-35|0|0x081419,-13|-8|0x8c553a,20|-33|0x6b594a,40|-89|0x312821,-53|-77|0x7b594a", 95, 8, 8, 243, 152)
		if (x ~= -1 and y ~= -1) then
		sysLog("当前在战斗中！稍后检测！");
		mSleep(10000);
		else
			break;
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
				sysLog("包裹x:"..x);
				sysLog("包裹y:"..y);
				pubFun_tab.doubleClick(500,x,y);
			else
				sysLog("对不起，没找到包裹！");
				--sysLog("截图");
				--local nowDate = os.date("%H:%M:%S", os.time());
				--snapshot("[public]"..nowDate..".png",2,2,1919,1079);
			end
			--点完包裹就找香
			point = findMultiColorInRegionFuzzyExt(0x101010,"-9|11|0xfff7f7,30|4|0x7b3121,-40|3|0xc59242,-28|23|0xf7f7ef,-3|35|0x6b2d29,-3|45|0xffa26b",95,969, 300, 1592, 568);
			if (#point ~= 0) then
				for var = 1,#point do
					x = point[var].x;
					y = point[var].y;
				end
				x = math.random((x-56), (x+45));
				y = math.random((y-22), (y+78));
				sysLog("香x："..x);
				sysLog("香y："..y);
				pubFun_tab.tap(500,x,y);
			else
				sysLog("对不起，没找到香！");
			end
			--找完香后点使用
			x, y = findMultiColorInRegionFuzzy(0xffffff,"168|1|0x9cd2ad,3|61|0x31c29c,181|58|0x29b68c,167|56|0x31b68c,84|-2|0xb5dfbd", 95, 1182, 325, 1439, 503);
			if (x ~= -1 and y ~= -1) then
				--1219,377
				x = math.random(x, (x+169));
				y = math.random(y, (y+63));
				sysLog("使用x："..x);
				sysLog("使用y："..y);
				pubFun_tab.tap(500,x,y);
			else
				sysLog("对不起，没找到使用！");
			end
			--使用香后点确定
			x, y = findMultiColorInRegionFuzzy(0x31b67b,"271|13|0x94cea4,2|74|0x29c2a4,268|71|0x31c2a4,-293|0|0xd68629", 95, 588, 646, 1331, 753);
			if (x ~= -1 and y ~= -1) then
				--1036,657
				x = math.random(x, (x+259));
				y = math.random((y+13), (y+73));
				sysLog("确定x："..x);
				sysLog("确定y："..y);
				pubFun_tab.tap(500,x,y);
			else
				sysLog("对不起，没找到确定！");
				break;
			end
			--关闭包裹
			x = math.random(1636, 1690);
			y = math.random(121, 176);
			sysLog("关闭包裹x："..x);
			sysLog("关闭包裹y："..y);
			pubFun_tab.tap(500,x,y);
			mSleep(2000);
			--休息两秒，点击巡逻
			x = math.random(917, 1030);
			y = math.random(199, 251);
			sysLog("巡逻x："..x);
			sysLog("巡逻y："..y);
			pubFun_tab.tap(500,x,y);
			sysLog("任务结束！");
			flag = false;
		end
		sysLog("第"..i.."次");
	end
end

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