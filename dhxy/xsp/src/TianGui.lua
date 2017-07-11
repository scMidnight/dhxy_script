tiangui_funtab = {};
tiangui_funtab1080 = {};
require("PubFun");
local hud = createHUD();
function tiangui_funtab.gui()
	local num = 1;
	local x, y = 0, 0;
	mSleep(1000);
	--先点活动
	x, y = findMultiColorInRegionFuzzy(0xf38398,"12|18|0xdb5072,31|11|0xe68d34,23|-5|0xfff8bd,28|-5|0xb22a32,34|-5|0xfbdd44", 95, 6, 133, 68, 200);
	if (x ~= -1 and y ~= -1) then
		x = math.random((x-5), (x+36));
		y = math.random((y-10), (y+29));
		sysLog("活动x:"..x.."，y:"..y);
		pubFun_tab.tap(300,x,y);
		--720,96,778,119点击再次领取（领取双倍）
		x = math.random(720, 778);
		y = math.random(96, 119);
		pubFun_tab.doubleClick(300,x,y);
		--816,64,844,86领取完双倍，点关闭
		x = math.random(816, 844);
		y = math.random(64, 86);
		pubFun_tab.tap(300,x,y);
	else
		sysLog("对不起，没找到活动！");
	end	
	--8,6,54,55点击世界地图
	x = math.random(8, 54);
	y = math.random(6, 55);
	sysLog("世界地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--750,400,780,480点地府
	x = math.random(750, 780);
	y = math.random(400, 480);
	sysLog("地府x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--266,402,290,411找钟馗
	x = math.random(266, 290);
	y = math.random(402, 411);
	sysLog("钟馗x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--783,40,807,65关闭小地图
	x = math.random(783, 807);
	y = math.random(40, 65);
	sysLog("关闭小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--休息10s
	mSleep(10000);
	--629,313,885,345;点击钟馗对话框中的我来帮你
	x = math.random((629), (885));
	y = math.random((313), (345));
	sysLog("我来帮你x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--判断是否在战斗中
	local num = 0;
	while true do
		mSleep(7000);
		--判断是否在战斗中
		x, y = findMultiColorInRegionFuzzy(0x79624d,"-17|0|0x997150,-31|0|0x9f7451,-80|0|0xaf6d2d", 95, 3, 18, 101, 60);
		if (x ~= -1 and y ~= -1) then
			num = num + 1;
			sysLog("抓鬼第"..num.."次;");
			while true do
				mSleep(10000);
				x, y = findMultiColorInRegionFuzzy(0x79624d,"-17|0|0x997150,-31|0|0x9f7451,-80|0|0xaf6d2d", 95, 3, 18, 101, 60);
				if(x == -1 and y == -1) then
					break;
				end
			end
		else
			--不在战斗中的时候判断是不是有是否继续抓鬼对话框
			x, y = findMultiColorInRegionFuzzy(0xffffff,"137|2|0x90cfa8,137|31|0x2cb591,2|31|0x2dc19e,67|35|0x29d3b4,67|0|0xa9dbb7,-142|-5|0xdfaa66", 95, 294, 322, 668, 377);
			if (x ~= -1 and y ~= -1) then
				--516,333
				x = math.random(x, (x+134));
				y = math.random(y, (y+32));
				sysLog("确定继续x:"..x.."，y:"..y);
				pubFun_tab.tap(300,x,y);
			else
				sysLog("对不起，没找到是否继续抓鬼对话框！");
			end
			--再点一下继续抓鬼
			x = math.random(779, 933);
			y = math.random(140, 203);
			sysLog("右边任务栏抓鬼x:"..x.."，y:"..y);
			pubFun_tab.tap(300,x,y);
		end
		if(num == 60) then
			sysLog("抓鬼结束！");
			break;
		end
	end
end

function tiangui_funtab.tian()
	local num = 1;
	local x, y = 0, 0;
	mSleep(1000);
	--先点活动
	x, y = findMultiColorInRegionFuzzy(0xf38398,"12|18|0xdb5072,31|11|0xe68d34,23|-5|0xfff8bd,28|-5|0xb22a32,34|-5|0xfbdd44", 95, 6, 133, 68, 200);
	if (x ~= -1 and y ~= -1) then
		x = math.random((x-5), (x+36));
		y = math.random((y-10), (y+29));
		sysLog("活动x:"..x.."，y:"..y);
		pubFun_tab.tap(300,x,y);
		--720,96,778,119点击再次领取（领取双倍）
		x = math.random(720, 778);
		y = math.random(96, 119);
		pubFun_tab.doubleClick(300,x,y);
		--816,64,844,86领取完双倍，点关闭
		x = math.random(816, 844);
		y = math.random(64, 86);
		pubFun_tab.tap(300,x,y);
	else
		sysLog("对不起，没找到活动！");
	end	
	--8,6,54,55点击世界地图
	x = math.random(8, 54);
	y = math.random(6, 55);
	sysLog("世界地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--187,17,264,69点击天宫
	x = math.random(187, 264);
	y = math.random(17, 69);
	sysLog("天宫x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--436,232,460,241李靖
	x = math.random(436, 460);
	y = math.random(232, 241);
	sysLog("李靖x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--783,40,807,65关闭小地图
	x = math.random(783, 807);
	y = math.random(40, 65);
	sysLog("关闭小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--休息10s
	mSleep(10000);
	--632,314,884,344马上就去
	x = math.random(632, 884);
	y = math.random(314, 344);
	sysLog("马上就去x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--判断是否在战斗中
	local num = 0;
	while true do
		mSleep(7000);
		--判断是否在战斗中
		x, y = findMultiColorInRegionFuzzy(0x79624d,"-17|0|0x997150,-31|0|0x9f7451,-80|0|0xaf6d2d", 95, 3, 18, 101, 60);
		if (x ~= -1 and y ~= -1) then
			num = num + 1;
			sysLog("天庭第"..num.."次;");
			showHUD(hud,"天庭第"..num.."次",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
			while true do
				mSleep(10000);
				x, y = findMultiColorInRegionFuzzy(0x79624d,"-17|0|0x997150,-31|0|0x9f7451,-80|0|0xaf6d2d", 95, 3, 18, 101, 60);
				if(x == -1 and y == -1) then
					break;
				end
			end
		else
			--777,135,937,176再点一下继续做天
			x = math.random(777, 937);
			y = math.random(135, 176);
			sysLog("右边任务栏做天x:"..x.."，y:"..y);
			pubFun_tab.tap(300,x,y);
		end
		if(num == 60) then
			sysLog("天庭结束！");
			break;
		end
	end
end

function tiangui_funtab1080.gui()
end

function tiangui_funtab1080.gui()
end