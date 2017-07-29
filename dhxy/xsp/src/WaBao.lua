wabao_funtab540 = {};
wabao_funtab1080 = {};
require("PubFun");
local hud = createHUD();

--540挖宝
function wabao_funtab540.wabao()
	x, y = findMultiColorInRegionFuzzy(0xe79a3e,"-15|6|0x932620,15|30|0xd45955,2|31|0xcc4130,-16|16|0xfffddf,16|7|0xc55627", 95, 818, 463, 879, 528)
	if (x ~= -1 and y ~= -1) then
		--848  479
		x = math.random(830, 860);
		y = math.random(y, 515);
		sysLog("包裹x:"..x..",y:"..y);
		pubFun_tab.doubleClick(300,x,y);
	else
		sysLog("对不起，没找到包裹！");
--		sysLog("截图");
--		local nowDate = os.date("%H:%M:%S", os.time());
--		snapshot("[public]"..nowDate..".png",2,2,955,530);	end
	
end


--1080挖宝
function wabao_funtab1080.wabao()
	
end