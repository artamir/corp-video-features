click("Okna.png")
click("CloseAll.png")

wait(Pattern("DannieBiliIzmeneni.png").targetOffset(-6,20))


click("MenuServis.png")
click(Pattern("MenuServisEschio.png").similar(0.81))
click(Pattern("MenuServisEschio.png").similar(0.80))
click(Pattern("MenuServisEschio.png").similar(0.80))
sleep(2)
click(Pattern("MenuServisZapolnenieIB.png").similar(0.95).targetOffset(0,-5))

click(Pattern("ZakladkaSpravochnik.png").similar(0.91))
click(Pattern("ZapolnitiDoljnosti22.png").targetOffset(-71,0))
click("Vipolniti.png")
sleep(5)
click("MenuServis.png")
click("NastroikiPolzovatelea.png")
click("ZakladkaNastroiki.png")
click(Pattern("ZagolovokNastroika.png").targetOffset(-3,12))

click(Pattern("Poisk.png").targetOffset(30,11))
click("ButtonIskati.png")
click(Pattern("PokazivatiNeispolzuemieDoljnosti.png").targetOffset(146,0))

click("PokazivatiNeispolizuemieDoljnostiActiveFlag.png")

click("ButtonOk.png")

click("MenuOperatii.png")
click("Spravochnik.png")

click(Pattern("SpravochnikDoljnostiActiv.png").targetOffset(-55,0))
click("ButtonOKThin.png")
