dalisi_funtab540 = {};
dalisi_funtab1080 = {};
require("PubFun");

--540大理寺
function dalisi_funtab540.dalisi()
	local hud = createHUD();
	showHUD(hud,"大理寺答题",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
	local x, y = 0, 0;
	mSleep(2000);
	showHUD(hud,"大理寺答题结束",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
end

--1080大理寺
function dalisi_funtab1080.dalisi()
	local hud = createHUD();
	showHUD(hud,"大理寺答题",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
	local x, y = 0, 0;
	mSleep(2000);
	--13,15,109,110世界地图
	x = math.random(13, 109);
	y = math.random(15, 110);
	sysLog("世界地图x:"..x.."，y:"..y);
	pubFun_tab.tap(200,x,y);
	mSleep(1000);
	--1034,369,1163,441长安
	x = math.random(1034, 1163);
	y = math.random(369, 441);
	sysLog("长安x:"..x.."，y:"..y);
	pubFun_tab.tap(200,x,y);
	--331,434,410,449大理寺官员
	x = math.random(331, 410);
	y = math.random(434, 449);
	sysLog("大理寺官员x:"..x.."，y:"..y);
	pubFun_tab.tap(200,x,y);
	--1666,85,1714,129关闭小地图
	x = math.random(1666, 1714);
	y = math.random(85, 129);
	sysLog("关闭小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(200,x,y);
	mSleep(1000);
	--1870,47检查世界地图是否关闭
	x, y = findMultiColorInRegionFuzzy(0xef7173,"-12|-10|0xef7173,10|-11|0xe6716b,-14|14|0xe67173,15|15|0xef7173", 95, 1843, 24, 1896, 71)
	if (x ~= -1 and y ~= -1) then
		--关闭世界地图1846,24,1896,71
		x = math.random(1846, 1896);
		y = math.random(24, 71);
		sysLog("关闭世界地图x:"..x.."，y:"..y);
		pubFun_tab.tap(200,x,y);
	end
	mSleep(10000);
	--找官员对话框
	x, y = findMultiColorInRegionFuzzy(0xdea252,"-5|87|0xde963a,-6|114|0xde9e4a,-12|201|0xd6963a", 95, 1235, 602, 1805, 833)
	if (x ~= -1 and y ~= -1) then
		--1265,629,1767,689点击我要参加有奖问答
		x = math.random(1265, 1767);
		y = math.random(629, 689);
		sysLog("我要参加有奖问答x:"..x.."，y:"..y);
		pubFun_tab.tap(200,x,y);
	end
	mSleep(2000);
	local answerNum = 0;--回答次数
	while true do
		if(answerNum == 10) then
			x, y = findMultiColorInRegionFuzzy(0xf7ca10,"11|5|0xf7e710,-12|3|0xffeb10,228|-85|0xcec6b5", 90, 730, 665, 1042, 846)
			if (x ~= -1 and y ~= -1) then
				showHUD(hud,"大理寺答题结束",30,"0xffffffff","0x70161212",1,-540,-340,260,50);
				--点一下670,867,889,1039
				x = math.random(670, 889);
				y = math.random(867, 1039);
				sysLog("大理寺答题结束x:"..x.."，y:"..y);
				pubFun_tab.tap(200,x,y);
				mSleep(2000);
				hideHUD(hud);
				break;
			end
		end
		--检查是否答题界面
		x, y = findMultiColorInRegionFuzzy(0xde8a31,"25|105|0xde9e42,649|1|0xde9242,677|107|0xdea252", 95, 385, 604, 1520, 759)
		if (x ~= -1 and y ~= -1) then
			--选择a就可以432,635,900,707
			x = math.random(432, 900);
			y = math.random(635, 707);
			sysLog("选择a,x:"..x.."，y:"..y);
			pubFun_tab.tap(200,x,y);
			answerNum = answerNum + 1;
		end
		mSleep(1000);
	end
end