local appid = frontAppName();--获取当前应用ID
local width,height = getScreenSize();
if (appid ~= "com.netease.dhxy") then
	dialog("请打开大话西游再运行该脚本！", 3);
	mSleep(1000);
	lua_exit();
end
require("BeiJu");
require("TianGui");
require("Huan200");
require("WuHuan");
init("0",1);
ret,results = showUI("ui.json");
if(width == 540) then
	if(ret == 1) then
		if (results.motorStyle == "0") then --motorStyle=0就是北倶
			beiJu_funtab.loopFun();
			pubFun_tab.infiniteLoop(beiJu_funtab.isLoop);
			lua_exit();
		elseif(results.motorStyle == "1") then--抓鬼
			tiangui_funtab.gui();
		elseif(results.motorStyle == "2") then --天庭
			tiangui_funtab.tian();
		elseif(results.motorStyle == "3") then -- 200(刚开始)
			huan200_funtab540.quanbu();
		elseif(results.motorStyle == "4") then -- 200(已开始)
			huan200_funtab540.neirong();
		end
	else
		sysLog("fuck");
	end
elseif(width == 1080) then
	if(ret == 1) then
		if (results.motorStyle == "0") then --motorStyle=0就是北倶
			beiJu_funtab1080.loopFun();
			pubFun_tab.infiniteLoop(beiJu_funtab1080.isLoop);
			lua_exit();
		elseif(results.motorStyle == "1") then--抓鬼
			tiangui_funtab1080.gui();
		elseif(results.motorStyle == "2") then --天庭
			tiangui_funtab1080.tian();
		elseif(results.motorStyle == "3") then -- 200(刚开始)
			huan200_funtab1080.quanbu();
		elseif(results.motorStyle == "4") then -- 200(已开始)
			huan200_funtab1080.neirong();
		end
	end
end

--得到当前小时的另一种方法
--string.sub(pubFun_tab.getNowDate(),9,10)