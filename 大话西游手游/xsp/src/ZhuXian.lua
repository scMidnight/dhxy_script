zhuxian_funtab1080_1920 = {};
zhuxian_funtab1080_2160 = {};
require("DhxyUtils");
require("PubFun");

--1080_2160主线
function zhuxian_funtab1080_2160.zhuxian(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"主线任务",width, height);
	mSleep(3000);
	while true do
		while true do
			if(not pubFun_tab.isPk(width, height)) then
				break;
			end
		end
		--寻找右下角点击并使用
		while true do
			if(not pubFun_tab.findYouUse(width, height)) then
				break;
			end
		end
		--寻找主线任务
		pubFun_tab.findZhuXian(width, height);
		----寻找点击并屏幕继续
		while true do
			if(pubFun_tab.clickPMJX(width, height)) then
				tapXY = pubFun_tab.randomXY(1094,765,1415,897);
				dhxyUtils_tab.tap(math.random(50,150),tapXY.x,tapXY.y);
			else
				break;
			end
		end
		--检测主线任务结束
		if(pubFun_tab.findZhuXianEnd(width, height)) then
			break;
		end
	end
	pubFun_tab.showHud(hud,"主线任务结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end

--1080_1920主线
function zhuxian_funtab1080_1920.zhuxian(width, height)
	local hud = createHUD();
	pubFun_tab.showHud(hud,"主线任务",width, height);
	mSleep(3000);
	while true do
		while true do
			if(not pubFun_tab.isPk(width, height)) then
				break;
			end
		end
		--寻找右下角点击并使用
		while true do
			if(not pubFun_tab.findYouUse(width, height)) then
				break;
			end
		end
		--寻找主线任务
		pubFun_tab.findZhuXian(width, height);
		----寻找点击并屏幕继续
		while true do
			if(pubFun_tab.clickPMJX(width, height)) then
				tapXY = pubFun_tab.randomXY(1094,765,1415,897);
				dhxyUtils_tab.tap(math.random(50,150),tapXY.x,tapXY.y);
			else
				break;
			end
		end
		--检测主线任务结束
		if(pubFun_tab.findZhuXianEnd(width, height)) then
			break;
		end
	end
	pubFun_tab.showHud(hud,"主线任务结束",width, height);
	mSleep(2000);
	hideHUD(hud);
end