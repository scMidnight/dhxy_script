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
	mSleep(10000);
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
		if(isPk == 5 or (tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 60)) then
			pubFun_tab.showHud(hud,"宝图任务结束",width);
			mSleep(2000);
			break;
		end
	end
	hideHUD(hud);
end