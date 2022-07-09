click("Okna.png")
click("CloseAll.png")

click("MenuServis.png")
click(Pattern("MenuServisEschio.png").similar(0.81))
click(Pattern("MenuServisEschio.png").similar(0.80))
click(Pattern("MenuServisEschio.png").similar(0.80))
sleep(2)
click(Pattern("MenuServisZapolnenieIB.png").similar(0.95).targetOffset(0,-5))

click(Pattern("ZakladkaSpravochnik.png").similar(0.91))
click(Pattern("ZapolnitiDoljnosti22.png").targetOffset(-71,0))
click("Vipolniti.png")
