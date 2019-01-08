require("DhxyUtils");
require("PubFun");
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
init(appid,1);
local ret, results;
if(width == 720 and height == 1440) then
	ret,results = showUI("ui720.json");
elseif(width == 1080 and height == 1920) then
	ret,results = showUI("ui1080.json");
else
	dialog("不支持该分辨率");
	lua_exit();
end
--ui = 适配UI("ui.json",540);
require("PubFun");

if(ret == 0) then lua_exit(); end--选择取消就结束脚本
local accountCheck1 = results.CheckBoxAccount1;--得到账号1是否选择
local accountCheck2 = results.CheckBoxAccount2;--得到账号2是否选择
local accountCheck3 = results.CheckBoxAccount3;--得到账号3是否选择
local accountCheck4 = results.CheckBoxAccount4;--得到账号4是否选择
local accountCheck5 = results.CheckBoxAccount5;--得到账号5是否选择
local account1 = results.EditAccount1;--得到账号1账号
local account2 = results.EditAccount2;--得到账号2账号
local account3 = results.EditAccount3;--得到账号3账号
local account4 = results.EditAccount4;--得到账号4账号
local account5 = results.EditAccount5;--得到账号5账号
local accountPwd1 = results.EditAccountPwd1;--得到账号1密码
local accountPwd2 = results.EditAccountPwd2;--得到账号2密码
local accountPwd3 = results.EditAccountPwd3;--得到账号3密码
local accountPwd4 = results.EditAccountPwd4;--得到账号4密码
local accountPwd5 = results.EditAccountPwd5;--得到账号5密码
local isRole = results.AccountSet;--得到账号切换设置 是否选择角色
local roleNum = results.RoleNumSet;--得到账号切换设置 选择第几个角色
roleNum = tonumber(roleNum) + 1;

require("GameScript");--入口
require("AccountSwitch");--账号切换
local richangEnd = results.SetEnd;--所选任务完成后
gameScript.run(width, height, results);--进来先执行一次
local accountSwitchNum = 1;
--判断结束
if(richangEnd == "0") then -- 无限北俱
	if(width == 720 and height == 1440) then
		beiJu_funtab720_1440.loopFun(width, height, "0");
	elseif(width == 1080 and height == 1920) then
		beiJu_funtab1080_1920.loopFun(width, height, "0");
	end
