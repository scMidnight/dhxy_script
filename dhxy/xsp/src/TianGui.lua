tiangui_funtab = {};
tiangui_funtab1080 = {};
require("PubFun");


--540抓鬼
function tiangui_funtab.gui()
	local hud = createHUD();
	showHUD(hud,"抓鬼任务中",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
	local x, y = 0, 0;
	mSleep(1000);
	--先使用循环找是否在战斗中
	x, y = findMultiColorInRegionFuzzy(0xf6ca71,"10|2|0xf3c36f,3|-15|0xe1d6c2", 95, 62, 28, 112, 79);
	if (x ~= -1 and y ~= -1) then
		sysLog("战斗中！");
		while true do
			mSleep(10000);
			x, y = findMultiColorInRegionFuzzy(0xf6ca71,"10|2|0xf3c36f,3|-15|0xe1d6c2", 95, 62, 28, 112, 79);
			if(x == -1 and y == -1) then
				break;
			end
		end
	end
	mSleep(2000);
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
	mSleep(1000);
	--750,400,780,480点地府
	x = math.random(750, 780);
	y = math.random(400, 480);
	sysLog("地府x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(1000);
	--266,402,290,411找钟馗
	x = math.random(266, 290);
	y = math.random(402, 411);
	sysLog("钟馗x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(1000);
	--783,40,807,65关闭小地图
	x = math.random(783, 807);
	y = math.random(40, 65);
	sysLog("关闭小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(100,x,y);
	mSleep(500);
	--检查世界地图是否需要关闭
	x, y = findMultiColorInRegionFuzzy(0xea716f,"-6|-6|0xea716f,6|-6|0xea716f,-5|5|0xea716f,7|7|0xea716f", 95, 900, 1, 958, 58)
	if (x ~= -1 and y ~= -1) then
		--关闭世界地图923,11,946,35
		x = math.random(923, 946);
		y = math.random(11, 35);
		sysLog("关闭世界地图x:"..x.."，y:"..y);
		pubFun_tab.tap(100,x,y);
	end
	--休息10s
	mSleep(10000);
	--629,313,885,345;点击钟馗对话框中的我来帮你
	x = math.random((629), (885));
	y = math.random((313), (345));
	sysLog("我来帮你x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--判断是否在战斗中
	local nTime = mTime();--记录一个时间
	local num = 0;
	while true do
		mSleep(7000);
		--判断是否在战斗中
		x, y = findMultiColorInRegionFuzzy(0xf6ca71,"10|2|0xf3c36f,3|-15|0xe1d6c2", 95, 62, 28, 112, 79);
		if (x ~= -1 and y ~= -1) then
			num = num + 1;
			showHUD(hud,"抓鬼第"..num.."次",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
			--439,231,522,307随机点一下
			x = math.random(439, 522);
			y = math.random(231, 307);
			pubFun_tab.tap(300,x,y);
			while true do
				mSleep(10000);
				x, y = findMultiColorInRegionFuzzy(0xf6ca71,"10|2|0xf3c36f,3|-15|0xe1d6c2", 95, 62, 28, 112, 79);
				if(x == -1 and y == -1) then
					nTime = mTime();
					break;
				end
			end
		else
			--不在战斗中的时候判断是不是有是否继续抓鬼对话框
			for i = 1, 2 do
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
			end
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 180) then
				sysLog("抓鬼结束！");
				showHUD(hud,"抓鬼结束！",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
				mSleep(2000);
				break;
			end
		end
	end
	hideHUD(hud);
end
--540做天
function tiangui_funtab.tian()
	local hud = createHUD();
	showHUD(hud,"天庭任务",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
	local x, y = 0, 0;
	mSleep(1000);
	--先使用循环找是否在战斗中
	x, y = findMultiColorInRegionFuzzy(0xf6ca71,"10|2|0xf3c36f,3|-15|0xe1d6c2", 95, 62, 28, 112, 79);
	if (x ~= -1 and y ~= -1) then
		sysLog("战斗中！");
		while true do
			mSleep(10000);
			x, y = findMultiColorInRegionFuzzy(0xf6ca71,"10|2|0xf3c36f,3|-15|0xe1d6c2", 95, 62, 28, 112, 79);
			if(x == -1 and y == -1) then
				break;
			end
		end
	end
	mSleep(2000);
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
	mSleep(1000);
	--8,6,54,55点击世界地图
	x = math.random(8, 54);
	y = math.random(6, 55);
	sysLog("世界地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(1000);
	--187,17,264,69点击天宫
	x = math.random(187, 264);
	y = math.random(17, 60);
	sysLog("天宫x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(1000);
	--436,232,460,241李靖
	x = math.random(436, 460);
	y = math.random(232, 241);
	sysLog("李靖x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--783,40,807,65关闭小地图
	x = math.random(783, 807);
	y = math.random(40, 65);
	sysLog("关闭小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(100,x,y);
	mSleep(500);
	--检查世界地图是否需要关闭
	x, y = findMultiColorInRegionFuzzy(0xea716f,"-6|-6|0xea716f,6|-6|0xea716f,-5|5|0xea716f,7|7|0xea716f", 95, 900, 1, 958, 58)
	if (x ~= -1 and y ~= -1) then
		--关闭世界地图923,11,946,35
		x = math.random(923, 946);
		y = math.random(11, 35);
		sysLog("关闭世界地图x:"..x.."，y:"..y);
		pubFun_tab.tap(100,x,y);
	end
	--休息10s
	mSleep(8000);
	--632,314,884,344马上就去
	x = math.random(632, 884);
	y = math.random(314, 344);
	sysLog("马上就去x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--判断是否在战斗中
	local num = 0;
	local nTime = mTime();--记录一个时间
	while true do
		mSleep(7000);
		--判断是否在战斗中
		x, y = findMultiColorInRegionFuzzy(0xf6ca71,"10|2|0xf3c36f,3|-15|0xe1d6c2", 95, 62, 28, 112, 79);
		if (x ~= -1 and y ~= -1) then
			num = num + 1;
			sysLog("天庭第"..num.."次;");
			showHUD(hud,"天庭第"..num.."次",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
			--439,231,522,307随机点一下
			x = math.random(439, 522);
			y = math.random(231, 307);
			pubFun_tab.tap(300,x,y);
			while true do
				mSleep(10000);
				x, y = findMultiColorInRegionFuzzy(0xf6ca71,"10|2|0xf3c36f,3|-15|0xe1d6c2", 95, 62, 28, 112, 79);
				if(x == -1 and y == -1) then
					nTime = mTime();
					break;
				end
			end
		else
			--不在战斗中的时候判断是不是有是否继续做天对话框
			for i = 1, 2 do
				x, y = findMultiColorInRegionFuzzy(0xffffff,"137|2|0x90cfa8,137|31|0x2cb591,2|31|0x2dc19e,67|35|0x29d3b4,67|0|0xa9dbb7,-142|-5|0xdfaa66", 95, 294, 322, 668, 377);
				if (x ~= -1 and y ~= -1) then
					--516,333
					x = math.random(x, (x+134));
					y = math.random(y, (y+32));
					sysLog("确定继续x:"..x.."，y:"..y);
					pubFun_tab.tap(300,x,y);
				else
					sysLog("对不起，没找到是否继续做天对话框！");
				end
			end
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 180) then
				sysLog("天庭结束！");
				showHUD(hud,"天庭结束！",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
				mSleep(2000);
				break;
			end
		end
	end
	hideHUD(hud);
end

--1080抓鬼
function tiangui_funtab1080.gui()
	local hud = createHUD();
	showHUD(hud,"抓鬼任务",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
	local x, y = 0, 0;
	mSleep(1000);
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
	x, y = findMultiColorInRegionFuzzy(0xad2d31,"-13|-4|0xfffbde,-40|6|0xf7698c,-61|10|0xe6929c,-42|36|0xd64163,-12|39|0xce3d5a,16|-4|0xffd73a", 95, 15, 264, 125, 385)
	--先点活动
	if (x ~= -1 and y ~= -1) then
		x = math.random((x-34), (x+19));
		y = math.random((y-10), (y+60));
		sysLog("活动x:"..x.."，y:"..y);
		pubFun_tab.tap(300,x,y);
		--1443,194,1549,235点击再次领取（领取双倍）
		x = math.random(1443, 1549);
		y = math.random(194, 235);
		pubFun_tab.doubleClick(300,x,y);
		--1637,128,1688,170领取完双倍，点关闭
		x = math.random(1637, 1688);
		y = math.random(128, 170);
		pubFun_tab.tap(300,x,y);
	else
		sysLog("对不起，没找到活动！");
	end
	--13,15,109,110世界地图
	x = math.random(13, 109);
	y = math.random(15, 110);
	sysLog("世界地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(1000);
	--1514,782,1565,938地府
	x = math.random(1514, 1565);
	y = math.random(782, 938);
	sysLog("地府x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(1000);
	--531,803,579,823钟馗
	x = math.random(531, 579);
	y = math.random(803, 823);
	sysLog("钟馗x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--1566,81,1618,130关闭小地图
	x = math.random(1566, 1618);
	y = math.random(81, 130);
	sysLog("关闭小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(100,x,y);
	mSleep(500);
	--检测世界地图是否关闭
	x, y = findMultiColorInRegionFuzzy(0xef7173,"-12|-10|0xef7173,10|-11|0xe6716b,-14|14|0xe67173,15|15|0xef7173", 95, 1843, 24, 1896, 71)
	if (x ~= -1 and y ~= -1) then
		--关闭世界地图1846,24,1896,71
		x = math.random(1846, 1896);
		y = math.random(24, 71);
		sysLog("关闭世界地图x:"..x.."，y:"..y);
		pubFun_tab.tap(100,x,y);
	end
	--休息10s
	mSleep(10000);
	--1264,629,1762,687点击钟馗对话框中的我来帮你
	x, y = findMultiColorInRegionFuzzy(0xde9e52,"0|87|0xde963a,13|114|0xde9e4a,13|201|0xd6963a,22|228|0xd69642,38|315|0xde9a42", 95, 1228, 603, 1804, 953)
	if (x ~= -1 and y ~= -1) then
		x = math.random(1264, 1762);
		y = math.random(629, 687);
		sysLog("我来帮你x:"..x.."，y:"..y);
		pubFun_tab.tap(300,x,y);
	else
		sysLog("没有我来帮你");
		lua_exit();
	end
	--判断是否在战斗中
	local num = 0;
	local nTime = mTime();--记录一个时间
	while true do
		mSleep(7000);
		--判断是否在战斗中
		x, y = findMultiColorInRegionFuzzy(0x845d3a,"18|27|0x8c6142,85|48|0xa47552,117|4|0x7b6552", 95, 12, 23, 239, 145);
		if (x ~= -1 and y ~= -1) then
			--747,615,873,720点击一下
			x = math.random(747, 873);
			y = math.random(615, 720);
			pubFun_tab.tap(300,x,y);
			num = num + 1;
			showHUD(hud,"抓鬼第"..num.."次",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
			while true do
				mSleep(10000);
				x, y = findMultiColorInRegionFuzzy(0x845d3a,"18|27|0x8c6142,85|48|0xa47552,117|4|0x7b6552", 95, 12, 23, 239, 145);
				if(x == -1 and y == -1) then
					nTime = mTime();
					break;
				end
			end
		else
			--不在战斗中的时候判断是不是有是否继续抓鬼对话框
			for i = 1, 2 do
				x, y = findMultiColorInRegionFuzzy(0xfffbff,"-391|-10|0xd68121,-184|77|0xd69e52,109|-10|0x31b67b,136|76|0x42c6a4,11|23|0x4aba8c", 95, 574, 642, 1330, 762);
				if (x ~= -1 and y ~= -1) then
					--1299,722
					x = math.random(x, (x+268));
					y = math.random(y, (y+55));
					sysLog("确定继续x:"..x.."，y:"..y);
					pubFun_tab.tap(300,x,y);
				else
					sysLog("对不起，没找到是否继续抓鬼对话框！");
				end
			end
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 180) then
				sysLog("抓鬼结束！");
				showHUD(hud,"抓鬼结束",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
				mSleep(2000);
				break;
			end
		end
	end
	hideHUD(hud);
end
--1080做天
function tiangui_funtab1080.tian()
	local hud = createHUD();
	showHUD(hud,"天庭任务",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
	local x, y = 0, 0;
	mSleep(1000);
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
	--先点活动
	x, y = findMultiColorInRegionFuzzy(0xad2d31,"-13|-4|0xfffbde,-40|6|0xf7698c,-61|10|0xe6929c,-42|36|0xd64163,-12|39|0xce3d5a,16|-4|0xffd73a", 95, 15, 264, 125, 385)
	if (x ~= -1 and y ~= -1) then
		x = math.random((x-34), (x+19));
		y = math.random((y-10), (y+60));
		sysLog("活动x:"..x.."，y:"..y);
		pubFun_tab.tap(300,x,y);
		--1443,194,1549,235点击再次领取（领取双倍）
		x = math.random(1443, 1549);
		y = math.random(194, 235);
		pubFun_tab.doubleClick(300,x,y);
		--1637,128,1688,170领取完双倍，点关闭
		x = math.random(1637, 1688);
		y = math.random(128, 170);
		pubFun_tab.tap(300,x,y);
	else
		sysLog("对不起，没找到活动！");
	end
	--13,15,109,110世界地图
	x = math.random(13, 109);
	y = math.random(15, 110);
	sysLog("世界地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(1000);
	--404,22,511,112天宫
	x = math.random(404, 511);
	y = math.random(22, 112);
	sysLog("天宫x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(1000);
	--872,466,921,485李靖
	x = math.random(872, 921);
	y = math.random(466, 485);
	sysLog("李靖x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--1566,81,1618,130关闭小地图
	x = math.random(1566, 1618);
	y = math.random(81, 130);
	sysLog("关闭小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(100,x,y);
	mSleep(500);
	--检测世界地图是否关闭
	x, y = findMultiColorInRegionFuzzy(0xef7173,"-12|-10|0xef7173,10|-11|0xe6716b,-14|14|0xe67173,15|15|0xef7173", 95, 1843, 24, 1896, 71)
	if (x ~= -1 and y ~= -1) then
		--关闭世界地图1846,24,1896,71
		x = math.random(1846, 1896);
		y = math.random(24, 71);
		sysLog("关闭世界地图x:"..x.."，y:"..y);
		pubFun_tab.tap(100,x,y);
	end
	--休息8s
	mSleep(8000);
	--1264,629,1762,687点击李靖对话框中的马上就去
	x, y = findMultiColorInRegionFuzzy(0xde9e52,"0|87|0xde963a,13|114|0xde9e4a,13|201|0xd6963a,22|228|0xd69642,38|315|0xde9a42", 95, 1228, 603, 1804, 953)
	if (x ~= -1 and y ~= -1) then
		x = math.random(1264, 1762);
		y = math.random(629, 687);
		sysLog("马上就去x:"..x.."，y:"..y);
		pubFun_tab.tap(300,x,y);
	else
		sysLog("没有马上就去");
		lua_exit();
	end
	--判断是否在战斗中
	local num = 0;
	local nTime = mTime();--记录一个时间
	while true do
		mSleep(7000);
		--判断是否在战斗中
		x, y = findMultiColorInRegionFuzzy(0x845d3a,"18|27|0x8c6142,85|48|0xa47552,117|4|0x7b6552", 95, 12, 23, 239, 145);
		if (x ~= -1 and y ~= -1) then
			--747,615,873,720点击一下
			x = math.random(747, 873);
			y = math.random(615, 720);
			pubFun_tab.tap(300,x,y);
			num = num + 1;
			showHUD(hud,"做天第"..num.."次",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
			while true do
				mSleep(10000);
				x, y = findMultiColorInRegionFuzzy(0x845d3a,"18|27|0x8c6142,85|48|0xa47552,117|4|0x7b6552", 95, 12, 23, 239, 145);
				if(x == -1 and y == -1) then
					nTime = mTime();
					break;
				end
			end
		else
			--不在战斗中的时候判断是不是有是否继续做天对话框
			for i = 1, 2 do
				x, y = findMultiColorInRegionFuzzy(0xfffbff,"-391|-10|0xd68121,-184|77|0xd69e52,109|-10|0x31b67b,136|76|0x42c6a4,11|23|0x4aba8c", 95, 574, 642, 1330, 762);
				if (x ~= -1 and y ~= -1) then
					--1299,722
					x = math.random(x, (x+268));
					y = math.random(y, (y+55));
					sysLog("确定继续x:"..x.."，y:"..y);
					pubFun_tab.tap(300,x,y);
				else
					sysLog("对不起，没找到是否继续做天对话框！");
				end
			end
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 180) then
				sysLog("天庭任务结束！");
				showHUD(hud,"天庭任务结束",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
				mSleep(2000);
				break;
			end
		end
	end
	hideHUD(hud);
end