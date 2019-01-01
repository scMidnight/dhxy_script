huan200_funtab1080 = {};
huan200_funtab720 = {};
require("DhxyUtils");
require("PubFun");

--720的200环
function huan200_funtab720.run(width)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"200环",width);
	local x , y = 0, 0;
	mSleep(3000);
	--寻找活动并点击
	local activityTabXY = pubFun_tab.findActivity(width);
	if(activityTabXY.isFound) then
		pubFun_tab.click(activityTabXY, "活动", math.random(23, 75), math.random(199, 247), "click");
		mSleep(3000);
		--找200环并点击
		if(pubFun_tab.huan200Click(width)) then
			mSleep(6000);
			--找对话框
			local isDialog = pubFun_tab.findDialog(width);
			if(isDialog) then
				--点对话框第一个选项
				pubFun_tab.dialogBox(width, 1);
			end
			local nTime = mTime();--记录一个时间
			while true do
				mSleep(3000);
				--检测是否答题对话框,是的话就选择a就可以
				local datiTabXY = pubFun_tab.findDaTi200(width);
				if(datiTabXY.isFound) then
					pubFun_tab.click(datiTabXY, "200环答题", math.random(380, 652), math.random(422, 471), "click");
					mSleep(2000);
					--点击两次200环任务:1211,184,1376,237
					dhxyUtils_tab.doubleClick(300,math.random(1211, 1376),math.random(184, 237));
					nTime = mTime();
				end
				mSleep(2000);
				--找对话框，一般是战斗或者上交技能书那一环使用
				isDialog = pubFun_tab.findDialog(width);
				if(isDialog) then
					pubFun_tab.dialogBox(width, 1);
					nTime = mTime();
				end
				mSleep(2000);
				--点击领悟技能知道了
				if(pubFun_tab.findLingWu(width)) then
					nTime = mTime();
				end
				mSleep(2000);
				--上交各种物品，选择药品，召唤兽
				if(pubFun_tab.shangJiao(width)) then
					nTime = mTime();
				end
				mSleep(2000);
				--如果是要宝宝的任务
				if(pubFun_tab.maiBaobao(width)) then
					nTime = mTime();
				end
				mSleep(2000);
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
				--判断结束
				if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 120) then
					break;
				end
			end
		end
		pubFun_tab.showHud(hud,"200环结束",width);
		mSleep(2000);
	else
		pubFun_tab.showHud(hud,"未找到活动",width);
		mSleep(2000);
		pubFun_tab.showHud(hud,"200环结束",width);
		mSleep(2000);
	end
	hideHUD(hud);
end

--1080的200环
function huan200_funtab1080.run(width)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"200环任务",width);
	local x , y = 0, 0;
	mSleep(3000);
	--寻找活动并点击30,288,108,370
	local activityTabXY = pubFun_tab.findActivity(width);
	if(pubFun_tab.click(activityTabXY, "活动", math.random(30, 108), math.random(288, 370), "click")) then
		mSleep(2000);
		--找200环并点击
		if(pubFun_tab.huan200Click(width)) then
			mSleep(6000);
			--找对话框
			local isDialog = pubFun_tab.findDialog(width);
			if(isDialog) then
				--点对话框第一个选项
				pubFun_tab.dialogBox(width, 1);
			end
			local nTime = mTime();--记录一个时间
			while true do
				mSleep(3000);
				--检测是否答题对话框,是的话就选择a就可以
				local datiTabXY = pubFun_tab.findDaTi(width);
				if(pubFun_tab.click(datiTabXY, "诗词鬼或者歌词", math.random(432, 900), math.random(635, 707), "click")) then
					--在200环处点三下:1564,280,1860,345
					dhxyUtils_tab.doubleClick(300,math.random(1564, 1860),math.random(280, 345));
					dhxyUtils_tab.tap(300,math.random(1564, 1860),math.random(280, 345));
					mSleep(500);
					nTime = mTime();
				end
				mSleep(1500);
				--如果是要宝宝的任务
				if(pubFun_tab.maiBaobao(width)) then
					nTime = mTime();
				end
				mSleep(1500);
				--上交各种物品，选择药品，召唤兽
				if(pubFun_tab.shangJiao(width)) then
					nTime = mTime();
				end
				mSleep(1500);
				--找对话框，一般是战斗或者上交技能书那一环使用
				isDialog = pubFun_tab.findDialog(width);
				if(isDialog) then
					pubFun_tab.dialogBox(width, 1);
					nTime = mTime();
				end
				mSleep(1500);
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
				mSleep(1500);
				--点击领悟技能知道了
				if(pubFun_tab.findLingWu(width)) then
					nTime = mTime();
				end
				--判断结束
				if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 120) then
					break;
				end
			end
		end
	end
	pubFun_tab.showHud(hud,"200环任务结束",width);
	mSleep(2000);
	hideHUD(hud);
end