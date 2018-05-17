local appid = frontAppName();--获取当前应用ID
local width,height = getScreenSize();
sysLog(appid);
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
require("SuanGua");
require("LingXiu");
require("QianDao");
require("DaLiSi");
init("0",1);
--ui = 适配UI("ui.json",540);
ret,results = showUI("ui.json");
if(ret == 0) then lua_exit(); end--选择取消就结束脚本
local choices = results.CheckBoxTask1;--得到多选任务结果
local beiJuSetting = results.SetBeiJu;--北倶设置
local lingXiuSetting = results.SetLingXiu;--召唤兽灵修设置
local zhaohuanShou = results.ZhaoHuanShou;--第几个召唤兽要灵修
local wuHuanSetting = results.SetWuHuan;--五环设置
local choicesTab = dhxyUtils_tab.lua_string_split(choices,"@");--把多选任务结果转换成table
for i,v in pairs(choicesTab) do 
	--1080 start
	if(width == 1080) then
		if(v == "0") then--北倶挂机
			if(beiJuSetting == "0") then--5点结束
				beiJu_funtab1080.loopFun();
				beiJu_funtab1080.infiniteLoop();
			elseif(beiJuSetting == "1") then--5点带天
				beiJu_funtab1080.loopFun();
				beiJu_funtab1080.infiniteLoop();
				tiangui_funtab1080.tian();
			end
		end
		if(v == "1") then--抓鬼
			tiangui_funtab1080.gui();
		end
		if(v == "2") then--做天
			tiangui_funtab1080.tian();
		end
		if(v == "3") then --签到
			qiandao_funtab1080.qiandao(width);
		end
		if(v == "4") then --召唤兽灵修
			if(lingXiuSetting == "0") then
				lingxiu_funtab1080.lingxiu("经验",width,zhaohuanShou);
			elseif(lingXiuSetting == "1") then
				lingxiu_funtab1080.lingxiu("亲密",width,zhaohuanShou);
			end
		end
		if(v == "5") then --算卦
			suangua_funtab1080.suangua(width);
		end
		if(v == "6") then --大理寺答题
			dalisi_funtab1080.dalisi(width);
		end
		if(v == "7") then --竞技场
			jingji_funtab1080.jingji(10,width);
		end
		if(v == "8") then --帮派
			bangpai_funtab1080.bangpai(width);
		end
		if(v == "9") then --师门
			shimen_funtab1080.shimen(width);
		end
		if(v == "10") then --宝图
			baotu_funtab1080.baotu(width);
		end
		if(v == "11") then--五环
			if(wuHuanSetting == "0") then --单人五环
				wuhuan_funtab1080.wuhuan("single");
			elseif(wuHuanSetting == "1") then --双人五环
				wuhuan_funtab1080.wuhuan("double");
			end
		end
		if(v == "12") then --挖宝
			wabao_funtab1080.wabao();
		end
		if(v == "13") then --200环
			huan200_funtab1080.run();
		end
	end
	--1080 end
end

--得到当前小时的另一种方法
--string.sub(pubFun_tab.getNowDate(),9,10)