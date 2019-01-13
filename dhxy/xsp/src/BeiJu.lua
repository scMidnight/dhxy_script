beiJu_funtab1080_1920 = {};
beiJu_funtab1080_2160 = {};
beiJu_funtab720_1440 = {};
require("DhxyUtils");
require("PubFun");
require("TianGui");

--北倶挂机方法1080_2160
function motor1080_2160(width, height, beiJuType)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"北俱",width, height);
	local x, y = 0, 0;
	mSleep(3000);
	local tapXY;
	--先看掉线
	pubFun_tab.isContinue(width, height);
	mSleep(2000);
	--找更多按钮并点击，先找是否反向更多
	if(pubFun_tab.findNoMore(width, height)) then
		local moreXYTab = pubFun_tab.findMore(width, height);
		tapXY = pubFun_tab.randomXY(2045,976,2117,1039);
		pubFun_tab.click(moreXYTab, "更多", tapXY.x, tapXY.y, "click");
		mSleep(1000);
	end
	--点击世界地图并回家
	pubFun_tab.goHome(width, height, "goHome");
	mSleep(3000);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width, height);
	mSleep(1500);
	--再点一下世界地图
	pubFun_tab.goHome(width, height);
	mSleep(1500);
	--点击北俱芦洲:
	tapXY = pubFun_tab.randomXY(1038,110,1130,205);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	mSleep(3000);
	--随便点小地图某个地方
	tapXY = pubFun_tab.randomXY(666,809,750,872);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	--关闭小地图特殊关闭，不调用方法，手动在此关闭
	tapXY = pubFun_tab.randomXY(1732,81,1787,127);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	mSleep(3000);
	--寻找包裹
	local clickTabXY = pubFun_tab.findPackage(width, height);
	if(clickTabXY.isFound) then
		mSleep(1000);
		--点击包裹
		tapXY = pubFun_tab.randomXY(1899,963,1969,1030);
		pubFun_tab.click(clickTabXY, "包裹", tapXY.x, tapXY.y, "click");
		mSleep(3000);
		--找引妖香并点击
		if(pubFun_tab.findYinYaoXiang(width, height)) then
			--点击使用
			pubFun_tab.findUse(width, height);
			mSleep(3000);
			--点击确定
			pubFun_tab.isContinue(width, height);
			mSleep(1000);
			--关闭包裹
			pubFun_tab.close(width, height, "包裹");
			mSleep(2000);
			--点击巡逻并点击
			pubFun_tab.patrol(width, height, true);
			mSleep(1000);
			local nTime = mTime();--记录一个时间
			while true do
				mSleep(10000);
				--判断是否在战斗中
				local isPk = pubFun_tab.isPk(width, height);
				if (isPk) then
					while true do
						mSleep(10000);
						isPk = pubFun_tab.isPk(width, height);
						if(not isPk) then
							break;
						end
						nTime = mTime();
					end
				end
				--验证确定并点击确定
				pubFun_tab.isContinue(width, height);
				--1.5分钟内没有进入战斗便结束
				if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 80) then
					break;
				end
			end
		end
		hideHUD(hud);
		if(beiJuType == "0") then ---无限北俱
			motor1080_2160(width, height, beiJuType);
		elseif(beiJuType == "1" and tonumber(dhxyUtils_tab.getNowHour()) >= 5) then --5点带天
			tiangui_funtab1080_2160.tian(width, height);
		elseif(beiJuType == "2" and tonumber(dhxyUtils_tab.getNowHour()) >= 5) then --5点捉鬼
			tiangui_funtab1080_2160.gui(width, height);
		else
			motor1080_2160(width, height, beiJuType);
		end
	else
		pubFun_tab.showHud(hud,"未找到包裹",width, height);
		mSleep(2000);
		pubFun_tab.showHud(hud,"北俱结束",width, height);
		mSleep(2000);
		hideHUD(hud);
	end
end

--北倶挂机方法720_1440
function motor720_1440(width, height, beiJuType)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"北俱",width, height);
	local x, y = 0, 0;
	mSleep(3000);
	--先看掉线
	pubFun_tab.isContinue(width, height);
	mSleep(2000);
	--找更多按钮并点击，先找是否反向更多
	if(pubFun_tab.findNoMore(width, height)) then
		local moreXYTab = pubFun_tab.findMore(width, height);
		pubFun_tab.click(moreXYTab, "更多", math.random(1365, 1405), math.random(636, 686), "click");
		mSleep(1000);
	end
	--点击世界地图并回家
	pubFun_tab.goHome(width, height, "goHome");
	mSleep(3000);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width, height);
	mSleep(3000);
	--再点一下世界地图
	pubFun_tab.goHome(width, height);
	mSleep(3000);
	--点击北俱芦洲:666,78,785,102
	dhxyUtils_tab.tap(300,math.random(666, 785), math.random(78, 102));
	mSleep(3000);
	--随便点小地图某个地方:444,512,498,570
	dhxyUtils_tab.tap(300,math.random(444, 498), math.random(512, 570));
	--1155,54,1190,88关闭小地图特殊关闭，不调用方法，手动在此关闭
	dhxyUtils_tab.tap(300,math.random(1155, 1190),math.random(54, 88));
	mSleep(3000);
	--寻找包裹
	local clickTabXY = pubFun_tab.findPackage(width, height);
	if(clickTabXY.isFound) then
		mSleep(1000);
		--点击包裹
		pubFun_tab.click(clickTabXY, "包裹", math.random(1268, 1314), math.random(644, 691), "click");
		mSleep(3000);
		--找引妖香并点击
		if(pubFun_tab.findYinYaoXiang(width, height)) then
			--点击使用
			pubFun_tab.findUse(width, height);
			mSleep(3000);
			--点击确定
			pubFun_tab.isContinue(width, height);
			mSleep(1000);
			--关闭包裹
			pubFun_tab.close(width, height, "包裹");
			mSleep(2000);
			--点击巡逻并点击
			pubFun_tab.patrol(width, height, true);
			mSleep(1000);
			local nTime = mTime();--记录一个时间
			while true do
				mSleep(10000);
				--判断是否在战斗中
				local isPk = pubFun_tab.isPk(width, height);
				if (isPk) then
					while true do
						mSleep(10000);
						isPk = pubFun_tab.isPk(width, height);
						if(not isPk) then
							break;
						end
						nTime = mTime();
					end
				end
				--验证确定并点击确定
				pubFun_tab.isContinue(width, height);
				--1.5分钟内没有进入战斗便结束
				if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 80) then
					break;
				end
			end
		end
		hideHUD(hud);
		if(beiJuType == "0") then ---无限北俱
			motor720_1440(width, height, beiJuType);
		elseif(beiJuType == "1" and tonumber(dhxyUtils_tab.getNowHour()) >= 5) then --5点带天
			tiangui_funtab720_1440.tian(width, height);
		elseif(beiJuType == "2" and tonumber(dhxyUtils_tab.getNowHour()) >= 5) then --5点捉鬼
			tiangui_funtab720_1440.gui(width, height);
		else
			motor720_1440(width, height, beiJuType);
		end
	else
		pubFun_tab.showHud(hud,"未找到包裹",width, height);
		mSleep(2000);
		pubFun_tab.showHud(hud,"北俱结束",width, height);
		mSleep(2000);
		hideHUD(hud);
	end
