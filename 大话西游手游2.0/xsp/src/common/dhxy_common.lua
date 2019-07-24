local dhxy_common = {}

--点击
function dhxy_common.click(x, y, delay)
	local pos = Point(x, y)
	touch.down(1, pos)
	sleep(delay)
	touch.up(1, pos)
	sleep(delay + math.random(800, 2000))
end

--滑动
function dhxy_common.slide(x, y, x1, y1, delay)
	local pos = Point(x, y)
	touch.down(1, pos)
	sleep(delay)
	touch.move(1, x1, y1)
	sleep(delay)
	touch.up(1, Point(x1, y1))
	sleep(delay + math.random(800, 2000))
end

--Toast提示
function dhxy_common.duan_toast(msg)
	--短提示
	UI.toast(msg, UI.TOAST.LENGTH_SHORT)
	sleep(1000)
end
function dhxy_common.chang_toast(msg)
	--长提示
	UI.toast(msg, UI.TOAST.LENGTH_LONG)
	sleep(1500)
end

--退出时间计算
function dhxy_common.exit_time(begin_time)
	if(tonumber(string.format("%0.0f",(os.milliTime() - begin_time) / 1000)) > 60) then
		return true
	else
		return false
	end
end

-- 参数:待分割的字符串,分割字符  
-- 返回:子串表.(含有空串)  
function dhxy_common.lua_string_split(str, split_char)      
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

--脚本退出
function dhxy_common.exit()
	xpcall(doLaunch, function()
		UI.toast('脚本已退出，感谢使用！', UI.TOAST.LENGTH_LONG)
		sleep(1500)
		xmod.exit()
	end)
end

return dhxy_common