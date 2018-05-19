baotu_funtab1080 = {};
require("DhxyUtils");
require("PubFun");

--1080宝图
function baotu_funtab1080.baotu(width)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"宝图任务",width);
	local x, y = 0, 0;
	mSleep(3000);
	--寻找活动并点击30,288,108,370
	local activityTabXY = pubFun_tab.findActivity(width);
	pubFun_tab.click(activityTabXY, "活动", math.random(30, 108), math.random(288, 370), "click");
	mSleep(2000);
	--找宝图
	pubFun_tab.clickBaoTu(width);
	mSleep(15000);
	--找宝图任务对话框选择第一个选项
	pubFun_tab.dialogBox(width, 1);
	local nTime = mTime();--记录一个时间
	local pkNum = 0;
	while true do
		mSleep(5000);
		--判断是否在战斗中
		local isPk = pubFun_tab.isPk(width);
		if (isPk) then
			pkNum = pkNum + 1;
			sysLog("第"..pkNum.."次。");
			while true do
				mSleep(2000);
				isPk = pubFun_tab.isPk(width);
				if(not isPk) then
					break;
				end
				nTime = mTime();
			end
		end
		if(isPk == 15 or (tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 60)) then
			pubFun_tab.showHud(hud,"开始挖宝",width);
			mSleep(2000);
			break;
		end
	end
	--挖宝开始
	--寻找包裹并点击
	local clickTabXY = pubFun_tab.findPackage(width);
	pubFun_tab.click(clickTabXY, "包裹", math.random(1663, 1717), math.random(960, 1022), "double");
	--休息2秒后寻找宝图
	mSleep(2000);
	--寻找宝图并点击
	if (pubFun_tab.findBoxBaoTu(width)) then
		while true do
			mSleep(2000);
			--使用
			if(pubFun_tab.findUse(width)) then
				nTime = mTime();
			end
			if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 60) then
				break;
			end
		end
	end
	pubFun_tab.showHud(hud,"宝图任务结束",width);
	hideHUD(hud);
end