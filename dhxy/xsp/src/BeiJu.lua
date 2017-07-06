beiJu_funtab = {};
require("PubFun");

beiJu_funtab.isLoop = true;

--北倶挂机方法
function beiJu_funtab.motor()
  local x, y = 0, 0;
	--先看看有没有遮挡框，有的话一概取消（掉线之类的另说）
	for i = 1, 2 do
		mSleep(1000);
    x, y = findMultiColorInRegionFuzzy(0xda943d,"140|42|0xdda75e,71|-1|0xdfaa66", 96, 291, 324, 457, 377)
    if (x ~= -1 and y ~= -1) then
      x = math.random((x+5), (x+135));
      y = math.random((y+6), (y+36));
      sysLog("取消x:"..x);
      sysLog("取消y:"..y);
      pubFun_tab.tap(500,x,y);
      break;
    else
      sysLog("没找到取消！");
    end
  end
  mSleep(2000);
  --先使用循环找是否在战斗中
  while true do
    x, y = findMultiColorInRegionFuzzy(0x17170a,"-18|-32|0x926e4d,11|-45|0xdacbb0,34|-40|0xe5d7c0", 95, 2, 0, 121, 72)
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
      --上来点击包裹
			x, y = findMultiColorInRegionFuzzy(0xe79a3e,"-15|6|0x932620,15|30|0xd45955,2|31|0xcc4130,-16|16|0xfffddf,16|7|0xc55627", 95, 818, 463, 879, 528)
			if (x ~= -1 and y ~= -1) then
			--848  479
				x = math.random(830, 860);
				y = math.random(y, 515);
				sysLog("包裹x:"..x);
				sysLog("包裹y:"..y);
				pubFun_tab.doubleClick(500,x,y);
				--点完包裹就找香
				--x, y = findMultiColorInRegionFuzzy(0xcb8b34,"0|5|0x050201,7|6|0xcac1b8,-9|7|0xeac55c,13|3|0xb76925,-8|15|0xfffeef,-4|22|0xb55236", 95, 484, 152, 794, 427);
				point = findMultiColorInRegionFuzzyExt(0xc4983a,"-16|8|0xede685,21|7|0xa56525,9|12|0xf6f4ed,2|21|0x370d09,2|26|0x773b28,1|32|0xf5a668",80,484, 150, 798, 432);
				if (#point ~= 0) then
					for var = 1,#point do
						x = point[var].x;
						y = point[var].y;
					end
					x = math.random((x-24), (x+28));
					y = math.random((y-7), (y+46));
					sysLog("香x:"..x);
					sysLog("香y:"..y);
					pubFun_tab.tap(500,x,y);
					--点击完香后点使用
					point = findMultiColorInRegionFuzzyExt(0xffffff,"84|0|0xa4d8b4,-1|32|0x2dbc98,88|32|0x2ec5a0,21|18|0xe2f4ee,46|18|0x3bb78b,65|18|0xaee1cf",95,235, 139, 796, 446);
					if (#point ~= 0) then
						for var = 1,#point do
							x = point[var].x;
							y = point[var].y;
						end
						x = math.random((x-1), (x+83));
						y = math.random((y-4), (y+31));
						sysLog("使用x:"..x);
						sysLog("使用y:"..y);
						pubFun_tab.tap(500,x,y);
						--使用后点确定
						x, y = findMultiColorInRegionFuzzy(0xffffff,"137|3|0x88cba5,1|31|0x2dc09d,133|32|0x2dc7a7,65|1|0x9cd4af,71|36|0x28d1b4", 95, 502, 321, 666, 380);
						if (x ~= -1 and y ~= -1) then
							x = math.random((x-2), (x+136));
							y = math.random((y-2), (y+33));
							sysLog("确定x:"..x);
							sysLog("确定y:"..y);
							pubFun_tab.tap(500,x,y);
							--确定完后关闭包裹
							x = math.random(817, 844);
							y = math.random(60, 87);
							sysLog("关闭包裹x:"..x);
							sysLog("关闭包裹y:"..y);
							pubFun_tab.tap(500, x, y);
							mSleep(2000);
							--休息3秒点击巡逻
							x = math.random(463, 513);
							y = math.random(99, 124);
							pubFun_tab.tap(500, x, y);
							sysLog("巡逻x:"..x);
							sysLog("巡逻y:"..y);
							sysLog("任务结束！");
							flag = false;
						else
							sysLog("对不起，没有找到确定！");
							break;
						end
					else
						sysLog("对不起，没找到使用！");
						break;
					end
				else
					sysLog("对不起，没找到香！");
					break;
				end
			else
				sysLog("对不起，没找到包裹！");
				sysLog("截图");
				local nowDate = os.date("%H:%M:%S", os.time());
				snapshot("[public]"..nowDate..".png",2,2,955,530);
				break;
			end;
    end
    sysLog("第"..i.."次");
  end
end

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