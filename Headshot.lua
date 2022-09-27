function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 

--Greater the value higher the headshot

function home()
gg.setVisible(false)
nmod = gg.multiChoice({
"💯ＨＥＤＳＯＴ¹⁰⁰",
"🙅🏻ＨＥＤＳＯＴ¹²⁵",
"⚠️ＨＥＤＳＯＴ¹⁵⁰",
"🔥ＨＥＤＳＯＴ¹⁷⁵",
"💥ＨＥＤＳＯＴ²⁰⁰",
"ᴇxɪᴛ",
}, nil, "Nitesh's HS🔥")
if nmod == nil then else
if nmod[1] == true then X2() end
if nmod[2] == true then X3() end
if nmod[3] == true then X4() end
if nmod[4] == true then X5() end
if nmod[5] == true then X6() end
if nmod[6] == true then ext() end
end
nmod = -1
end


function X2()
gg.setVisible(false)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;25;30.5",16 ,false, 536870912,0,-1)
gg.searchNumber("25;30.5",16, false, 536870912,0,-1)
gg.getResults(99)
gg.editAll(100,16)
gg.clearResults(99)
gg.toast("💯ＨＥＤＳＯＴ¹⁰⁰")
end

function X3()
gg.setVisible(false)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;25;30.5",16 ,false, 536870912,0,-1)
gg.searchNumber("25;30.5",16, false, 536870912,0,-1)
gg.getResults(99)
gg.editAll(125,16)
gg.clearResults(99)
gg.toast("🙅🏻ＨＥＤＳＯＴ¹²⁵")
end

function X4()
gg.setVisible(false)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;25;30.5",16 ,false, 536870912,0,-1)
gg.searchNumber("25;30.5",16, false, 536870912,0,-1)
gg.getResults(99)
gg.editAll(150,16)
gg.clearResults(99)
gg.toast("⚠️ＨＥＤＳＯＴ¹⁵⁰")
end

function X5()
gg.setVisible(false)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;25;30.5",16 ,false, 536870912,0,-1)
gg.searchNumber("25;30.5",16, false, 536870912,0,-1)
gg.getResults(99)
gg.editAll(175,16)
gg.clearResults(99)
gg.toast("🔥ＨＥＤＳＯＴ¹⁷⁵")
end

function X6()
gg.setVisible(false)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;25;30.5",16 ,false, 536870912,0,-1)
gg.searchNumber("25;30.5",16, false, 536870912,0,-1)
gg.getResults(99)
gg.editAll(200,16)
gg.clearResults(99)
gg.toast("💥ＨＥＤＳＯＴ²⁰⁰")
end

function ext()
gg.skipRestoreState()
gg.setVisible(true)
os.exit()
end
while true do
if gg.isVisible(true) then
nmod = 1
gg.setVisible(false)
end
if nmod == 1 then
home()
end
end