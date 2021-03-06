require("DhxyUtils");
gameScript720_1440 = {};
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
require("AccountSwitch");

function gameScript720_1440.run(width, height, results)
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
	
	--开始执行任务
	--第一组
	for i,v in pairs(choicesTab1) do
		if(v == "0") then --北俱
			if(beiJuSetting == "0") then--无限北俱
				beiJu_funtab720_1440.loopFun(width, height, "0");
			elseif(beiJuSetting == "1") then--5点带天
				beiJu_funtab720_1440.loopFun(width, height, "1");
			elseif(beiJuSetting == "2") then --5点捉鬼
				beiJu_funtab720_1440.loopFun(width, height, "2");
			end
		end
		if(v == "1") then --抓鬼
			tiangui_funtab720_1440.gui(width, height);
		end
		if(v == "2") then --做天
			tiangui_funtab720_1440.tian(width, height);
		end
		if(v == "3") then --签到
			qiandao_funtab720_1440.qiandao(width, height);
		end
	end
	--第二组
	for i, v in pairs(choicesTab2) do
		if(v == "0") then --召唤兽灵修
			if(linxiuType == "0") then--宝宝
				if(lingXiuSetting == "0") then
					lingxiu_funtab720_1440.lingxiu("宝宝","经验",width, height,zhaohuanShou);
				elseif(lingXiuSetting == "1") then
					lingxiu_funtab720_1440.lingxiu("宝宝","亲密",width, height,zhaohuanShou);
				end
			elseif(linxiuType == "1") then--坐骑
				lingxiu_funtab720_1440.lingxiu("坐骑","", width, height,zhaohuanShou);
			end
		end
		if(v == "1") then --算卦
			suangua_funtab720_1440.suangua(width, height);
		end
		if(v == "2") then --大理寺答题
			dalisi_funtab720_1440.dalisi(width, height);
		end
	end
	--第三组
	for i, v in pairs(choicesTab3) do
		if(v == "0") then --竞技场
			jingji_funtab720_1440.jingji(10,width, height);
		end
		if(v == "1") then --帮派
			bangpai_funtab720_1440.bangpai(width, height);
		end
		if(v == "2") then --师门
			shimen_funtab720_1440.shimen(width, height);
		end
		if(v == "3") then --宝图
			baotu_funtab720_1440.baotu(width, height);
		end
	end
	--第四组
	for i, v in pairs(choicesTab4) do
		if(v == "0") then --五环
			if(wuHuanSetting == "0") then --单人五环
				wuhuan_funtab720_1440.wuhuan(width, height,"single");
			elseif(wuHuanSetting == "1") then --双人五环
				wuhuan_funtab720_1440.wuhuan(width, height,"double");
			end
		end
		if(v == "1") then --活跃领奖
			huoyue_funtab720_1440.huoyue(width, height);
		end
		if(v == "2") then --200
			huan200_funtab720_1440.run(width, height);
		end
	end
end