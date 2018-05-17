wabao_funtab540 = {};
wabao_funtab1080 = {};
require("PubFun");


--540挖宝
function wabao_funtab540.wabao()
	local hud = createHUD();
	pubFun_tab.showHud(hud,"挖宝",12,1,-240,-170,192,30);
	local x, y = 0, 0;
	mSleep(2000);
	--先找包裹
	for i = 1, 10 do
		mSleep(1000);
		x, y = findMultiColorInRegionFuzzy(0xe79a3e,"-15|6|0x932620,15|30|0xd45955,2|31|0xcc4130,-16|16|0xfffddf,16|7|0xc55627", 95, 818, 463, 879, 528)
		if (x ~= -1 and y ~= -1) then
			--848  479
			x = math.random(830, 860);
			y = math.random(y, 515);
			sysLog("包裹x:"..x..",y:"..y);
			pubFun_tab.doubleClick(300,x,y);
			break;
		else
			sysLog("对不起，没找到包裹！");
			pubFun_tab.showHud(hud,"挖宝,没找到包裹",12,1,-240,-170,192,30);
		end
	end
	mSleep(500);
	--找宝图
	point = findMultiColorInRegionFuzzyExt(0xc44838,"8|-9|0x856959,0|22|0xf5efb9,-10|31|0x856958",95,467, 146, 801, 433);
	if (#point ~= 0) then
		for var = 1,#point do
			x = point[var].x;
			y = point[var].y;
			break;
		end
		--744,160,782,200宝图762,173
		x = math.random((x-18), (x+20));
		y = math.random((y-13), (y+27));
		sysLog("宝图x:"..x..",y:"..y);
		pubFun_tab.tap(300,x,y);
	else
			sysLog("对不起，没找到宝图！");
	end
	mSleep(1000);
	local nTime = mTime();--记录一个时间
	while true do
		--点使用
		x, y = findMultiColorInRegionFuzzy(0xffffff,"81|3|0x8acca5,1|26|0x2fae86,79|29|0x30b88f", 95, 222, 148, 721, 375)
		if (x ~= -1 and y ~= -1) then
			--609,188
			x = math.random(x, 690);
			y = math.random(y, 220);
			sysLog("使用x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			nTime = mTime();
		else
			sysLog("对不起，没找到使用！");
		end
		mSleep(1000);
		--点右下角使用
		x, y = findMultiColorInRegionFuzzy(0xfdfefd,"66|3|0x77c69f,1|19|0x32bf99,66|18|0x34be97", 95, 665, 282, 798, 432)
		if (x ~= -1 and y ~= -1) then
			--697,388
			x = math.random(x, 760);
			y = math.random(y, 409);
			sysLog("右下角使用x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			nTime = mTime();
		else
			sysLog("对不起，没找到右下角使用！")
		end
		if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 60) then
			sysLog("挖宝结束！");
			pubFun_tab.showHud(hud,"挖宝结束！",12,1,-240,-170,192,30);
			mSleep(2000);
			break;
		end
	end
	hideHUD(hud);
end


--1080挖宝
function wabao_funtab1080.wabao()
	local hud = createHUD();
	pubFun_tab.showHud(hud,"挖宝",30,1,-540,-340,260,50);
	local x, y = 0, 0;
	mSleep(2000);
	--上来找包裹点击
	for i = 1, 10 do
		mSleep(1000);
		x, y = findMultiColorInRegionFuzzy(0xad2831,"-29|19|0x942d21,26|22|0x942d21,4|23|0xbd6510,11|69|0xad1819,43|63|0x52baac", 95, 1637, 926, 1752, 1056);
		if (x ~= -1 and y ~= -1) then
			--1696,951
			x = math.random(1650, 1737);
			y = math.random(y, 1046);
			sysLog("包裹x:"..x..",y:"..y);
			pubFun_tab.doubleClick(300,x,y);
			break;
		else
			sysLog("对不起，没找到包裹！");
			pubFun_tab.showHud(hud,"挖宝,没找到包裹",30,1,-540,-340,260,50);
		end
	end
	mSleep(1000);
	--找宝图
	point = findMultiColorInRegionFuzzyExt(0xc54d42,"20|-18|0x84695a,3|31|0xe6db8c,-32|51|0x84695a",95,952, 295, 1592, 875);
	if (#point ~= 0) then
		for var = 1,#point do
			x = point[var].x;
			y = point[var].y;
			break;
		end
		--1484,320,1570,401宝图1523,347
		x = math.random((x-39), (x+47));
		y = math.random((y-27), (y+54));
		sysLog("宝图x:"..x..",y:"..y);
		pubFun_tab.tap(300,x,y);
	else
			sysLog("对不起，没找到宝图！");
	end
	mSleep(700);
	local nTime = mTime();--记录一个时间
	while true do
		--点使用
		x, y = findMultiColorInRegionFuzzy(0xffffff,"163|4|0x94cead,1|60|0x29ba94,167|61|0x31ba94", 95, 1114, 313, 1490, 518);
		if (x ~= -1 and y ~= -1) then
			--1220,382,1393,443
			x = math.random(x, 1393);
			y = math.random(y, 443);
			sysLog("使用x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			nTime = mTime();
		else
			sysLog("对不起，没找到使用！");
		end
		mSleep(1000);
		--点右下角使用
		x, y = findMultiColorInRegionFuzzy(0xffffff,"132|4|0x84c6a4,3|43|0x29be9c,131|39|0x31be94,162|-178|0xef8a63", 95, 1331, 555, 1598, 870);
		if (x ~= -1 and y ~= -1) then
			--1396,778,1531,823
			x = math.random(x, 1531);
			y = math.random(y, 823);
			sysLog("右下角使用x:"..x..",y:"..y);
			pubFun_tab.tap(300,x,y);
			nTime = mTime();
		else
			sysLog("对不起，没找到右下角使用！")
		end
		if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 60) then
			sysLog("挖宝结束！");
			pubFun_tab.showHud(hud,"挖宝结束！",30,1,-540,-340,260,50);
			mSleep(2000);
			break;
		end
	end
	hideHUD(hud);
end