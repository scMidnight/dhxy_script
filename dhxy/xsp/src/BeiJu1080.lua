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
			x, y = findMultiColorInRegionFuzzy(0xad2831,"-29|19|0x942d21,26|22|0x942d21,4|23|0xbd6510,11|69|0xad1819,43|63|0x52baac", 95, 1637, 926, 1752, 1056)
			if (x ~= -1 and y ~= -1) then
				--1696,951
				x = math.random(1650, 1737);
				y = math.random(y, 1046);
				sysLog("包裹x:"..x);
				sysLog("包裹y:"..y);
				pubFun_tab.doubleClick(500,x,y);
			else
				sysLog("对不起，没找到包裹！");
				sysLog("截图");
				local nowDate = os.date("%H:%M:%S", os.time());
				snapshot("[public]"..nowDate..".png",2,2,1919,1079);
				break;
			end
		end
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