wabao_funtab540 = {};
wabao_funtab1080 = {};
require("PubFun");
local hud = createHUD();

--540挖宝
function wabao_funtab540.wabao()
	showHUD(hud,"挖宝",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
	local x, y = 0, 0;
	mSleep(2000);
	--先找包裹
	x, y = findMultiColorInRegionFuzzy(0xe79a3e,"-15|6|0x932620,15|30|0xd45955,2|31|0xcc4130,-16|16|0xfffddf,16|7|0xc55627", 95, 818, 463, 879, 528)
	if (x ~= -1 and y ~= -1) then
		--848  479
		x = math.random(830, 860);
		y = math.random(y, 515);
		sysLog("包裹x:"..x..",y:"..y);
		pubFun_tab.doubleClick(300,x,y);
	else
		sysLog("对不起，没找到包裹！");
	end
	mSleep(500);
	--找宝图
	point = findMultiColorInRegionFuzzyExt(0xc44838,"8|-9|0x856959,0|22|0xf5efb9,-10|31|0x856958",90,467, 146, 801, 433);
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
	mSleep(500);
	local nTime = mTime();--记录一个时间
	while true do
		--点使用
		x, y = findMultiColorInRegionFuzzy(0xffffff,"81|3|0x8acca5,1|26|0x2fae86,79|29|0x30b88f", 90, 222, 148, 721, 375)
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
		x, y = findMultiColorInRegionFuzzy(0xfdfefd,"66|3|0x77c69f,1|19|0x32bf99,66|18|0x34be97", 90, 665, 282, 798, 432)
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
			showHUD(hud,"挖宝结束！",12,"0xffffffff","0x70161212",1,-240,-170,192,30);
			mSleep(2000);
			break;
		end
	end
	hideHUD(hud);
end


--1080挖宝
function wabao_funtab1080.wabao()
	
end