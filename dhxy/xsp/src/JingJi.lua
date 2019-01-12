jingji_funtab1080_1920 = {};
jingji_funtab1080_2160 = {};
jingji_funtab720_1440 = {};
require("DhxyUtils");
require("PubFun");

--1080_2160竞技场
function jingji_funtab1080_2160.jingji(num,width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"竞技场",width, height);
	mSleep(3000);
	local tapXY;
	--寻找包裹
	local clickTabXY = pubFun_tab.findPackage(width, height);
	if(clickTabXY.isFound) then
		--点击包裹
		tapXY = pubFun_tab.randomXY(1899,963,1969,1030);
		pubFun_tab.click(clickTabXY, "包裹", tapXY.x, tapXY.y, "click");
		--休息3秒后点积分
		mSleep(3000);
		--点击积分1612,5,1658,43
		tapXY = pubFun_tab.randomXY(1612,5,1658,43);
		dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
		mSleep(1500);
		--寻找竞技场并点击
		local jingJiXY = pubFun_tab.findJingJi(width, height);
		local x, y = jingJiXY.x, jingJiXY.y;
		pubFun_tab.click(clickTabXY, "竞技场", math.random(x+291, x+388), math.random(y-35, y+8), "click");
		--休息6秒点击对话框
		mSleep(6000);
		--单击对话框第一个选项
		pubFun_tab.dialogBox(width, height, 1);
		local nTime = mTime();--记录一个时间
		while true do
			mSleep(2000);
			--检查是否战斗中
			local isPk = pubFun_tab.isPk(width, height, "jingJi");
			if (isPk) then
				while true do
					mSleep(5000);
					isPk = pubFun_tab.isPk(width, height, "jingJi");
					if (not isPk) then
						break;
					end
					nTime = mTime();
				end
			else
				pubFun_tab.findTiaoZhan(width, height);
			end
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 60) then
				pubFun_tab.showHud(hud,"竞技场结束",width, height);
				--关闭竞技场
				pubFun_tab.close(width, height, "竞技场");
				mSleep(2000);
				break;
			end
		end
	else
		pubFun_tab.showHud(hud,"未找到包裹",width, height);
		--关闭竞技场
		pubFun_tab.close(width, height, "竞技场");
		mSleep(2000);
		pubFun_tab.showHud(hud,"竞技场结束",width, height);
		mSleep(2000);
	end
	hideHUD(hud);
end

--720_1440竞技场
function jingji_funtab720_1440.jingji(num,width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"竞技场",width, height);
	mSleep(3000);
	--寻找包裹
	local clickTabXY = pubFun_tab.findPackage(width, height);
	if(clickTabXY.isFound) then
		mSleep(1000);
		--点击包裹
		pubFun_tab.click(clickTabXY, "包裹", math.random(1268, 1314), math.random(644, 691), "click");
		--休息3秒后点积分
		mSleep(3000);
		--点击积分1069,4,1113,25
		dhxyUtils_tab.tap(300,math.random(1069, 1113),math.random(4, 25));
		mSleep(2000);
		--寻找竞技场并点击
		local jingJiXY = pubFun_tab.findJingJi(width, height);
		local x, y = jingJiXY.x, jingJiXY.y;
		pubFun_tab.click(clickTabXY, "竞技场", math.random(x+179, x+246), math.random(y-3, y+23), "click");
		--休息5秒点击对话框
		mSleep(5000);
		--单击对话框第一个选项
		pubFun_tab.dialogBox(width, height, 1);
		local nTime = mTime();--记录一个时间
		while true do
			mSleep(2000);
			--检查是否战斗中
			local isPk = pubFun_tab.isPk(width, height, "jingJi");
			if (isPk) then
				while true do
					mSleep(5000);
					isPk = pubFun_tab.isPk(width, height, "jingJi");
					if (not isPk) then
						break;
					end
					nTime = mTime();
				end
			else
				pubFun_tab.findTiaoZhan(width, height);
			end
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 60) then
				pubFun_tab.showHud(hud,"竞技场结束",width, height);
				--关闭竞技场
				pubFun_tab.close(width, height, "竞技场");
				mSleep(2000);
				break;
			end
		end
	else
		pubFun_tab.showHud(hud,"未找到包裹",width, height);
		--关闭竞技场
		pubFun_tab.close(width, height, "竞技场");
		mSleep(2000);
		pubFun_tab.showHud(hud,"竞技场结束",width, height);
		mSleep(2000);
	end
	hideHUD(hud);
end

--1080_1920竞技场
function jingji_funtab1080_1920.jingji(num,width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"竞技场",width, height);
	mSleep(3000);
	--寻找包裹
	local clickTabXY = pubFun_tab.findPackage(width, height);
	if(clickTabXY.isFound) then
		mSleep(1000);
		--点击包裹
		pubFun_tab.click(clickTabXY, "包裹", math.random(1663, 1717), math.random(960, 1022), "click");
		--休息3秒后点积分
		mSleep(3000);
		--点击积分1488,7,1541,37
		dhxyUtils_tab.tap(300,math.random(1488, 1541),math.random(7, 37));
		mSleep(2000);
		--寻找竞技场并点击
		clickTabXY = pubFun_tab.findJingJi(width, height);
		local x, y = clickTabXY.x, clickTabXY.y;
		pubFun_tab.click(clickTabXY, "竞技场", math.random(x+254, x+367), math.random(y-24, y+20), "click");
		--休息5秒点击对话框
		mSleep(5000);
		--单击对话框第一个选项
		pubFun_tab.dialogBox(width, height, 1);
		local nTime = mTime();--记录一个时间
		while true do
			mSleep(2000);
			--检查是否战斗中
			local isPk = pubFun_tab.isPk(width, height, "jingJi");
			if (isPk) then
				while true do
					mSleep(5000);
					isPk = pubFun_tab.isPk(width, height, "jingJi");
					if (not isPk) then
						break;
					end
					nTime = mTime();
				end
			else
				pubFun_tab.findTiaoZhan(width, height);
			end
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 60) then
				pubFun_tab.showHud(hud,"竞技场结束",width, height);
				--关闭竞技场
				pubFun_tab.close(width, height, "竞技场");
				mSleep(2000);
				break;
			end
		end
	else
		pubFun_tab.showHud(hud,"未找到包裹",width, height);
		--关闭竞技场
		pubFun_tab.close(width, height, "竞技场");
		mSleep(2000);
		pubFun_tab.showHud(hud,"竞技场结束",width, height);
		mSleep(2000);
	end
	hideHUD(hud);
end