jingji_funtab1080 = {};
require("DhxyUtils");
require("PubFun");


--1080竞技场
function jingji_funtab1080.jingji(num,width)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"竞技场",width);
	mSleep(2000);
	--寻找包裹并点击
	local clickTabXY = pubFun_tab.findPackage(width);
	pubFun_tab.click(clickTabXY, "包裹", math.random(1663, 1717), math.random(960, 1022), "double");
	--休息3秒后点积分
	mSleep(2000);
	--点击积分1488,7,1541,37
	dhxyUtils_tab.tap(300,math.random(1488, 1541),math.random(7, 37));
	mSleep(2000);
	--寻找竞技场并点击
	clickTabXY = pubFun_tab.findJingJi(width);
	local x, y = clickTabXY.x, clickTabXY.y;
	pubFun_tab.click(clickTabXY, "竞技场", math.random(x+254, x+367), math.random(y-24, y+20), "click");
	--休息4秒点击对话框
	mSleep(4000);
	--单击对话框第一个选项
	pubFun_tab.dialogBox(width, 1);
	--选择挑战的目标集合
	local pkList = {
		{x1=1352,x2=1548,y1=205,y2=235},
		{x1=1357,x2=1541,y1=346,y2=408},
		{x1=1357,x2=1540,y1=522,y2=578},
		{x1=1356,x2=1543,y1=695,y2=755},
		{x1=1359,x2=1538,y1=869,y2=927}
	}
	--战斗的次数
	local pkNum = 0;
	while true do
		mSleep(3000);
		--检查是否战斗中
		local isPk = pubFun_tab.isPk(width);
		if (isPk) then
			pkNum = pkNum + 1;
			while true do
				mSleep(2000);
				isPk = pubFun_tab.isPk(width);
				if (not isPk) then
					break;
				end
			end
		else
			local index = math.random(1, 5);
			--随机找一个PK且生成随机坐标,点击目标挑战
			x = math.random(pkList[index].x1, pkList[index].x2);
			y = math.random(pkList[index].y1, pkList[index].y2);
			sysLog("挑战x:"..x.."，y:"..y);
			dhxyUtils_tab.tap(300,x,y);
		end
		if(pkNum == num) then
			pubFun_tab.showHud(hud,"竞技场结束",width);
			sysLog("竞技场10次完毕");
			mSleep(2000);
			break;
		end
	end
	--关闭竞技场
	pubFun_tab.close(width, "竞技场");
	hideHUD(hud);
end