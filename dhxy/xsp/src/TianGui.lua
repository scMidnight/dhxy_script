tiangui_funtab = {};
tiangui_funtab1080 = {};
require("PubFun");

function tiangui_funtab.gui()
	local x, y = 0, 0;
	mSleep(1000);
	--先点活动
	x, y = findMultiColorInRegionFuzzy(0xf38398,"12|18|0xdb5072,31|11|0xe68d34,23|-5|0xfff8bd,28|-5|0xb22a32,34|-5|0xfbdd44", 95, 6, 133, 68, 200);
	if (x ~= -1 and y ~= -1) then
		x = math.random((x-5), (x+36));
		y = math.random((y-10), (y+29));
		sysLog("活动x:"..x);
		sysLog("活动y:"..y);
		pubFun_tab.tap(500,x,y);
	else
		sysLog("对不起，没找到活动！");
	end
	
	--点完活动点鬼或者天前往
	while true do
		point = findMultiColorInRegionFuzzyExt(0xfac803,"-2|-17|0x44b057,13|-13|0x117631,-17|1|0x9ee67f,0|2|0x94edfc,10|16|0x2859b2,-11|18|0x6dbdee,1|28|0x264290",95,117, 137, 809, 385);
		if #point ~= 0 then  --如果找到符合条件的点
			for var = 1,#point do
				x = point[var].x;
				y = point[var].y;
			end
			x = math.random((x+214), (x+270));
			y = math.random((y-19), (y+5));
			sysLog("抓鬼前往x:"..x);
			sysLog("抓鬼前往y:"..y);
			pubFun_tab.tap(500,x,y);
			break;
		end
		--213,224,711,371;没找到抓鬼的话就下滑活动d面板
		x = math.random(213, 711);
		y = math.random(224, 371);
		pubFun_tab.move(800, x, y, x, (y-79));
	end
	mSleep(10000);
	--629,313,885,345;点击钟馗对话框中的我来帮你
	x = math.random((629), (885));
	y = math.random((313), (345));
	sysLog("我来帮你x:"..x);
	sysLog("我来帮你y:"..y);
	pubFun_tab.tap(500,x,y);
	--判断是否在战斗中
	while true do
		mSleep(10000);
    x, y = findMultiColorInRegionFuzzy(0x1a1920,"8|0|0xf3c46f,17|0|0x0b1219,11|-2|0x925c3b", 95, 66, 47, 108, 78);
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
				pubFun_tab.tap(500,x,y);
			else
				sysLog("对不起，没找到是否继续抓鬼对话框！");
			end
			--779,134,933,203;再找一下是否在战斗中，不在的话在界面右边任务里点一下抓鬼
			x, y = findMultiColorInRegionFuzzy(0x1a1920,"8|0|0xf3c46f,17|0|0x0b1219,11|-2|0x925c3b", 95, 66, 47, 108, 78);
			if (x == -1) then
				x = math.random(779, 933);
				y = math.random(134, 203);
				sysLog("右边任务栏抓鬼x:"..x);
				sysLog("右边任务栏抓鬼y:"..y);
				pubFun_tab.tap(500,x,y);
			end
    end
  end
end

function tiangui_funtab.tian()
end

function tiangui_funtab1080.gui()
end

function tiangui_funtab1080.gui()
end