wuhuan_funtab1080_1920 = {};
wuhuan_funtab1080_2160 = {};
wuhuan_funtab720_1440 = {};
require("DhxyUtils");
require("PubFun");

--1080_2160五环
function wuhuan_funtab1080_2160.wuhuan(width, height,flag)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"五环任务",width, height);
	local x, y = 0, 0;
	local tapXY;
	mSleep(3000);
	--点击世界地图并回家
	pubFun_tab.goHome(width, height, "goHome");
	mSleep(1500);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width, height);
	mSleep(1500);
	--再点一下世界地图
	pubFun_tab.goHome(width, height);
	mSleep(1500);
	--1191,343,1333,487长安
	tapXY = pubFun_tab.randomXY(1191,343,1333,487);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	mSleep(1000);
	--云游大师
	tapXY = pubFun_tab.randomXY(1235,653,1344,676);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	--1783,81,1835,131关闭小地图
	tapXY = pubFun_tab.randomXY(1783,81,1835,131);
	dhxyUtils_tab.tap(math.random(100,300),tapXY.x,tapXY.y);
	mSleep(8000);
	--是否有对话框
	--找对话框
	local isDialog = pubFun_tab.findDialog(width, height);
	if (isDialog) then
		if(flag == "single") then
			--点对话框第二个选项
			pubFun_tab.dialogBox(width, height, 2);
		elseif(flag == "double") then
			--点对话框第一个选项
			pubFun_tab.dialogBox(width, height, 1);
		end
	end
	local nTime = mTime();--记录一个时间
	--是否战斗
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
		mSleep(2000);
		--点击解封技能格知道了
		pubFun_tab.iNowClick(width, height);
		mSleep(2000);
		--点击领悟技能知道了
		pubFun_tab.findLingWu(width, height);
		--检测是否小狐妖技能列表
		pubFun_tab.findFoxSkillListClick(width, height);
		if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 60) then
			break;
		end
	end
	pubFun_tab.showHud(hud,"五环结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end

--720_1440五环
function wuhuan_funtab720_1440.wuhuan(width, height,flag)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"五环任务",width, height);
	local x, y = 0, 0;
	mSleep(3000);
	--点击世界地图并回家
	pubFun_tab.goHome(width, height, "goHome");
	mSleep(1000);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width, height);
	mSleep(1000);
	--再点一下世界地图
	pubFun_tab.goHome(width, height);
	mSleep(1000);
	--780,238,891,332长安
	dhxyUtils_tab.tap(300,math.random(780, 891),math.random(238, 332));
	mSleep(1000);
	--827,435,894,449云游大师
	dhxyUtils_tab.tap(300,math.random(827, 894),math.random(435, 449));
	--1192,54,1225,86关闭小地图
	dhxyUtils_tab.tap(300,math.random(1192, 1225),math.random(54, 86));
	mSleep(8000);
	--是否有对话框
	--找对话框
	local isDialog = pubFun_tab.findDialog(width, height);
	if (isDialog) then
		if(flag == "single") then
			--点对话框第二个选项
			pubFun_tab.dialogBox(width, height, 2);
		elseif(flag == "double") then
			--点对话框第一个选项
			pubFun_tab.dialogBox(width, height, 1);
		end
	end
	local nTime = mTime();--记录一个时间
	--是否战斗
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
		mSleep(2000);
		--点击解封技能格知道了
		pubFun_tab.iNowClick(width, height);
		mSleep(2000);
		--点击领悟技能知道了
		pubFun_tab.findLingWu(width, height);
		--检测是否小狐妖技能列表
		pubFun_tab.findFoxSkillListClick(width, height);
		if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 60) then
			break;
		end
	end
	pubFun_tab.showHud(hud,"五环结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end

--1080_1920五环
function wuhuan_funtab1080_1920.wuhuan(width, height,flag)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"五环任务",width, height);
	local x,y = 0,0;
	mSleep(3000);
	--点击世界地图并回家
	pubFun_tab.goHome(width, height, "goHome");
	mSleep(2000);
	--查找世界地图是否关闭，没有的话就关闭
	pubFun_tab.findShiJieClose(width, height);
	mSleep(1000);
	--再点一下世界地图
	pubFun_tab.goHome(width, height);
	mSleep(1000);
	--1034,369,1163,441长安
	dhxyUtils_tab.tap(300,math.random(1034, 1163),math.random(369, 441));
	mSleep(1000);
	--1120,657,1225,670云游大师
	dhxyUtils_tab.tap(300,math.random(1120, 1225),math.random(657, 670));
	--1666,85,1714,129关闭小地图特殊关闭，不调用方法，手动在此关闭
	dhxyUtils_tab.tap(300,math.random(1666, 1714),math.random(85, 129));
	mSleep(8000);
	--是否有对话框
	--找对话框
	local isDialog = pubFun_tab.findDialog(width, height);
	if (isDialog) then
		if(flag == "single") then
			--点对话框第二个选项
			pubFun_tab.dialogBox(width, height, 2);
		elseif(flag == "double") then
			--点对话框第一个选项
			pubFun_tab.dialogBox(width, height, 1);
		end
	end
	local nTime = mTime();--记录一个时间
	--是否战斗
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
		mSleep(1000);
		--点击解封技能格知道了
		pubFun_tab.iNowClick(width, height);
		mSleep(2000);
		--点击领悟技能知道了
		pubFun_tab.findLingWu(width, height);
		--检测是否小狐妖技能列表
		pubFun_tab.findFoxSkillListClick(width, height);
		if(tonumber(string.format("%0.0f",(mTime() - nTime)/1000)) > 60) then
			break;
		end
	end
	pubFun_tab.showHud(hud,"五环结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end