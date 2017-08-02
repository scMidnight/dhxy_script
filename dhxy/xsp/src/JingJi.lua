jingji_funtab540 = {};
jingji_funtab1080 = {};
require("PubFun");


--540竞技场
function jingji_funtab540.jingji(flag)
	local hud = createHUD();
	showHUD(hud,"竞技场",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
	local x, y = 0, 0;
	mSleep(1000);
	--8,6,54,55点击世界地图
	x = math.random(8, 54);
	y = math.random(6, 55);
	sysLog("世界地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(1000);
	--616,135,651,174点击皇宫
	x = math.random(616, 651);
	y = math.random(135, 174);
	sysLog("皇宫x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(1000);
	--670,179,701,197金銮殿
	x = math.random(670, 701);
	y = math.random(179, 197);
	sysLog("金銮殿x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(10000);
	--758,43,781,63关闭小地图
	x = math.random(758, 781);
	y = math.random(43, 63);
	sysLog("关闭小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(200,x,y);
	--检测世界地图是否关闭
	x, y = findMultiColorInRegionFuzzy(0xef7173,"-12|-10|0xef7173,10|-11|0xe6716b,-14|14|0xe67173,15|15|0xef7173", 95, 1843, 24, 1896, 71)
	if (x ~= -1 and y ~= -1) then
		--关闭世界地图1846,24,1896,71
		x = math.random(1846, 1896);
		y = math.random(24, 71);
		sysLog("关闭世界地图x:"..x.."，y:"..y);
		pubFun_tab.tap(200,x,y);
	end
	mSleep(1000);
	--702,277,724,298点击传送阵
	x = math.random(702, 724);
	y = math.random(277, 298);
	sysLog("传送阵x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(1000);
	--76,22,161,55点击小地图
	x = math.random(76, 161);
	y = math.random(22, 55);
	sysLog("小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(1000);
	--506,397,543,408点程咬金
	x = math.random(506, 543);
	y = math.random(397, 408);
	sysLog("程咬金x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--765,39,789,62关闭小地图
	x = math.random(765, 789);
	y = math.random(39, 62);
	sysLog("关闭小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(5000);
	--找对话框
	x, y = findMultiColorInRegionFuzzy(0xd78729,"9|43|0xe8b46b,10|57|0xd88c32,14|100|0xe7b064", 90, 616, 302, 902, 479)
	if (x ~= -1 and y ~= -1) then
		--640,316,876,341点挑战
		x = math.random(640, 876);
		y = math.random(316, 341);
		sysLog("挑战x:"..x.."，y:"..y);
		pubFun_tab.tap(300,x,y);
	end
	local pkNum = 0;
	local pkList = {
		{x1=680,x2=766,y1=104,y2=116},
		{x1=681,x2=771,y1=175,y2=201},
		{x1=682,x2=767,y1=260,y2=289},
		{x1=680,x2=772,y1=349,y2=376},
		{x1=678,x2=772,y1=433,y2=463}
	}
	while true do
		mSleep(1000);
		--检查是否战斗中
		x, y = findMultiColorInRegionFuzzy(0xf6ca71,"10|2|0xf3c36f,3|-15|0xe1d6c2", 95, 62, 28, 112, 79);
		if (x ~= -1 and y ~= -1) then
			pkNum = pkNum + 1;
			while true do
				mSleep(10000);
				x, y = findMultiColorInRegionFuzzy(0xf6ca71,"10|2|0xf3c36f,3|-15|0xe1d6c2", 95, 62, 28, 112, 79);
				if(x == -1 and y == -1) then
					break;
				end
			end
		else
			local index = math.random(1, 5);
			--随机找一个PK且生成随机坐标,点击目标挑战
			x = math.random(pkList[index].x1, pkList[index].x2);
			y = math.random(pkList[index].y1, pkList[index].y2);
			sysLog("挑战x:"..x.."，y:"..y);
			pubFun_tab.tap(300,x,y);
		end
		if(pkNum == 5 and flag == 5) then
			showHUD(hud,"竞技场5次完毕",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
			sysLog("竞技场5次完毕");
			mSleep(2000);
			break;
		end
		if(pkNum == 5 and flag == 10) then
			--256,416,317,433点击刷新
			x = math.random(256, 317);
			y = math.random(416, 433);
			sysLog("刷新x:"..x.."，y:"..y);
			pubFun_tab.tap(300,x,y);
			mSleep(2000);
			x, y = findMultiColorInRegionFuzzy(0xffffff,"137|2|0x90cfa8,137|31|0x2cb591,2|31|0x2dc19e,67|35|0x29d3b4,67|0|0xa9dbb7,-142|-5|0xdfaa66", 95, 294, 322, 668, 377);
			if (x ~= -1 and y ~= -1) then
				--516,333
				x = math.random(x, (x+134));
				y = math.random(y, (y+32));
				sysLog("确定x:"..x.."，y:"..y);
				pubFun_tab.tap(300,x,y);
			else
				sysLog("对不起，没找确定刷新！");
			end
		end
		if(pkNum == 10) then
			showHUD(hud,"竞技场10次完毕",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
			sysLog("竞技场10次完毕");
			mSleep(2000);
			break;
		end
	end
	--816,62,842,86关闭竞技场
	x = math.random(816, 842);
	y = math.random(62, 86);
	sysLog("关闭竞技场x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	hideHUD(hud);
end

--1080竞技场
function jingji_funtab1080.jingji(flag)
	local hud = createHUD();
	showHUD(hud,"竞技场",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
	local x, y = 0, 0;
	mSleep(1000);
	--13,15,109,110世界地图
	x = math.random(13, 109);
	y = math.random(15, 110);
	sysLog("世界地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(1000);
	--1243,330,1296,380点击皇宫
	x = math.random(1243, 1296);
	y = math.random(330, 380);
	sysLog("皇宫x:"..x.."，y:"..y);
	pubFun_tab.tap(200,x,y);
	mSleep(1000);
	--1316,368,1424,388点击金銮殿
	x = math.random(1316, 1424);
	y = math.random(368, 388);
	sysLog("金銮殿x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--1515,86,1562,130关闭小地图
	x = math.random(1515, 1562);
	y = math.random(86, 130);
	sysLog("关闭小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--1849,24,1895,70关闭世界地图
	x = math.random(1849, 1895);
	y = math.random(24, 70);
	sysLog("关闭世界地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(7000);
	--1392,533,1450,568休息7秒后点击传送阵
	x = math.random(1392, 1450);
	y = math.random(533, 568);
	sysLog("传送阵x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(1000);
	--151,46,319,110点击小地图
	x = math.random(151, 319);
	y = math.random(46, 110);
	sysLog("小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(1000);
	--1012,796,1088,811程咬金
	x = math.random(1012, 1088);
	y = math.random(796, 811);
	sysLog("程咬金x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--1533,80,1575,128关闭小地图
	x = math.random(1533, 1575);
	y = math.random(80, 128);
	sysLog("关闭小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--休息4秒后找对话框
	for i = 1, 2 do
		mSleep(4000);
		x, y = findMultiColorInRegionFuzzy(0xde9e52,"-4|87|0xde963a,-3|114|0xde9e4a,14|201|0xde9a3a,56|228|0xd69642,49|315|0xd6963a", 95, 1230, 606, 1798, 943);
		if (x ~= -1 and y ~= -1) then
			--1268,632,1758,689点挑战竞技场
			x = math.random(1268, 1758);
			y = math.random(632, 689);
			sysLog("挑战竞技场x:"..x.."，y:"..y);
			pubFun_tab.tap(300,x,y);
			break;
		end
	end
	local pkNum = 0;
	local pkList = {
		{x1=1352,x2=1548,y1=205,y2=235},
		{x1=1357,x2=1541,y1=346,y2=408},
		{x1=1357,x2=1540,y1=522,y2=578},
		{x1=1356,x2=1543,y1=695,y2=755},
		{x1=1359,x2=1538,y1=869,y2=927}
	}
	while true do
		mSleep(1000);
		--检查是否战斗中
		x, y = findMultiColorInRegionFuzzy(0x845d3a,"18|27|0x8c6142,85|48|0xa47552,117|4|0x7b6552", 95, 12, 23, 239, 145);
		if (x ~= -1 and y ~= -1) then
			pkNum = pkNum + 1;
			while true do
				mSleep(10000);
				x, y = findMultiColorInRegionFuzzy(0x845d3a,"18|27|0x8c6142,85|48|0xa47552,117|4|0x7b6552", 95, 12, 23, 239, 145);
				if(x == -1 and y == -1) then
					break;
				end
			end
		else
			local index = math.random(1, 5);
			--随机找一个PK且生成随机坐标,点击目标挑战
			x = math.random(pkList[index].x1, pkList[index].x2);
			y = math.random(pkList[index].y1, pkList[index].y2);
			sysLog("挑战x:"..x.."，y:"..y);
			pubFun_tab.tap(300,x,y);
		end
		if(pkNum == 5 and flag == 5) then
			showHUD(hud,"竞技场5次完毕",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
			sysLog("竞技场5次完毕");
			mSleep(2000);
			break;
		end
		if(pkNum == 5 and flag == 10) then
			--507,831,635,866点击刷新
			x = math.random(507, 635);
			y = math.random(831, 866);
			sysLog("刷新x:"..x.."，y:"..y);
			pubFun_tab.tap(300,x,y);
			mSleep(2000);
			x, y = findMultiColorInRegionFuzzy(0xffffff,"256|5|0x8ccaa4,9|56|0x31b68c,265|57|0x31b68c,-315|-10|0xce8121", 95, 584, 637, 1350, 771);
			if (x ~= -1 and y ~= -1) then
				--1034,670,1298,730确定
				x = math.random(1034, 1298);
				y = math.random(670, 730);
				sysLog("确定x:"..x.."，y:"..y);
				pubFun_tab.tap(300,x,y);
			else
				sysLog("对不起，没找确定刷新！");
			end
		end
		if(pkNum == 10) then
			showHUD(hud,"竞技场10次完毕",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
			sysLog("竞技场10次完毕");
			mSleep(2000);
			break;
		end
	end
	--1637,131,1686,171关闭竞技场
	x = math.random(1637, 1686);
	y = math.random(131, 171);
	sysLog("关闭竞技场x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	hideHUD(hud);
end