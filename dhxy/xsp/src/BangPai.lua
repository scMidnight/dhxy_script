bangpai_funtab540 = {};
bangpai_funtab1080 = {};

--540帮派
function bangpai_funtab540.bangpai()
	--先点活动
	x, y = findMultiColorInRegionFuzzy(0xf38398,"12|18|0xdb5072,31|11|0xe68d34,23|-5|0xfff8bd,28|-5|0xb22a32,34|-5|0xfbdd44", 95, 6, 133, 68, 200);
	if (x ~= -1 and y ~= -1) then
		x = math.random((x-5), (x+36));
		y = math.random((y-10), (y+29));
		sysLog("活动x:"..x.."，y:"..y);
		tap(300,x,y);
	else
		sysLog("对不起，没找到活动！");
	end
	--找帮派
	for i = 1, 10 do
		point = findMultiColorInRegionFuzzyExt(0xc05721,"-11|-2|0xd79100,13|-3|0xfdffa7,16|17|0xffe790,-4|15|0xde7325,-4|32|0xfab64d,21|16|0xf7d580",95,114, 137, 818, 393);
		if (#point ~= 0) then
			for var = 1,#point do
				x = point[var].x;
				y = point[var].y;
			end
			--375,158,426,180点击前往153,166
			x = math.random((x+222), (x+273));
			y = math.random((y+8), (y+14));
			sysLog("前往帮派x:"..x..",y:"..y);
			tap(300,x,y);
			break;
		else
			--208,238,698,361滑动
			x = math.random(208, 698);
			y = math.random(238, 361);
			move(500,x,y,x,(y-80));
		end
	end
	mSleep(10000);
	--找帮派主管对话框
	x, y = findMultiColorInRegionFuzzy(0xd68729,"-8|43|0xe8b46b,-9|57|0xd88c32,-13|100|0xe7b064,-12|114|0xda9139,-10|157|0xe6ad5e", 95, 608, 299, 906, 478)
	if (x ~= -1 and y ~= -1) then
		--635,316,879,342点击帮派任务
		x = math.random(635, 879);
		y = math.random(316, 342);
		sysLog("帮派任务x:"..x..",y:"..y);
		tap(300,x,y);
	end
	
end


--1080帮派
function bangpai_funtab1080.bangpai()
end