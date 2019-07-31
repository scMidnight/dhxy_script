local dhxy_common = require('common.dhxy_common')
local run = {}

local suangua = require('task.task_2160_1080.suangua')
local lingxiu = require('task.task_2160_1080.lingxiu')
local wuhuan = require('task.task_2160_1080.wuhuan')
local baotu = require('task.task_2160_1080.baotu')
local jingji = require('task.task_2160_1080.jingji')
local tiangui = require('task.task_2160_1080.tiangui')
local dalisi = require('task.task_2160_1080.dalisi')
local bangpai_shimen = require('task.task_2160_1080.bangpai_shimen')
local paohuan = require('task.task_2160_1080.paohuan')
local qiandao = require('task.task_2160_1080.qiandao')
local lingjiang = require('task.task_2160_1080.lingjiang')
local beiju = require('task.task_2160_1080.beiju')

function run.run(results)
	local beiJuSetting = results.SetBeiJu;--北倶设置
	local linxiuType = results.SetLingXiuType;--灵修类型选择
	local lingXiuSetting = results.SetLingXiu;--灵修设置
	local zhaohuanShou = results.ZhaoHuanShou;--第几个召唤兽要灵修
	local wuHuanSetting = results.SetWuHuan;--五环设置
	local richangEnd = results.SetEnd;--所选任务完成后
	local choicesTab1 = dhxy_common.lua_string_split(results.CheckBoxTask1,"@");--把1多选任务结果转换成table
	local choicesTab2 = dhxy_common.lua_string_split(results.CheckBoxTask2,"@");--把2多选任务结果转换成table
	local choicesTab3 = dhxy_common.lua_string_split(results.CheckBoxTask3,"@");--把3多选任务结果转换成table
	local choicesTab4 = dhxy_common.lua_string_split(results.CheckBoxTask4,"@");--把3多选任务结果转换成table
	--第一组
	for i,v in pairs(choicesTab1) do
		if(v == "0") then--北倶挂机
			beiju.run()
		end
		if(v == "1") then--抓鬼
			tiangui.gui_run()
		end
		if(v == "2") then--做天
			tiangui.tian_run()
		end
		if(v == "3") then --签到
			qiandao.run()
		end
	end
	--第二组
	for i, v in pairs(choicesTab2) do
		if(v == "0") then --竞技场
			jingji.run()
		end
		if(v == "1") then --算卦
			suangua.run()
		end
		if(v == "2") then --大理寺答题
			dalisi.run()
		end
		if(v == "3") then --召唤兽灵修
			lingxiu.run(tonumber(linxiuType), tonumber(lingXiuSetting), tonumber(zhaohuanShou))
		end
	end
	--第三组
	for i, v in pairs(choicesTab3) do
		if(v == "0") then --帮派
			bangpai_shimen.bangpai_run()
		end
		if(v == "1") then --师门
			bangpai_shimen.shimen_run()
		end
		if(v == "2") then --宝图
			baotu.run()
		end
		if(v == "3") then--五环
			wuhuan.run(tonumber(wuHuanSetting))
		end
	end
	--第四组
	for i, v in pairs(choicesTab4) do
		if(v == "0") then --活跃领奖
			lingjiang.run()
		end
		if(v == "1") then --200环
			paohuan.run();
		end
	end
	local richangEnd = results.SetEnd--所选任务完成后
	if(richangEnd == "0") then--无限北俱
		beiju.run()
	elseif(richangEnd == "1") then --切换账号
	end
end

return run