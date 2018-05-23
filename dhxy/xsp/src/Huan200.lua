huan200_funtab1080 = {};
require("DhxyUtils");
require("PubFun");

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
				mSleep(5000);
				--检测是否答题对话框,是的话就选择a就可以
				local datiTabXY = pubFun_tab.findDaTi(width);
				if(pubFun_tab.click(datiTabXY, "诗词鬼或者歌词", math.random(432, 900), math.random(635, 707), "click")) then
					--在200环处点三下:1564,280,1860,345
					dhxyUtils_tab.doubleClick(300,math.random(1564, 1860),math.random(280, 345));
					dhxyUtils_tab.tap(300,math.random(1564, 1860),math.random(280, 345));
					mSleep(500);
					nTime = mTime();
				end
				mSleep(2000);
				--如果是要宝宝的任务
				if(pubFun_tab.maiBaobao(width)) then
					nTime = mTime();
				end
				mSleep(2000);
				--上交各种物品，选择药品，召唤兽
				if(pubFun_tab.shangJiao(width)) then
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
	end
	pubFun_tab.showHud(hud,"200环任务结束",width);
	mSleep(2000);
	hideHUD(hud);
end