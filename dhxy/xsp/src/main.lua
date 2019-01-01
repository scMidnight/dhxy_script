require("DhxyUtils");
local appid = frontAppName();--获取当前应用ID
local width,height = getScreenSize();
sysLog(appid);
sysLog(width);--720
sysLog(height);--1440
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
require("JingJi");
require("SuanGua");
require("LingXiu");
require("QianDao");
require("DaLiSi");
require("HuoYue");
init(appid,1);
--ui = 适配UI("ui.json",540);
local ret, results;
if(width == 720) then
	ret,results = showUI("ui720.json");
elseif(width == 1080) then
	ret,results = showUI("ui1080.json");
else
	lua_exit();
end

if(ret == 0) then lua_exit(); end--选择取消就结束脚本
local choices1 = results.CheckBoxTask1;--得到1多选任务结果
local choices2 = results.CheckBoxTask2;--得到2多选任务结果
local choices3 = results.CheckBoxTask3;--得到3多选任务结果
local choices4 = results.CheckBoxTask4;--得到4多选任务结果
local beiJuSetting = results.SetBeiJu;--北倶设置
local linxiuType = results.SetLingXiuType;--灵修类型选择
local lingXiuSetting = results.SetLingXiu;--灵修设置
local zhaohuanShou = results.ZhaoHuanShou;--第几个召唤兽要灵修
local wuHuanSetting = results.SetWuHuan;--五环设置
local richangEnd = results.SetEnd;--所选任务完成后
local choicesTab1 = dhxyUtils_tab.lua_string_split(choices1,"@");--把1多选任务结果转换成table
local choicesTab2 = dhxyUtils_tab.lua_string_split(choices2,"@");--把2多选任务结果转换成table
local choicesTab3 = dhxyUtils_tab.lua_string_split(choices3,"@");--把3多选任务结果转换成table
local choicesTab4 = dhxyUtils_tab.lua_string_split(choices4,"@");--把3多选任务结果转换成table
--第一组
for i,v in pairs(choicesTab1) do
	if(width == 720) then
		if(v == "0") then --北俱
			if(beiJuSetting == "0") then--无限北俱
				beiJu_funtab720.loopFun(width, "0");
			elseif(beiJuSetting == "1") then--5点带天
				beiJu_funtab720.loopFun(width, "1");
			elseif(beiJuSetting == "2") then --5点捉鬼
				beiJu_funtab720.loopFun(width, "2");
			end
		end
		if(v == "1") then --抓鬼
			tiangui_funtab720.gui(width);
		end
		if(v == "2") then --做天
			tiangui_funtab720.tian(width);
		end
		if(v == "3") then --签到
			qiandao_funtab720.qiandao(width);
		end
	end
	if(width == 1080) then
		if(v == "0") then--北倶挂机
			if(beiJuSetting == "0") then--无限北俱
				beiJu_funtab1080.loopFun(width, "0");
			elseif(beiJuSetting == "1") then--5点带天
				beiJu_funtab1080.loopFun(width, "1");
			elseif(beiJuSetting == "2") then --5点捉鬼
				beiJu_funtab1080.loopFun(width, "2");
			end
		end
		if(v == "1") then--抓鬼
			tiangui_funtab1080.gui(width);
		end
		if(v == "2") then--做天
			tiangui_funtab1080.tian(width);
		end
		if(v == "3") then --签到
			qiandao_funtab1080.qiandao(width);
		end
	end
end
--第二组
for i, v in pairs(choicesTab2) do
	if(width == 720) then
		if(v == "0") then --召唤兽灵修
			if(linxiuType == "0") then--宝宝
				if(lingXiuSetting == "0") then
					lingxiu_funtab720.lingxiu("宝宝","经验",width,zhaohuanShou);
				elseif(lingXiuSetting == "1") then
					lingxiu_funtab720.lingxiu("宝宝","亲密",width,zhaohuanShou);
				end
			elseif(linxiuType == "1") then--坐骑
				lingxiu_funtab720.lingxiu("坐骑","", width,zhaohuanShou);
			end
		end
		if(v == "1") then --算卦
			suangua_funtab720.suangua(width);
		end
		if(v == "2") then --大理寺答题
			dalisi_funtab720.dalisi(width);
		end
	end
	if(width == 1080) then
		if(v == "0") then --召唤兽灵修
			if(lingXiuSetting == "0") then
				lingxiu_funtab1080.lingxiu("经验",width,zhaohuanShou);
			elseif(lingXiuSetting == "1") then
				lingxiu_funtab1080.lingxiu("亲密",width,zhaohuanShou);
			end
		end
		if(v == "1") then --算卦
			suangua_funtab1080.suangua(width);
		end
		if(v == "2") then --大理寺答题
			dalisi_funtab1080.dalisi(width);
		end
	end
end
--第三组
for i, v in pairs(choicesTab3) do
	if(width == 720) then
		if(v == "0") then --竞技场
			jingji_funtab720.jingji(10,width);
		end
		if(v == "1") then --帮派
			bangpai_funtab720.bangpai(width);
		end
		if(v == "2") then --师门
			shimen_funtab720.shimen(width);
		end
		if(v == "3") then --宝图
			baotu_funtab720.baotu(width);
		end
	end
	if(width == 1080) then
		if(v == "0") then --竞技场
			jingji_funtab1080.jingji(10,width);
		end
		if(v == "1") then --帮派
			bangpai_funtab1080.bangpai(width);
		end
		if(v == "2") then --师门
			shimen_funtab1080.shimen(width);
		end
		if(v == "3") then --宝图
			baotu_funtab1080.baotu(width);
		end
	end
end
--第四组
for i, v in pairs(choicesTab4) do
	if(width == 720) then
		if(v == "0") then --五环
			if(wuHuanSetting == "0") then --单人五环
				wuhuan_funtab720.wuhuan(width,"single");
			elseif(wuHuanSetting == "1") then --双人五环
				wuhuan_funtab720.wuhuan(width,"double");
			end
		end
		if(v == "1") then --活跃领奖
			huoyue_funtab720.huoyue(width);
		end
		if(v == "2") then --200
			huan200_funtab720.run(width);
		end
	end
	if(width == 1080) then
		if(v == "0") then--五环
			if(wuHuanSetting == "0") then --单人五环
				wuhuan_funtab1080.wuhuan(width,"single");
			elseif(wuHuanSetting == "1") then --双人五环
				wuhuan_funtab1080.wuhuan(width,"double");
			end
		end
		if(v == "1") then --活跃领奖
			huoyue_funtab1080.huoyue(width);
		end
		if(v == "2") then --200环
			huan200_funtab1080.run(width);
		end
	end
end

--判断结束
if(richangEnd == "0") then -- 无限北俱
	if(width == 720) then
		beiJu_funtab720.loopFun(width, "0");
	elseif(width == 1080) then
		beiJu_funtab1080.loopFun(width, "0");
	end
elseif(richangEnd == "1") then --退出
	lua_exit();
end

--得到当前小时的另一种方法
--string.sub(dhxyUtils_tab.getNowDate(),9,10)