end

--北倶挂机方法1080_1920
function motor1080_1920(width, height, beiJuType)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"北俱",width, height);
	local x, y = 0, 0;
	mSleep(3000);
	--先看掉线
	pubFun_tab.isContinue(width, height);
	--查看是不是反向更多
	if(pubFun_tab.findNoMore(width, height)) then
		dhxyUtils_tab.tap(300,math.random(1808, 1872), math.random(976, 1040));
	end
	mSleep(3000);
	--点击世界地图并回家
	pubFun_tab.goHome(width, height, "goHome");
	mSleep(3000);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width, height);
	mSleep(3000);
	--再点一下世界地图
	pubFun_tab.goHome(width, height);
	mSleep(3000);
	--点击北俱芦洲:917,126,1035,250
	dhxyUtils_tab.tap(300,math.random(917, 1035), math.random(126, 250));
	mSleep(3000);
	--随便点小地图某个地方:542,789,704,876
	dhxyUtils_tab.tap(300,math.random(542, 704), math.random(789, 876));
	--1610,87,1664,128关闭小地图特殊关闭，不调用方法，手动在此关闭
	dhxyUtils_tab.tap(300,math.random(1610, 1664),math.random(87, 128));
	mSleep(3000);
	--寻找包裹并点击
	local clickTabXY = pubFun_tab.findPackage(width, height);
	if(clickTabXY.isFound) then
		mSleep(3000);
		pubFun_tab.click(clickTabXY, "包裹", math.random(1663, 1717), math.random(960, 1022), "click");
		mSleep(3000);
		--找引妖香并点击
		if(pubFun_tab.findYinYaoXiang(width, height)) then
			--点击使用
			pubFun_tab.findUse(width, height);
			mSleep(1000);
			--点击确定
			pubFun_tab.isContinue(width, height);
			mSleep(1000);
			--关闭包裹
			pubFun_tab.close(width, height, "包裹");
			mSleep(2000);
			--点击巡逻并点击
			pubFun_tab.patrol(width, height, true);
			mSleep(1000);
			local nTime = mTime();--记录一个时间
			while true do
				mSleep(10000);
				--判断是否在战斗中
				local isPk = pubFun_tab.isPk(width, height);
				if (isPk) then
					while true do
						mSleep(10000);
						isPk = pubFun_tab.isPk(width, height);
						if(not isPk) then
							break;
						end
						nTime = mTime();
					end
				end
				--验证确定并点击确定
				pubFun_tab.isContinue(width, height);
				--1.5分钟内没有进入战斗便结束
				if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 80) then
					break;
				end
			end
		end
		hideHUD(hud);
		if(beiJuType == "0") then ---无限北俱
			motor_1080_1920(width, height, beiJuType);
		elseif(beiJuType == "1" and tonumber(dhxyUtils_tab.getNowHour()) >= 5) then --5点带天
			tiangui_funtab1080_1920.tian(width, height);
		elseif(beiJuType == "2" and tonumber(dhxyUtils_tab.getNowHour()) >= 5) then --5点捉鬼
			tiangui_funtab1080_1920.gui(width, height);
		else
			motor_1080_1920(width, height, beiJuType);
		end
	else
		pubFun_tab.showHud(hud,"未找到包裹",width, height);
		mSleep(2000);
		pubFun_tab.showHud(hud,"北俱结束",width, height);
		mSleep(2000);
		hideHUD(hud);
	end
end
--北俱挂机方法入口1080_1920
function beiJu_funtab1080_1920.loopFun(width, height, beiJuType)
	sysLog("进入1080北俱调用方法！");
    motor1080_1920(width, height, beiJuType);
--    setTimer(183000, beiJu_funtab1080.loopFun);
end
--北俱挂机方法入口720_1440
function beiJu_funtab720_1440.loopFun(width, height, beiJuType)
	sysLog("进入720北俱调用方法！");
    motor720_1440(width, height, beiJuType);
--    setTimer(183000, beiJu_funtab1080.loopFun);
end

function beiJu_funtab1080_2160.loopFun(width, height, beiJuType)
	sysLog("进入2160北俱调用方法！");
    motor1080_2160(width, height, beiJuType);
end