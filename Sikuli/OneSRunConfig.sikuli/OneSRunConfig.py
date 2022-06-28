wait("ZagolovokOknaZapuska1S.png")
if not exists("ImeaBaziNeaktivnoe.png") or not exists("ImeaBaziAktivnoe.png"):
    click("ZagolovokOknaZapuska1S.png")
    type('c')
    if exists("ImeaBaziNeaktivnoe.png"):
        click("ImeaBaziNeaktivnoe.png")

if exists("ImeaBaziAktivnoe.png"):
    click("KnopkaConfigurator.png")

wait("KnopkaVoiti.png",20)
click("KnopkaVoiti.png")


    
        