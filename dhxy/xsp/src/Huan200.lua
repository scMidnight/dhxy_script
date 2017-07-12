huan200_funtab540 = {};
huan200_funtab1080 = {};
require("PubFun");
local hud = createHUD();

local function tap(delay, x, y) 
	touchDown(1, x, y);
	mSleep(delay);
	touchUp(1, x, y);
	mSleep(delay);
end

function huan200_funtab540.pao()
	local num = 1;
	local x, y = 0, 0;
	mSleep(1000);
	--8,6,54,55点击世界地图
	x = math.random(8, 54);
	y = math.random(6, 55);
	sysLog("世界地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--98,36,160,67点击蟠桃园
	x = math.random(98, 160);
	y = math.random(36, 67);
	sysLog("蟠桃园x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	--556,418,610,427点击护园大将
	x = math.random(556, 610);
	y = math.random(418, 427);
	sysLog("护园大将x:"..x.."，y:"..y);
	tap(300,x,y);
	--628,41,651,63关闭小地图
	x = math.random(628, 651);
	y = math.random(41, 63);
	sysLog("小地图x:"..x.."，y:"..y);
	pubFun_tab.tap(300,x,y);
	mSleep(5000);
	for i = 1, 2 do
		--632,314,883,343找领取200对话框
		x, y = findMultiColorInRegionFuzzy(0xd78729,"7|43|0xe8b46b,10|57|0xd88c32,14|100|0xe7b064", 95, 609, 301, 903, 423)
		if (x ~= -1 and y ~= -1) then
			x = math.random(632, 883);
			y = math.random(314, 343);
			sysLog("领取200对话框x:"..x.."，y:"..y);
			pubFun_tab.tap(300,x,y);
			break;
		elseif (i == 2) then 
			sysLog("没有找到200对话框，任务结束！");
			lua_exit();
		end
	end
	while true do
		mSleep(7000);
		--诗词鬼
		while true do
			x, y = findMultiColorInRegionFuzzy(0xda9743,"16|53|0xdba04f,304|1|0xd98e35,302|54|0xd6b077", 95, 190, 296, 761, 441)
			if (x ~= -1 and y ~= -1) then
				--214,322,455,349找到就只点a
				x = math.random(214, 455);
				y = math.random(322, 349);
				pubFun_tab.tap(300,x,y);
				mSleep(10000);
				--找是否通过
				x, y = findMultiColorInRegionFuzzy(0xa9a48d,"409|-40|0xce985f,900|19|0x888577,473|-58|0xafac89,556|-69|0xe5a76d,633|-56|0xaba388", 95, 14, 323, 945, 520)
				if (x ~= -1 and y ~= -1) then
					--786,136,922,175没有通过的话再200环处点3下
					x = math.random(786, 922);
					y = math.random(136, 175);
					pubFun_tab.doubleClick(300,x,y);
					pubFun_tab.tap(300,x,y);
				else
					break;
				end
			end
		end
		--是否战斗
		x, y = findMultiColorInRegionFuzzy(0x79624d,"-17|0|0x997150,-31|0|0x9f7451,-80|0|0xaf6d2d", 95, 3, 18, 101, 60);
		if (x ~= -1 and y ~= -1) then
			--439,231,522,307随机点一下
			x = math.random(439, 522);
			y = math.random(231, 307);
			pubFun_tab.tap(300,x,y);
			while true do
				mSleep(10000);
				x, y = findMultiColorInRegionFuzzy(0x79624d,"-17|0|0x997150,-31|0|0x9f7451,-80|0|0xaf6d2d", 95, 3, 18, 101, 60);
				if(x == -1 and y == -1) then
					break;
				end
			end
		end
	end
end

function huan200_funtab1080.pao()
end