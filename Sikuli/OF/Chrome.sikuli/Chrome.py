if exists("ChromeBlack.png"):
    click("ChromeBlack.png")
click(Pattern("NovaeaVkladka.png").targetOffset(20,-1))
try:
    wait("1658400951003.png")
    #mouseMove("1658320902297.png")
    rightClick("1658400951003.png")
    click("CloseOtherTabs.png")
except:
    wait("1658526180943.png")
    rightClick("1658526180943.png")   
    click("CloseOtherTabs2.png")
#click(Pattern("ZakritiPervuiuVkladku.png").targetOffset(-17,0))
#mouseMove("1658313545518.png")
#click(Pattern("AdressnaeaStroka.png").targetOffset(65,-1))
