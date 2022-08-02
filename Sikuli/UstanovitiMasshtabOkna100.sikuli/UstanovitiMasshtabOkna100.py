click("NavSsilckaUpravlenieOknomZakriti.png")
click("IzmenitiMasshtab.png")
if exists(Pattern("MaxMasshtab.png").similar(0.80).targetOffset(-33,15)):
    click(Pattern("MaxMasshtab.png").similar(0.80).targetOffset(-33,15))

click("1659365575397.png")

#click("ShkalaMasshtabaAll.png")

#click(Pattern("IzmenitiMasshtabZakriti.png").targetOffset(15,-22))

