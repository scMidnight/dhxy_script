wuhuan_funtab540 = {};
wuhuan_funtab1080 = {};

local function tap(delay, x, y) 
	touchDown(1, x, y);
	mSleep(delay);
	touchUp(1, x, y);
	mSleep(delay);
end

function wuhuan_funtab540.huhuan()
end

function wuhuan_funtab1080.huhuan()
	--13,15,109,110世界地图
	x = math.random(13, 109);
	y = math.random(15, 110);
	sysLog("世界地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--1040,393,1198,474长安
	x = math.random(1040, 1198);
	y = math.random(393, 474);
	sysLog("长安x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--1118,657,1226,675云游大师
	x = math.random(1118, 1226);
	y = math.random(657, 675);
	sysLog("云游大师x:"..x.."，y:"..y);
	tap(300,x,y);
	--1669,82,1715,129关闭小地图
	x = math.random(1669, 1715);
	y = math.random(82, 129);
	sysLog("关闭小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(10000);
	
end