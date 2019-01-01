beiJu_funtab1080 = {};
beiJu_funtab720 = {};
require("DhxyUtils");
require("PubFun");
require("TianGui");

--北倶挂机方法720
function motor720(width, beiJuType)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"北俱",width);
	local x, y = 0, 0;
	mSleep(3000);
	--先看掉线
	pubFun_tab.isContinue(width);
	mSleep(2000);
	--点击世界地图并回家
	pubFun_tab.goHome(width, "goHome");
	mSleep(2000);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width);
	mSleep(2000);
	--再点一下世界地图
	pubFun_tab.goHome(width);
	mSleep(2000);
	--点击北俱芦洲:666,78,785,102
	dhxyUtils_tab.tap(300,math.random(666, 785), math.random(78, 102));
	mSleep(2000);
	--随便点小地图某个地方:444,512,498,570
	dhxyUtils_tab.tap(300,math.random(444, 498), math.random(512, 570));
	--1155,54,1190,88关闭小地图特殊关闭，不调用方法，手动在此关闭
	dhxyUtils_tab.tap(300,math.random(1155, 1190),math.random(54, 88));
	mSleep(2000);
	--寻找包裹
	local clickTabXY = pubFun_tab.findPackage(width);
	if(clickTabXY.isFound) then
		mSleep(1000);
		--点击包裹
		pubFun_tab.click(clickTabXY, "包裹", math.random(1268, 1314), math.random(644, 691), "click");
		mSleep(1000);
		--找引妖香并点击
		if(pubFun_tab.findYinYaoXiang(width)) then
			--点击使用
			pubFun_tab.findUse(width);
			mSleep(1000);
			--点击确定
			pubFun_tab.isContinue(width);
			mSleep(1000);
			--关闭包裹
			pubFun_tab.close(width, "包裹");
			mSleep(2000);
			--点击巡逻并点击
			pubFun_tab.patrol(width, true);
			mSleep(1000);
			local nTime = mTime();--记录一个时间
			while true do
				mSleep(10000);
				--判断是否在战斗中
				local isPk = pubFun_tab.isPk(width);
				if (isPk) then
					while true do
						mSleep(10000);
						isPk = pubFun_tab.isPk(width);
						if(not isPk) then
							break;
						end
						nTime = mTime();
					end
				end
				--验证确定并点击确定
				pubFun_tab.isContinue(width);
				--1.5分钟内没有进入战斗便结束
				if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 80) then
					break;
				end
			end
		end
		hideHUD(hud);
		if(beiJuType == "0") then ---无限北俱
			motor720(width, beiJuType);
		elseif(beiJuType == "1" and tonumber(dhxyUtils_tab.getNowHour()) >= 5) then --5点带天
			tiangui_funtab720.tian(width);
		elseif(beiJuType == "2" and tonumber(dhxyUtils_tab.getNowHour()) >= 5) then --5点捉鬼
			tiangui_funtab720.gui(width);
		else
			hideHUD(hud);
			motor720(width, beiJuType);
		end
	else
		pubFun_tab.showHud(hud,"未找到包裹",width);
		mSleep(2000);
		pubFun_tab.showHud(hud,"北俱结束",width);
		mSleep(2000);
		hideHUD(hud);
	end
end

