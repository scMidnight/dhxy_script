local dhxy_common = require('common.dhxy_common')

local appid = frontAppName();--获取当前应用ID
if (string.find(appid, "com.netease.dhxy") == nil) then
	dialog("请打开大话西游再运行该脚本！", 0)
	dhxy_common.exit()
end

screen.init(screen.LANDSCAPE_RIGHT)

local size = screen.getSize()
local ret, results
if(size.width == 2160 and size.height == 1080) then
	ret, results = showUI("ui_2160_1080.json")
	if(ret == 0) then dhxy_common.exit() end--选择取消就结束脚本
	local run = require('task.task_2160_1080.run')
	run.run(results)
else
	dhxy_common.chang_toast('该脚本不支持该分辨率')
    dhxy_common.exit()
end


--paohuan.run()--待完善