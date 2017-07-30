local appid = frontAppName();--获取当前应用ID
local width,height = getScreenSize();
if (appid ~= "com.netease.dhxy") then
	dialog("请打开大话西游再运行该脚本！", 3);
	mSleep(1000);
	lua_exit();
end
require("ui");
require("BeiJu");
require("TianGui");
require("Huan200");
require("BangPai");
require("ShiMen");
require("BaoTu");
require("WuHuan");
require("WaBao");
require("JingJi");
init("0",1);
ui = 适配UI("ui.json",540);
ret,results = showUI(ui);
if(ret == 0) then lua_exit(); end--选择取消就结束脚本
local choices = results.CheckBoxTask1;--得到多选任务结果
local choicesTab = pubFun_tab.lua_string_split(choices,"@");--把多选任务结果转换成table
for i,v in pairs(choicesTab) do 
	if(width == 540) then--540分辨率下
		if(v == "0") then--北倶
			beiJu_funtab.loopFun();
			pubFun_tab.infiniteLoop(beiJu_funtab.isLoop);
		end
		if(v == "1") then--抓鬼
			tiangui_funtab.gui();
		end
		if(v == "2") then--做天
			tiangui_funtab.tian();
		end
		if(v == "3") then--200未领取
			huan200_funtab540.quanbu();
		end
		if(v == "4") then--200已领取
			huan200_funtab540.neirong();
		end
		if(v == "5") then --竞技场(打五次)
			jingji_funtab540.jingji(5);
		end
		if(v == "6") then --竞技场(刷新冷却打满次)
			jingji_funtab540.jingji(10);
		end
		if(v == "7") then --帮派
			bangpai_funtab540.bangpai();
		end
		if(v == "8") then --师门
			shimen_funtab540.shimen();
		end
		if(v == "9") then --宝图
			baotu_funtab540.baotu();
		end
		if(v == "10") then--单人五环
			wuhuan_funtab540.wuhuan("single");
		end
		if(v == "11") then--双人五环
			wuhuan_funtab540.wuhuan("double");
		end
		if(v == "12") then --挖宝
			wabao_funtab540.wabao();
		end
		if(v == "13") then --北倶5点带天
			beiJu_funtab.loopFun();
			pubFun_tab.infiniteLoop(beiJu_funtab.isLoop);
			tiangui_funtab.tian();
		end
	end
	if(width == 1080) then --1080分辨率下
		if(v == "0") then--北倶
			beiJu_funtab1080.loopFun();
			pubFun_tab.infiniteLoop(beiJu_funtab1080.isLoop);
		end
		if(v == "1") then--抓鬼
			tiangui_funtab1080.gui();
		end
		if(v == "2") then--做天
			tiangui_funtab1080.tian();
		end
		if(v == "3") then--200未领取
			huan200_funtab1080.quanbu();
		end
		if(v == "4") then--200已领取
			huan200_funtab1080.neirong();
		end
		if(v == "5") then --竞技场(打五次)
		end
		if(v == "6") then --竞技场(刷新冷却打满次)
		end
		if(v == "7") then --帮派
			bangpai_funtab1080.bangpai();
		end
		if(v == "8") then --师门
			shimen_funtab1080.shimen();
		end
		if(v == "9") then --宝图
			baotu_funtab1080.baotu();
		end
		if(v == "10") then--单人五环
			wuhuan_funtab1080.wuhuan("single");
		end
		if(v == "11") then--双人五环
			wuhuan_funtab1080.wuhuan("double");
		end
		if(v == "12") then --挖宝
		end
		if(v == "13") then --北倶5点带天
			beiJu_funtab1080.loopFun();
			pubFun_tab.infiniteLoop(beiJu_funtab1080.isLoop);
			tiangui_funtab1080.tian();
		end
	end
end

--得到当前小时的另一种方法
--string.sub(pubFun_tab.getNowDate(),9,10)