elseif(richangEnd == "1") then --账号切换
	local isOk = true;
	if(width == 720 and height == 1440) then
		if(accountCheck1 == "0") then --账号1
			if(string.len(account1) > 0 and string.len(accountPwd1) > 0) then
				isOk = accountSwitch_funtab720_1440.switch(width, height, account1, accountPwd1, isRole, roleNum, true, accountSwitchNum);
				accountSwitchNum = accountSwitchNum + 1;
				if(isOk) then
					gameScript.run(width, height, results);
				end
			end
		end
		if(accountCheck2 == "0") then --账号2
			if(string.len(account2) > 0 and string.len(accountPwd2) > 0) then
				if(accountSwitchNum == 1) then
					isOk = accountSwitch_funtab720_1440.switch(width, height, account2, accountPwd2, isRole, roleNum, true, accountSwitchNum);
				else
					isOk = accountSwitch_funtab720_1440.switch(width, height, account2, accountPwd2, isRole, roleNum, isOk, accountSwitchNum);
				end
				accountSwitchNum = accountSwitchNum + 1;
				if(isOk) then
					gameScript.run(width, height, results);
				end
			end
		end
		if(accountCheck3 == "0") then --账号3
			if(string.len(account3) > 0 and string.len(accountPwd3) > 0) then
				if(accountSwitchNum == 1) then
					isOk = accountSwitch_funtab720_1440.switch(width, height, account3, accountPwd3, isRole, roleNum, true, accountSwitchNum);
				else
					isOk = accountSwitch_funtab720_1440.switch(width, height, account3, accountPwd3, isRole, roleNum, isOk, accountSwitchNum);
				end
				accountSwitchNum = accountSwitchNum + 1;
				if(isOk) then
					gameScript.run(width, height, results);
				end
			end
		end
		if(accountCheck4 == "0") then --账号4
			if(string.len(account4) > 0 and string.len(accountPwd4) > 0) then
				if(accountSwitchNum == 1) then
					isOk = accountSwitch_funtab720_1440.switch(width, height, account4, accountPwd4, isRole, roleNum, true, accountSwitchNum);
				else
					isOk = accountSwitch_funtab720_1440.switch(width, height, account4, accountPwd4, isRole, roleNum, isOk, accountSwitchNum);
				end
				accountSwitchNum = accountSwitchNum + 1;
				if(isOk) then
					gameScript.run(width, height, results);
				end
			end
		end
		if(accountCheck5 == "0") then --账号5
			if(string.len(account5) > 0 and string.len(accountPwd5) > 0) then
				if(accountSwitchNum == 1) then
					isOk = accountSwitch_funtab720_1440.switch(width, height, account5, accountPwd5, isRole, roleNum, true, accountSwitchNum);
				else
					isOk = accountSwitch_funtab720_1440.switch(width, height, account5, accountPwd5, isRole, roleNum, isOk, accountSwitchNum);
				end
				accountSwitchNum = accountSwitchNum + 1;
				if(isOk) then
					gameScript.run(width, height, results);
				end
			end
		end
	elseif(width == 1080 and height == 1920) then
		if(accountCheck1 == "0") then --账号1
			if(string.len(account1) > 0 and string.len(accountPwd1) > 0) then
				isOk = accountSwitch_funtab1080_1920.switch(width, height, account1, accountPwd1, isRole, roleNum, true, accountSwitchNum);
				accountSwitchNum = accountSwitchNum + 1;
				if(isOk) then
					gameScript.run(width, height, results);
				end
			end
		end
		if(accountCheck2 == "0") then --账号2
			if(string.len(account2) > 0 and string.len(accountPwd2) > 0) then
				if(accountSwitchNum == 1) then
					isOk = accountSwitch_funtab1080_1920.switch(width, height, account2, accountPwd2, isRole, roleNum, true, accountSwitchNum);
				else
					isOk = accountSwitch_funtab1080_1920.switch(width, height, account2, accountPwd2, isRole, roleNum, isOk, accountSwitchNum);
				end
				accountSwitchNum = accountSwitchNum + 1;
				if(isOk) then
					gameScript.run(width, height, results);
				end
			end
		end
		if(accountCheck3 == "0") then --账号3
			if(string.len(account3) > 0 and string.len(accountPwd3) > 0) then
				if(accountSwitchNum == 1) then
					isOk = accountSwitch_funtab1080_1920.switch(width, height, account3, accountPwd3, isRole, roleNum, true, accountSwitchNum);
				else
					isOk = accountSwitch_funtab1080_1920.switch(width, height, account3, accountPwd3, isRole, roleNum, isOk, accountSwitchNum);
				end
				accountSwitchNum = accountSwitchNum + 1;
				if(isOk) then
					gameScript.run(width, height, results);
				end
			end
		end
		if(accountCheck4 == "0") then --账号4
			if(string.len(account4) > 0 and string.len(accountPwd4) > 0) then
				if(accountSwitchNum == 1) then
					isOk = accountSwitch_funtab1080_1920.switch(width, height, account4, accountPwd4, isRole, roleNum, true, accountSwitchNum);
				else
					isOk = accountSwitch_funtab1080_1920.switch(width, height, account4, accountPwd4, isRole, roleNum, isOk, accountSwitchNum);
				end
				accountSwitchNum = accountSwitchNum + 1;
				if(isOk) then
					gameScript.run(width, height, results);
				end
			end
		end
		if(accountCheck5 == "0") then --账号5
			if(string.len(account5) > 0 and string.len(accountPwd5) > 0) then
				if(accountSwitchNum == 1) then
					isOk = accountSwitch_funtab1080_1920.switch(width, height, account5, accountPwd5, isRole, roleNum, true, accountSwitchNum);
				else
					isOk = accountSwitch_funtab1080_1920.switch(width, height, account5, accountPwd5, isRole, roleNum, isOk, accountSwitchNum);
				end
				accountSwitchNum = accountSwitchNum + 1;
				if(isOk) then
					gameScript.run(width, height, results);
				end
			end
		end
	end
else --退出
	lua_exit();
end

--得到当前小时的另一种方法
--string.sub(dhxyUtils_tab.getNowDate(),9,10)