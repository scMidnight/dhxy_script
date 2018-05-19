wuhuan_funtab1080 = {};
require("DhxyUtils");
require("PubFun");

--1080五环
function wuhuan_funtab1080.wuhuan(width,flag)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"五环任务",width);
	local x,y = 0,0;
	mSleep(2000);
	--点击世界地图并回家
	pubFun_tab.goHome(width, "goHome");
	mSleep(2000);
	--再点一下世界地图
	pubFun_tab.goHome(width);
	mSleep(1000);
	--1034,369,1163,441长安
	dhxyUtils_tab.tap(300,math.random(1034, 1163),math.random(369, 441));
	mSleep(1000);
	--1120,657,1225,670云游大师
	dhxyUtils_tab.tap(0,math.random(1120, 1225),math.random(657, 670));
	--1666,85,1714,129关闭小地图特殊关闭，不调用方法，手动在此关闭
	dhxyUtils_tab.tap(300,math.random(1666, 1714),math.random(85, 129));
	mSleep(8000);
	--是否有对话框
	--找对话框
	local isDialog = pubFun_tab.findDialog(width);
	if (isDialog) then
		if(flag == "single") then
			--点对话框第一个选项
			pubFun_tab.dialogBox(width, 2);
		elseif(flag == "double") then
			--点对话框第二个选项
			pubFun_tab.dialogBox(width, 1);
		end
	end
	local nTime = mTime();--记录一个时间
	local pkNum = 0;
	--是否战斗
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
			break;
		end
	end
	pubFun_tab.showHud(hud,"五环结束",width);
	mSleep(2000);
	hideHUD(hud);
end