while true do
		mSleep(10000);
    x, y = findMultiColorInRegionFuzzy(0x79624d,"-17|0|0x997150,-31|0|0x9f7451,-80|0|0xaf6d2d", 95, 3, 18, 101, 60);
    if (x ~= -1 and y ~= -1) then
      sysLog("当前在战斗中！稍后检测！");
      mSleep(10000);
    else
      --不在战斗中的时候判断是不是有是否继续抓鬼对话框
			x, y = findMultiColorInRegionFuzzy(0xffffff,"137|2|0x90cfa8,137|31|0x2cb591,2|31|0x2dc19e,67|35|0x29d3b4,67|0|0xa9dbb7,-142|-5|0xdfaa66", 95, 294, 322, 668, 377);
			if (x ~= -1 and y ~= -1) then
				--516,333
				x = math.random(x, (x+134));
				y = math.random(y, (y+32));
				sysLog("确定继续x："..x);
				sysLog("确定继续y："..y);
				pubFun_tab.tap(300,x,y);
			else
				sysLog("对不起，没找到是否继续抓鬼对话框！");
			end
			--779,125,933,203;再找一下是否在战斗中，不在的话在界面右边任务里点一下抓鬼
			x, y = findMultiColorInRegionFuzzy(0x79624d,"-17|0|0x997150,-31|0|0x9f7451,-80|0|0xaf6d2d", 95, 3, 18, 101, 60);
			if (x == -1) then
				x = math.random(779, 933);
				y = math.random(125, 203);
				sysLog("右边任务栏抓鬼x:"..x);
				sysLog("右边任务栏抓鬼y:"..y);
				pubFun_tab.tap(300,x,y);
			end
    end
  end