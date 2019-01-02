accountSwitch_funtab720_1440 = {};
require("DhxyUtils");
require("PubFun");

--720_1440账号切换
function accountSwitch_funtab720_1440.switch(width, height, account, pwd, isRole, roleNum, isOk, accountNum)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"账号切换",width, height);
	mSleep(5000);
	if(isOk) then
		--首先寻找反向更多
		if(not pubFun_tab.findNoMore(width, height))then
			--没有找到反向更多则点一下 更多 
			local moreXYTab = pubFun_tab.findMore(width, height);
			pubFun_tab.click(moreXYTab, "更多", math.random(1365, 1405), math.random(636, 686), "click");
			mSleep(1000);
		end
		mSleep(3000);
		--点击设置
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(1264,639,1313,688).x,pubFun_tab.randomXY(1264,639,1313,688).y);
		mSleep(3000);
		--点击个人中心
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(692,569,733,610).x,pubFun_tab.randomXY(692,569,733,610).y);
		mSleep(3000);
		--点击切换账号
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(1228,160,1370,208).x,pubFun_tab.randomXY(1228,160,1370,208).y);
		mSleep(5000);
		--点击其他账号
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(643,530,790,548).x,pubFun_tab.randomXY(643,530,790,548).y);
		mSleep(3000);
		--点击网易邮箱
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(812,536,933,550).x,pubFun_tab.randomXY(812,536,933,550).y);
		mSleep(3000);
	end
	--输入账号密码功能
	pubFun_tab.input(width, height, account, pwd);
	--输入完后检查是否有登录按钮，有的话点一下
	if (pubFun_tab.isLoginBtn(width, height)) then
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(571,416,887,468).x,pubFun_tab.randomXY(571,416,887,468).y);
	end
	mSleep(3000);
	--判断是否还在登录界面，还在的话就是有问题
	if(not pubFun_tab.isLoginPage(width, height)) then
		--点完登录，判断是否需要选择角色，如果为0就不需要
		local x, y = 0, 0;
		if(tonumber(isRole) > tonumber("0")) then
			--点击服务器按钮
			dhxyUtils_tab.tap(100,pubFun_tab.randomXY(654,472,792,497).x,pubFun_tab.randomXY(654,472,792,497).y);
			mSleep(3000);
			--选择第几个角色
			local roleList = {
				{x1=473,x2=747,y1=119,y2=195},
				{x1=883,x2=1156,y1=120,y2=195},
				{x1=468,x2=745,y1=230,y2=306},
				{x1=881,x2=1153,y1=235,y2=305},
				{x1=469,x2=744,y1=344,y2=421},
				{x1=885,x2=1158,y1=344,y2=418}
			}
			local index = tonumber(roleNum);
			--随机点击角色坐标
			x = math.random(roleList[index].x1, roleList[index].x2);
			y = math.random(roleList[index].y1, roleList[index].y2);
			--点击角色
			dhxyUtils_tab.tap(100,x,y);
			mSleep(3000);
		end
		--点击开始游戏
		dhxyUtils_tab.tap(100,pubFun_tab.randomXY(634,572,837,615).x,pubFun_tab.randomXY(634,572,837,615).y);
		pubFun_tab.showHud(hud,"账号切换结束",width, height);
		mSleep(20000);
		hideHUD(hud);
		return true;
	else
		dialog("正在切换第"  .. accountNum .. "个账号，\n\n但是登录不成功，请检查账号密码，\n\n现在准备切换下一个账号，请确定");
		return false;
	end
end