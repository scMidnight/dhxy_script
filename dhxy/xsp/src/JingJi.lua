jingji_funtab540 = {};
jingji_funtab1080 = {};
require("PubFun");
local hud = createHUD();

--540竞技场
function jingji_funtab540.jingji(flag)
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
	pubFun_tab.tap(300,x,y);
	--924,10,945,35关闭世界地图
	x = math.random(924, 945);
	y = math.random(10, 35);
	sysLog("关闭世界地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
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
		end	end
	--816,62,842,86关闭竞技场
	x = math.random(816, 842);
	y = math.random(62, 86);
	sysLog("关闭竞技场x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	hideHUD(hud);
end

--1080竞技场
function jingji_funtab1080.jingji(flag)
	sysLog("无");
end