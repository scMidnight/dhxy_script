bangpai_funtab1080 = {};
require("DhxyUtils");
require("PubFun");

--1080帮派
function bangpai_funtab1080.bangpai(width)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"帮派任务",width);
	local x, y = 0, 0;
	mSleep(3000);
	--寻找活动并点击30,288,108,370
	local activityTabXY = pubFun_tab.findActivity(width);
	pubFun_tab.click(activityTabXY, "活动", math.random(30, 108), math.random(288, 370), "click");
	mSleep(2000);
	--点击帮派
	pubFun_tab.clickBangPai(width);
	mSleep(8000);
	--找帮派主管对话框选择第一个选项
	pubFun_tab.dialogBox(width, 1);
	--一直找买卖东西或者提示战斗的对话框
	while true do
		mSleep(5000);
		--是否有对话框
		local isDialog = false;
		--是否在战斗
		local isPk = false;
		--买各类东西
		pubFun_tab.buy(width);
		mSleep(1000);
		--找对话框
		isDialog = pubFun_tab.findDialog(width);
		if (isDialog) then
			--点对话框第一个选项
			pubFun_tab.dialogBox(width, 1);
		end
		mSleep(1000);
		--判断是否在战斗中
		isPk = pubFun_tab.isPk(width);
		if (isPk) then
			while true do
				mSleep(10000);
				isPk = pubFun_tab.isPk(width);
				if(not isPk) then
					break;
				end
			end
		end
		--检测是否结束
		local flag = false;
		for i = 1, 10 do
			mSleep(300);
			local isEnd = pubFun_tab.bangPaiEnd(width);
			if (isEnd) then
				flag = true;
				break;
			end
		end
		if(flag) then
			pubFun_tab.showHud(hud,"帮派任务结束",width);
			--把结束框点掉
			pubFun_tab.clickEnd(width);
			mSleep(2000);
			break;
		end
	end
	hideHUD(hud);
end