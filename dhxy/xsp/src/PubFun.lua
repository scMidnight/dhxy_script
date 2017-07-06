--公共方法页

pubFun_tab = {};

--单击
function pubFun_tab.tap(delay, x, y)
	touchDown(1, x, y);
	mSleep(delay+100);
	touchUp(1, x, y);
	mSleep(delay+1000);
end

--双击
function pubFun_tab.doubleClick(delay, x, y)
	touchDown(1, x, y);
	mSleep(delay+100);
	touchUp(1, x, y);
	mSleep(delay+1000);
	touchDown(1, x, y);
	mSleep(delay+100);
	touchUp(1, x, y);
	mSleep(delay+1000);
end

--无限循环，一般用来防止脚本自动结束
function pubFun_tab.infiniteLoop(isLoop)
	while isLoop do
		mSleep(1000);
	end
end

--获取当前时间 mTime()是UNIX时间戳
function pubFun_tab.getNowDate()
	return os.date("%Y%m%d%H%M%S",mTime()/1000);
end
--得到当前小时
function pubFun_tab.getNowHour()
	return os.date("%H",mTime()/1000);
end