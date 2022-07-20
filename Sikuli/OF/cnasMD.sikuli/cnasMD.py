click(Pattern("NovaeaVkladka.png").targetOffset(20,-1))
click(Pattern("ZakritiPervuiuVkladku.png").targetOffset(-17,0))

click(Pattern("AdressnaeaStroka.png").targetOffset(65,-1))
type("cnas.gov.md")
type(Key.ENTER)

wait("MenuPentruPlatitoriDeContributii.png")
click(Pattern("MenuPentruPlatitoriDeContributii.png").targetOffset(17,45))

wait("MenuClassificatoare.png",10)
click("MenuClassificatoare.png")

exists(Pattern("TabelComparativ.png").similar(0.89))
