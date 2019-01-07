shimen_funtab1080_1920 = {};
shimen_funtab720_1440 = {};
require("DhxyUtils");
require("PubFun");

--720_1440师门
function shimen_funtab720_1440.shimen(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"师门任务",width, height);
	local x, y = 0, 0;
	mSleep(3000);
	--寻找活动并点击30,288,108,370
	local activityTabXY = pubFun_tab.findActivity(width, height);
	if(activityTabXY.isFound) then
		pubFun_tab.click(activityTabXY, "活动", math.random(23, 75), math.random(199, 247), "click");
		mSleep(3000);
		--点击师门
		pubFun_tab.clickShiMen(width, height);
		mSleep(8000);
		--找对话框
		local c = pubFun_tab.findDialog(width, height);
		if (c) then
			--点师门对话框选择第一个选项
			pubFun_tab.dialogBox(width, height, 1);
		end
		--一直找买卖东西或者提示战斗的对话框
		while true do
			mSleep(5000);
			--是否有对话框
			local isDialog = false;
			--是否在战斗
			local isPk = false;
			--买各类东西
			pubFun_tab.buy(width, height);
			mSleep(6000);
			--找对话框
			isDialog = pubFun_tab.findDialog(width, height);
			if (isDialog) then
				--点对话框第一个选项
				pubFun_tab.dialogBox(width, height, 1);
			end
			mSleep(6000);
			--判断是否在战斗中
			isPk = pubFun_tab.isPk(width, height);
			if (isPk) then
				mSleep(20000);
			end
			--点击领悟技能知道了
			pubFun_tab.findLingWu(width, height);
			--是否继续后30轮
			pubFun_tab.isContinue(width, height);
			--检测是否小狐妖技能列表
			pubFun_tab.findFoxSkillListClick(width, height);
			--检测是否结束
			local isEnd = pubFun_tab.shiMenEnd(width, height);
			if(isEnd) then
				pubFun_tab.showHud(hud,"师门任务结束",width, height);
				--把结束框点掉
				pubFun_tab.clickEnd(width, height);
				mSleep(1000);
				break;
			end
		end
		pubFun_tab.showHud(hud,"师门任务结束",width, height);
		mSleep(2000);
	else
		pubFun_tab.showHud(hud,"未找到活动",width, height);
		mSleep(2000);
		pubFun_tab.showHud(hud,"师门任务结束",width, height);
		mSleep(2000);
	end
	hideHUD(hud);
end

--1080_1920师门
function shimen_funtab1080_1920.shimen(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"师门任务",width, height);
	local x, y = 0, 0;
	mSleep(3000);
	--寻找活动并点击30,288,108,370
	local activityTabXY = pubFun_tab.findActivity(width, height);
	if(activityTabXY.isFound) then
		pubFun_tab.click(activityTabXY, "活动", math.random(30, 108), math.random(288, 370), "click");
		mSleep(3000);
		--点击师门
		pubFun_tab.clickShiMen(width, height);
		mSleep(8000);
		--找对话框
		local c = pubFun_tab.findDialog(width, height);
		if (c) then
			--点师门对话框选择第一个选项
			pubFun_tab.dialogBox(width, height, 1);
		end
		--一直找买卖东西或者提示战斗的对话框
		while true do
			mSleep(5000);
			--是否有对话框
			local isDialog = false;
			--是否在战斗
			local isPk = false;
			--买各类东西
			pubFun_tab.buy(width, height);
			mSleep(6000);
			--找对话框
			isDialog = pubFun_tab.findDialog(width, height);
			if (isDialog) then
				--点对话框第一个选项
				pubFun_tab.dialogBox(width, height, 1);
			end
			mSleep(6000);
			--判断是否在战斗中
			isPk = pubFun_tab.isPk(width, height);
			if (isPk) then
				mSleep(20000);
			end
			--检测是否小狐妖技能列表
			pubFun_tab.findFoxSkillListClick(width, height);
			--检测是否结束
			local isEnd = pubFun_tab.shiMenEnd(width, height);
			if (isEnd) then
				pubFun_tab.showHud(hud,"师门任务结束",width, height);
				pubFun_tab.clickEnd(width, height);
				mSleep(2000);
				break;
			end
		end
	else
		pubFun_tab.showHud(hud,"未找到活动",width, height);
		mSleep(2000);
		pubFun_tab.showHud(hud,"师门任务结束",width, height);
		mSleep(2000);
	end
	hideHUD(hud);
end