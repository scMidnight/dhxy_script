--工具

dhxyUtils_tab = {};

--单击
function dhxyUtils_tab.tap(delay, x, y)
	touchDown(1, x, y);
	mSleep(delay+100);
	touchUp(1, x, y);
	mSleep(delay+1000);
end

--双击
function dhxyUtils_tab.doubleClick(delay, x, y)
	touchDown(1, x, y);
	mSleep(delay+100);
	touchUp(1, x, y);
	mSleep(delay+1000);
	touchDown(1, x, y);
	mSleep(delay+100);
	touchUp(1, x, y);
	mSleep(delay+1000);
end

--移动
function dhxyUtils_tab.move(delay, clickX, clickY, moveX, moveY)
	touchDown(1, clickX, clickY);
	mSleep(delay);
	touchMove(1, moveX, moveY);
	mSleep(delay);
	touchUp(1, moveX, moveY);
	mSleep(1000);
end

-- 参数:待分割的字符串,分割字符  
-- 返回:子串表.(含有空串)  
function dhxyUtils_tab.lua_string_split(str, split_char)      
	local sub_str_tab = {};  
	while (true) do          
		local pos = string.find(str, split_char);    
		if (not pos) then              
			local size_t = table.getn(sub_str_tab)  
			table.insert(sub_str_tab,size_t+1,str);  
			break;    
		end  
		local sub_str = string.sub(str, 1, pos - 1);                
		local size_t = table.getn(sub_str_tab)  
		table.insert(sub_str_tab,size_t+1,sub_str);  
		local t = string.len(str);  
		str = string.sub(str, pos + 1, t);     
	end      
	return sub_str_tab;  
end

--获取当前时间 mTime()是UNIX时间戳mTime()/1000
function dhxyUtils_tab.getNowDate()
	return os.date("%Y%m%d%H%M%S",os.time());
end
--得到当前小时
function dhxyUtils_tab.getNowHour()
	return os.date("%H",os.time());
end