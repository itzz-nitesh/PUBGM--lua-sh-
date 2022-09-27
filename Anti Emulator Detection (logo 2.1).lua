gg.alert("\n         ╔─━━━━━━━━░░ 👑 ░░━━━━━━━━─╗\n                        ♔〘 Welcome Nitesh 〙♔\n                        🔸  ⟮ Use Only ESP ⟯  🔸 \n         ╚─━━━━━━━━░░  ★ ░░━━━━━━━━─╝")


function WriteSignatures(original,G2H_OFFICIAL) gg.setRanges(16384) gg.searchNumber("h"..original) gg.getResults(9999) gg.editAll("h"..G2H_OFFICIAL,1) gg.clearResults() end

function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
 function setvalue(address,flags,value)  local refinevalues={}  refinevalues[1]={}  refinevalues[1].address=address  refinevalues[1].flags=flags  refinevalues[1].value=value  gg.setValues(refinevalues)  end                                        
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "" .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. "") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast(""..#t.."") gg.addListItems(t) else gg.toast("", false) return false end else gg.toast("Not Found") return false end end
function NOOR()
end
function setvalue(address,flags,value) NOOR('Modify address value(Address, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function libBase(offset, type, value, name) gg.setValues({[1] = {address = gg.getRangesList('libUE4.SuperUser_TM')[1].start + offset, flags = type, value = value}}) gg.toast(name .. '') end
function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {} 
    local base = Search[1][2] 
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true 
        end
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base 
            local num = Search[k][1]             
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} 
                tmp[#tmp].address = v.address + offset  
                tmp[#tmp].flags = v.flags  
            end
            
            tmp = gg.getValues(tmp) 
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then
                    result[i].isUseful = false 
                end
            end
        end
  
        for i, v in ipairs(result) do
            if (v.isUseful) then
                data[#data+1] = v.address
            end
        end
        if (#data > 0) then
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
                  
               end
           end
           gg.setValues(t)
    
           gg.addListItems(t)
        else
            gg.toast("Not found", false)
            return false
        end
    else
        gg.toast("Not Found")
        return false
    end
end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "" .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. "") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast(""..#t.."") gg.addListItems(t) else gg.toast("", false) return false end else gg.toast("Not Found") return false end end
function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."\nFailed to Open")else sl=gg.getResults(99999)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."\nSuccessfully Opened")else gg.toast(_on.."\nSuccessfully Opened")end end end

function split(szFullString, szSeparator)  local nFindStartIndex = 1  local nSplitIndex = 1  local nSplitArray = {}  while true do  local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex)  if not nFindLastIndex then  nSplitArray[nSplitIndex] =  string.sub(szFullString, nFindStartIndex, string.len (szFullString))  break end  nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1)  nFindStartIndex = nFindLastIndex + string.len (szSeparator)  nSplitIndex = nSplitIndex + 1 end return  nSplitArray end  function xgxc(szpy, qmxg)  for x = 1, #(qmxg) do  xgpy = szpy + qmxg[x]["offset"]  xglx = qmxg[x]["type"]  xgsz = qmxg[x]["value"]  xgdj = qmxg[x]["freeze"]  if xgdj == nil or xgdj == "" then  gg.setValues({[1]  = {address = xgpy, flags = xglx, value = xgsz}})  else  gg.addListItems({[1]  = {address = xgpy, flags = xglx,  freeze = xgdj, value = xgsz}}) end  xgsl = xgsl + 1 xgjg = true end end  function xqmnb(qmnb)  gg.clearResults()  gg.setRanges(qmnb[1]["memory"])  gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])  if gg.getResultCount() == 0 then  gg.toast(qmnb[2]["name"] .. "开启失败")  else  gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])  gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])  if gg.getResultCount() == 0 then  gg.toast(qmnb[2]["name"] .. "开启失败")  else          sl = gg.getResults(999999)  sz = gg.getResultCount()          xgsl = 0 if sz > 999999 then  sz = 999999 end for i = 1, sz do  pdsz = true for v = 4, #(qmnb) do if  pdsz == true then  pysz = {} pysz[1]  = {} pysz[1].address  = sl[i].address + qmnb[v]["offset"] pysz[1].flags  = qmnb[v]["type"]  szpy = gg.getValues(pysz)  pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd  = split(pdpd, ";") tzszpd  = szpd[1] pyszpd = szpd[2]  if tzszpd == pyszpd then  pdjg = true pdsz = true else  pdjg = false pdsz = false end end end if  pdjg == true then szpy  = sl[i].address xgxc(szpy, qmxg) end end  if xgjg == true then  gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据")  else  gg.toast(qmnb[2]["name"] .. "开启失败")  end  end  end  end
gg.setVisible(false)
local function modAddress(lib, offset, flag, edit, freezable)
	lib2 = lib
	lib = {pcall(gg.getRangesList, lib2)}
	if lib[1] then
		if lib[2][1] == nil then
			lib = lib2
		else 
			lib = lib[2][1]["start"]
		end
	else
		lib = lib2
	end
	gg.setValues({
		{
			address = lib + offset,
			flags = flag,
			value = edit,
			freeze = freezable
		}
	})
	gg.addListItems({
		{
			address = lib + offset,
			flags = flag,
			value = edit,
			freeze = freezable
		}
	})
	return true
end

gg.setVisible(false) 
---------------------------------------------------------------------------------
-- Emulator Bypass
nmods = gg.getRangesList('libanogs.so')[1].start
setvalue( nmods + "0x342FC",4,781)
setvalue( nmods + "0x43206",4,781)
setvalue( nmods + "0xD60E4",4,781)
setvalue( nmods + "0x342FE",4,781)
setvalue( nmods + "0x43206",4,781)
setvalue( nmods + "0x342EE",4,781)
setvalue( nmods + "0x342F0",4,781)
setvalue( nmods + "0x342F4",4,781)
setvalue( nmods + "0x342F6",4,781)
setvalue( nmods + "0x342F8",4,781)
setvalue( nmods + "0x342FA",4,781)
setvalue( nmods + "0x342FC",4,781)
setvalue( nmods + "0x34300",4,781)
setvalue( nmods + "0x34302",4,781)
setvalue( nmods + "0x34304",4,781)
setvalue( nmods + "0x34306",4,781)
setvalue( nmods + "0x34308",4,781)
setvalue( nmods + "0x3430C",4,781)
setvalue( nmods + "0x3430E",4,781)
setvalue( nmods + "0x34310",4,781)
setvalue( nmods + "0x34312",4,781)
setvalue( nmods + "0x34314",4,781)
setvalue( nmods + "0x34316",4,781)
setvalue( nmods + "0x34318",4,781)
setvalue( nmods + "0x3431A",4,781)
setvalue( nmods + "0x3431C",4,781)
setvalue( nmods + "0x34322",4,781)
setvalue( nmods + "0x3432A",4,781) --Zero Value
setvalue( nmods + "0x3432C",4,781) --Zero Value
setvalue( nmods + "0x3432E",4,781)
setvalue( nmods + "0x3433E",4,781)
setvalue( nmods + "0x34342",4,781)
setvalue( nmods + "0x34346",4,781)
setvalue( nmods + "0x3434E",4,781)
setvalue( nmods + "0x34350",4,781) 
gg.clearResults()
------------------------------------------------------------------------------------------------------
-- Emulator Bypass (Antiban) 
SuperUser_TM = gg.getRangesList('libanogs.so')[1].start
setvalue( SuperUser_TM + "0x811C8",4 ,"h00 20 70 47")
setvalue( SuperUser_TM + "0x7E824",4,"h00 20 70 47")
setvalue( SuperUser_TM + "0x3C324",4,"h00 20 70 47")
setvalue( SuperUser_TM + "0x3B438",4,"h00 20 70 47")
setvalue( SuperUser_TM + "0x3D654",4,"h00 20 70 47")
setvalue( SuperUser_TM + "0x27ED34",4,"h00 20 70 47")
setvalue( SuperUser_TM + "0x287348",4,"h00 20 70 47")
setvalue( SuperUser_TM + "0x3A488",4,"h00 20 70 47")
setvalue( SuperUser_TM + "0x3A600",4,"h00 20 70 47")
setvalue( SuperUser_TM + "0x3A518",4,"h00 20 70 47")
setvalue( SuperUser_TM + "0x5D5F6",4,"h00 20 70 47")
setvalue( SuperUser_TM + "0x3C63A",4,"h00 20 70 47")
setvalue( SuperUser_TM + "0x873CC",4,"h00 20 70 47")
setvalue( SuperUser_TM + "0x93870",32,"h00 00 B0 E3 1E FF 2F E1")
setvalue( SuperUser_TM + "0x107514",32,"h00 00 B0 E3 1E FF 2F E1")
setvalue( SuperUser_TM + "0xADF74",4,"h59 00")
setvalue( SuperUser_TM + "0xAE388",4,"h59 00")
setvalue( SuperUser_TM + "0x12AA54",4,"h59 00")
setvalue( SuperUser_TM + "0x17A3CC",4,"h59 00")
setvalue( SuperUser_TM + "0x178FC4",4,"h59 00")
setvalue( SuperUser_TM + "0x1997B4",4,"h59 00")
setvalue( SuperUser_TM + "0x103264",4,"h59 00")
setvalue( SuperUser_TM + "0x343F4",4,"h 04 38")
setvalue( SuperUser_TM + "0x34816",4,"h 04 38")
setvalue( SuperUser_TM + "0x34832",4,"h 04 38")
setvalue( SuperUser_TM + "0x43206",4 ,"h 00 20 70 47")

gg.alert("\n\n          $$$$$           $$$       $$$$$          $$$$$\n          $$$ $$$        $$$       $$$ $$$   $$$ $$$\n          $$$  $$$       $$$       $$$  $$$ $$$  $$$\n          $$$    $$$     $$$       $$$      $$$      $$$\n          $$$      $$$   $$$       $$$                   $$$\n          $$$        $$$ $$$       $$$                   $$$\n          $$$           $$$$$       $$$                   $$$\n\n            💢 Bypass Done @SuperUser_TM 💢")
gg.setVisible(true)