--北倶挂机方法1080
function motor(width, beiJuType)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"北俱",width);
	local x, y = 0, 0;
	mSleep(3000);
	--先看掉线
	for i = 1, 2 do
		pubFun_tab.isContinue(width);
	end
	--查看是不是反向更多
	for i = 1, 2 do
		if(pubFun_tab.findNoMore(width)) then
			dhxyUtils_tab.tap(300,math.random(1808, 1872), math.random(976, 1040));
		end
		mSleep(1000);
	end
	mSleep(2000);
	--点一下世界地图
	pubFun_tab.goHome(width);
	mSleep(1000);
	--点击北俱芦洲:917,126,1035,250
	dhxyUtils_tab.tap(300,math.random(917, 1035), math.random(126, 250));
	mSleep(1000);
	--随便点小地图某个地方:542,789,704,876
	dhxyUtils_tab.tap(300,math.random(542, 704), math.random(789, 876));
	--1666,85,1714,129关闭小地图特殊关闭，不调用方法，手动在此关闭
	dhxyUtils_tab.tap(300,math.random(1666, 1714),math.random(85, 129));
	mSleep(1000);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width);
	mSleep(3000);
	--寻找包裹并点击
	local clickTabXY = pubFun_tab.findPackage(width);
	pubFun_tab.click(clickTabXY, "包裹", math.random(1663, 1717), math.random(960, 1022), "double");
	--休息1s
	mSleep(1000);
	--找引妖香并点击
	if(pubFun_tab.findYinYaoXiang(width)) then
		--点击使用
		pubFun_tab.findUse(width);
		mSleep(1000);
		--点击确定
		pubFun_tab.isContinue(width);
		mSleep(500);
		--关闭包裹
		pubFun_tab.close(width, "包裹");
		mSleep(2000);
		--点击巡逻并点击
		pubFun_tab.patrol(width, true);
		mSleep(1000);
		local nTime = mTime();--记录一个时间
		while true do
			mSleep(10000);
			--判断是否在战斗中
			local isPk = pubFun_tab.isPk(width);
			if (isPk) then
				while true do
					mSleep(2000);
					isPk = pubFun_tab.isPk(width);
					if(not isPk) then
						break;
					end
					nTime = mTime();
					mSleep(1500);
					--点击领悟技能知道了
					if(pubFun_tab.findLingWu(width)) then
						nTime = mTime();
					end
				end
			else
				if(tonumber(dhxyUtils_tab.getNowHour()) == 5 and beiJuType ~= "0") then--如果5点了
					if(pubFun_tab.patrol(width, false)) then
						--关闭巡逻
						dhxyUtils_tab.tap(300,math.random(923, 1024),math.random(207, 247));
						mSleep(500);
						--点击确定
						for i = 1, 2 do
							pubFun_tab.isContinue(width);
						end
						--查看是否又进入战斗了
						while true do
							mSleep(2000);
							isPk = pubFun_tab.isPk(width);
							if(not isPk) then
								break;
							end
							mSleep(1500);
							--点击领悟技能知道了
							pubFun_tab.findLingWu(width);
						end
						break;
					end
				end
			end
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 80) then
				break;
			end
		end
		if(beiJuType == "0") then ---无限北俱
			hideHUD(hud);
			motor(width, beiJuType);
		elseif(beiJuType == "1" and tonumber(dhxyUtils_tab.getNowHour()) >= 5) then --5点带天
			hideHUD(hud);
			tiangui_funtab1080.tian(width);
		elseif(beiJuType == "2" and tonumber(dhxyUtils_tab.getNowHour()) >= 5) then --5点捉鬼
			hideHUD(hud);
			tiangui_funtab1080.gui(width);
		else
			hideHUD(hud);
			motor(width, beiJuType);
		end
	end
	--点完包裹就找香
--	point = findMultiColorInRegionFuzzyExt(0x191819,"-11|11|0xfff7f7,-33|11|0xf7d77b,14|-1|0xb56921,-4|41|0xe6a273,-32|24|0xfff7f7",90,966, 301, 1591, 858);
--	if (#point ~= 0) then
--		for var = 1,#point do
--			x = point[var].x;
--			y = point[var].y;
--		end
--		x = math.random((x-50), (x+30));
--		y = math.random((y-15), (y+68));
--		sysLog("香x："..x..",y:"..y);
--		pubFun_tab.tap(300,x,y);
--	else
--		sysLog("对不起，没找到香！");
--	end
end
--北俱挂机方法入口1080
function beiJu_funtab1080.loopFun(width, beiJuType)
	sysLog("进入1080北俱调用方法！");
    motor(width, beiJuType);
--    setTimer(183000, beiJu_funtab1080.loopFun);
end
--北俱挂机方法入口720
function beiJu_funtab720.loopFun(width, beiJuType)
	sysLog("进入720北俱调用方法！");
    motor720(width, beiJuType);
--    setTimer(183000, beiJu_funtab1080.loopFun);
end