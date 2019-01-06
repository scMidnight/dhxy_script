baotu_funtab1080_1920 = {};
baotu_funtab720_1440 = {};
require("DhxyUtils");
require("PubFun");

--720_1440宝图
function baotu_funtab720_1440.baotu(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"宝图任务",width, height);
	local x, y = 0, 0;
	mSleep(3000);
	--寻找活动并点击30,288,108,370
	local activityTabXY = pubFun_tab.findActivity(width, height);
	if(activityTabXY.isFound) then
		pubFun_tab.click(activityTabXY, "活动", math.random(23, 75), math.random(199, 247), "click");
		mSleep(3000);
		--找宝图
		pubFun_tab.clickBaoTu(width, height);
		mSleep(15000);
		--找对话框
		local c = pubFun_tab.findDialog(width, height);
		if (c) then
			--点宝图任务对话框选择第一个选项
			pubFun_tab.dialogBox(width, height, 1);
		end
		local nTime = mTime();--记录一个时间
		while true do
			mSleep(5000);
			--判断是否在战斗中
			local isPk = pubFun_tab.isPk(width, height);
			if (isPk) then
				while true do
					mSleep(2000);
					isPk = pubFun_tab.isPk(width, height);
					if(not isPk) then
						break;
					end
					nTime = mTime();
				end
			end
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 60) then
				pubFun_tab.showHud(hud,"开始挖宝",width, height);
				mSleep(2000);
				break;
			end
		end
		--挖宝开始
		--寻找包裹
		local clickTabXY = pubFun_tab.findPackage(width, height);
		if(clickTabXY.isFound) then
			mSleep(1000);
			--点击包裹
			pubFun_tab.click(clickTabXY, "包裹", math.random(1268, 1314), math.random(644, 691), "click");
			--休息3秒后寻找宝图
			mSleep(3000);
			--寻找宝图并点击
			if (pubFun_tab.findBoxBaoTu(width, height)) then
				while true do
					mSleep(2000);
					--使用
					if(pubFun_tab.findUse(width, height)) then
						nTime = mTime();
					end
					if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 60) then
						break;
					end
				end
			end
		else
			pubFun_tab.showHud(hud,"未找到包裹",width, height);
			mSleep(2000);
			pubFun_tab.showHud(hud,"宝图结束",width, height);
			mSleep(2000);
		end
	else
		pubFun_tab.showHud(hud,"未找到活动",width, height);
		mSleep(2000);
		pubFun_tab.showHud(hud,"宝图结束",width, height);
		mSleep(2000);
	end
	hideHUD(hud);
end

--1080_1920宝图
function baotu_funtab1080_1920.baotu(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"宝图任务",width, height);
	local x, y = 0, 0;
	mSleep(3000);
	--寻找活动并点击30,288,108,370
	local activityTabXY = pubFun_tab.findActivity(width, height);
	if(activityTabXY.isFound) then
		pubFun_tab.click(activityTabXY, "活动", math.random(30, 108), math.random(288, 370), "click");
		mSleep(3000);
		--找宝图
		pubFun_tab.clickBaoTu(width, height);
		mSleep(15000);
		--找对话框
		local c = pubFun_tab.findDialog(width, height);
		if (c) then
			--点宝图任务对话框选择第一个选项
			pubFun_tab.dialogBox(width, height, 1);
		end
		local nTime = mTime();--记录一个时间
		while true do
			mSleep(5000);
			--判断是否在战斗中
			local isPk = pubFun_tab.isPk(width, height);
			if (isPk) then
				while true do
					mSleep(2000);
					isPk = pubFun_tab.isPk(width, height);
					if(not isPk) then
						break;
					end
					nTime = mTime();
				end
			end
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 60) then
				pubFun_tab.showHud(hud,"开始挖宝",width, height);
				mSleep(2000);
				break;
			end
		end
		--挖宝开始
		--寻找包裹并点击
		local clickTabXY = pubFun_tab.findPackage(width, height);
		if(clickTabXY.isFound) then
			mSleep(1000);
			pubFun_tab.click(clickTabXY, "包裹", math.random(1663, 1717), math.random(960, 1022), "click");
			--休息3秒后寻找宝图
			mSleep(3000);
			--寻找宝图并点击
			if (pubFun_tab.findBoxBaoTu(width, height)) then
				while true do
					mSleep(2000);
					--使用
					if(pubFun_tab.findUse(width, height)) then
						nTime = mTime();
					end
					if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 60) then
						break;
					end
				end
			end
		else
			pubFun_tab.showHud(hud,"未找到包裹",width, height);
			mSleep(2000);
			pubFun_tab.showHud(hud,"宝图结束",width, height);
			mSleep(2000);
		end
	else
		pubFun_tab.showHud(hud,"未找到活动",width, height);
		mSleep(2000);
		pubFun_tab.showHud(hud,"宝图结束",width, height);
		mSleep(2000);
	end
	hideHUD(hud);
end