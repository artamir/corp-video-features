if exists("ChromeBlack.png"):
    click("ChromeBlack.png")
click(Pattern("NovaeaVkladka.png").targetOffset(20,-1))

wait("1658320902297.png")

if exists("1658320902297.png"):
    mouseMove("1658320902297.png")

if exists("1658518736432.png"):
    mouseMove("1658518736432.png")
    
click(Pattern("ZakritiPervuiuVkladku.png").targetOffset(-17,0))
mouseMove("1658313545518.png")
click(Pattern("AdressnaeaStroka.png").targetOffset(65,-1))
