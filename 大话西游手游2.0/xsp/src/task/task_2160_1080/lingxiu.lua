local dhxy_common = require('common.dhxy_common')
local dhxy_pub = require('common.dhxy_pub_2160_1080')

local lingxiu = {}

--x_type：0宝宝，1坐骑，choice：0经验，1亲密，默认经验，which：训练哪个，0，1，2，3
function lingxiu.run(x_type, choice, which)
	local hud = createHUD()
	dhxy_pub.showHud(hud,"家园灵修")
	dhxy_pub.click_more()
	dhxy_pub.click_home(hud)
	--点击管家
	dhxy_common.click(math.random(1311,1311+195), math.random(713,713+49), math.random(40,100))
	sleep(3000)
	--点击第一个选项
	dhxy_pub.click_dialog_one()
	
	--如果是坐骑的话
	if(x_type == 1) then
		--点击坐骑1776,485,63,134
		dhxy_common.click(math.random(1776,1776+63), math.random(485,485+134), math.random(40,100))
	else
		--如果是亲密的话
		if(choice == 1) then
			--点击亲密1114,194,192,56
			dhxy_common.click(math.random(1114,1114+192), math.random(194,194+56), math.random(40,100))
		else
			--点击经验866,195,191,58
			dhxy_common.click(math.random(866,866+191), math.random(195,195+58), math.random(40,100))
		end
	end
	--选择训练哪个，0不需要选
	if(which == 1) then
		dhxy_common.click(math.random(515,515+286), math.random(374,374+115), math.random(40,100))
	elseif(which == 2) then
		dhxy_common.click(math.random(515,515+286), math.random(546,546+102), math.random(40,100))
	elseif(which == 3) then
		dhxy_common.click(math.random(515,515+286), math.random(714,714+74), math.random(40,100))
	end
	--点击开始
	dhxy_common.click(math.random(1156,1156+275), math.random(893,893+59), math.random(40,100))
	--点击关闭
	dhxy_common.click(math.random(1757,1757+46), math.random(126,126+46), math.random(40,100))
	dhxy_pub.click_more()
	dhxy_pub.showHud(hud,"家园灵修结束")
	sleep(math.random(800,1500))
	hideHUD(hud)
end

return lingxiu