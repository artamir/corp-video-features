import os
import os.path
import shutil
import json



sys_argv_1 = ''
sys_argv_2 = ''
sys_argv_3 = ''
sys_argv_4 = ''
sys_argv_5 = ''

def CallError(ScriptName):
    pass

def read_comand(dataofcomandlocal):
    global sys_argv_1
    global sys_argv_2
    global sys_argv_3
    global sys_argv_4
    global sys_argv_5
    sys_argv_1 = dataofcomandlocal['sys_argv_1']
    sys_argv_2 = dataofcomandlocal['sys_argv_2']
    sys_argv_3 = dataofcomandlocal['sys_argv_3']
    sys_argv_4 = dataofcomandlocal['sys_argv_4']
    sys_argv_5 = dataofcomandlocal['sys_argv_5']

def DoResponse(response_filename,str):
    temp_name = response_filename + "_temp"
    if os.path.exists(temp_name):
        os.remove(temp_name)
    data = {}  
    data['Response'] = str
    with open(temp_name, 'w') as outfile:
        json.dump(data, outfile)
    if os.path.exists(response_filename):
        os.remove(response_filename)
    shutil.move(temp_name, response_filename)
    #oldfile = io.File(response_filename)
    #oldfile.renameTo(response_filename)
    #os.rename(response_filename, response_filename)
    #logging.basicConfig(stream=sys.stderr, level=logging.DEBUG)
    #logging.debug(response_filename)



def ClickOnElementZatrati():
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/ClickOnElementZatrati.sikuli/StatiiZatratNaimenovanie.png").targetOffset(55,0))

def ClickOnFileName():
    if exists(Pattern("C:/vanessa/features/corp-video-features/Sikuli/ClickOnFileName.sikuli/1648669327734.png").targetOffset(-183,-16)):
        click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/ClickOnFileName.sikuli/1648669327734.png").targetOffset(-183,-16))
    
    pass

def ClickOnKontragentStatistica():
    click("C:/vanessa/features/corp-video-features/Sikuli/ClickOnKontragentStatistica.sikuli/KontragentStatictica.png")

def ClickRazdelDown():
    click("C:/vanessa/features/corp-video-features/Sikuli/ClickRazdelDown.sikuli/1646790691953.png")
    
    

def CommandInterfaceOrganizationPropierties():
    click("C:/vanessa/features/corp-video-features/Sikuli/CommandInterfaceOrganizationPropierties.sikuli/1650827191667.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/CommandInterfaceOrganizationPropierties.sikuli/1650644600490.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/CommandInterfaceOrganizationPropierties.sikuli/1651084264472.png")

def CtrlA():
    type('a', KeyModifier.CTRL)
    sleep(1)
    pass 

def CtrlF():
    type('f', KeyModifier.CTRL)
    sleep(1)
    pass

def DoubleClickOnGroupTovari():
    doubleClick("C:/vanessa/features/corp-video-features/Sikuli/DoubleClickOnGroupTovari.sikuli/NomenclaturaTovariSikuli.png")
    exists("C:/vanessa/features/corp-video-features/Sikuli/DoubleClickOnGroupTovari.sikuli/NomenklaturaListTovarsSikuli.png")
    exists("C:/vanessa/features/corp-video-features/Sikuli/DoubleClickOnGroupTovari.sikuli/PoleFindSikuli.png")
    exists("C:/vanessa/features/corp-video-features/Sikuli/DoubleClickOnGroupTovari.sikuli/NomenclaturaEdIzmStavkaNDSSikuli.png")
    exists("C:/vanessa/features/corp-video-features/Sikuli/DoubleClickOnGroupTovari.sikuli/PoleFindSikuli.png")
    exists("C:/vanessa/features/corp-video-features/Sikuli/DoubleClickOnGroupTovari.sikuli/1651809819167.png")
    exists("C:/vanessa/features/corp-video-features/Sikuli/DoubleClickOnGroupTovari.sikuli/NomenclaturaEdIzmStavkaNDSSikuli.png")

def Kassa_ClickOnOtchetKassira():
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/Kassa_ClickOnOtchetKassira.sikuli/OtchetKassiraPodrazdelKassa.png").targetOffset(-45,54))
    
    click("C:/vanessa/features/corp-video-features/Sikuli/Kassa_ClickOnOtchetKassira.sikuli/OtchetKassira.png")

def Kassa_ClickOnPKO():
    click("C:/vanessa/features/corp-video-features/Sikuli/Kassa_ClickOnPKO.sikuli/PKO.png")
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/Kassa_ClickOnPKO.sikuli/PKOPodrazdelKassa.png").targetOffset(-44,-24))

def OneSClickOnIcon():
    type('d', KeyModifier.WIN)
    click("C:/vanessa/features/corp-video-features/Sikuli/OneSClickOnIcon.sikuli/1651729303207.png")
    wait(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OneSClickOnIcon.sikuli/Icon1S.png").similar(0.80),10)
    if exists(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OneSClickOnIcon.sikuli/Icon1S.png").similar(0.80)):
        doubleClick(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OneSClickOnIcon.sikuli/Icon1S.png").similar(0.80))

def OneSConfigTestManager():
    wait("C:/vanessa/features/corp-video-features/Sikuli/OneSConfigTestManager.sikuli/ZagolovokConfigurator.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/OneSConfigTestManager.sikuli/Servis.png")
    click("Parametri.jpg")
    wait("C:/vanessa/features/corp-video-features/Sikuli/OneSConfigTestManager.sikuli/1ZakladkaZapusk.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/OneSConfigTestManager.sikuli/1ZakladkaZapusk.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/OneSConfigTestManager.sikuli/2ZakladkaDopolnitelnie.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/OneSConfigTestManager.sikuli/3RadioZapuskatiKakaManager.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/OneSConfigTestManager.sikuli/4KnokaPrimeniti.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/OneSConfigTestManager.sikuli/5KnopkaOk.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/OneSConfigTestManager.sikuli/9KnopkaNachatiOtladku.png")

def OneSEnterepriceRunVanessa():
    wait("C:/vanessa/features/corp-video-features/Sikuli/OneSEnterepriceRunVanessa.sikuli/1SEnterpriceZagolovokManager.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/OneSEnterepriceRunVanessa.sikuli/1SEnterpriceMenu.png")
    click("1MenuFile.jpg")
    click("2MenuOpen.jpg")
    click("C:/vanessa/features/corp-video-features/Sikuli/OneSEnterepriceRunVanessa.sikuli/1OpenFormMyComp.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/OneSEnterepriceRunVanessa.sikuli/2OpenFormDiskE.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/OneSEnterepriceRunVanessa.sikuli/3OpenFormVanessa.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/OneSEnterepriceRunVanessa.sikuli/OpenFormKnopkaOpen.png")
    

def OneSRunConfig():
    wait("C:/vanessa/features/corp-video-features/Sikuli/OneSRunConfig.sikuli/ZagolovokOknaZapuska1S.png")
    if not exists("C:/vanessa/features/corp-video-features/Sikuli/OneSRunConfig.sikuli/ImeaBaziNeaktivnoe.png") or not exists("C:/vanessa/features/corp-video-features/Sikuli/OneSRunConfig.sikuli/ImeaBaziAktivnoe.png"):
        click("C:/vanessa/features/corp-video-features/Sikuli/OneSRunConfig.sikuli/ZagolovokOknaZapuska1S.png")
        type('c')
        if exists("C:/vanessa/features/corp-video-features/Sikuli/OneSRunConfig.sikuli/ImeaBaziNeaktivnoe.png"):
            click("C:/vanessa/features/corp-video-features/Sikuli/OneSRunConfig.sikuli/ImeaBaziNeaktivnoe.png")
    
    if exists("C:/vanessa/features/corp-video-features/Sikuli/OneSRunConfig.sikuli/ImeaBaziAktivnoe.png"):
        click("C:/vanessa/features/corp-video-features/Sikuli/OneSRunConfig.sikuli/KnopkaConfigurator.png")
    
    wait("C:/vanessa/features/corp-video-features/Sikuli/OneSRunConfig.sikuli/KnopkaVoiti.png",20)
    click("C:/vanessa/features/corp-video-features/Sikuli/OneSRunConfig.sikuli/KnopkaVoiti.png")
    
    
        
            

def OpenReglReports():
    if (exists("C:/vanessa/features/corp-video-features/Sikuli/OpenReglReports.sikuli/1646439775281.png")):
            click("C:/vanessa/features/corp-video-features/Sikuli/OpenReglReports.sikuli/1646439785680.png")
    
    if (exists("C:/vanessa/features/corp-video-features/Sikuli/OpenReglReports.sikuli/reports-reglreports.png")):
            click("C:/vanessa/features/corp-video-features/Sikuli/OpenReglReports.sikuli/reports-reglreports.png")
            

def PodrazdelKassa():
    exists("C:/vanessa/features/corp-video-features/Sikuli/PodrazdelKassa.sikuli/PodrazdelKassa.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/PodrazdelKassa.sikuli/PodrazdelKassa.png")
    exists("C:/vanessa/features/corp-video-features/Sikuli/PodrazdelKassa.sikuli/RKO.png")

def TypeDELETE():
    type(Key.DELETE)
    pass

def TypeENTER():
    type(Key.ENTER)
    pass

def TypeTEXT():
    textParam = sys_argv_1
    type(textParam)
    type(Key.ENTER)

def VanessaRunTestKlient():
    wait("C:/vanessa/features/corp-video-features/Sikuli/VanessaRunTestKlient.sikuli/1VAZagolovok.png")
    wait("C:/vanessa/features/corp-video-features/Sikuli/VanessaRunTestKlient.sikuli/2VATestKlients.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/VanessaRunTestKlient.sikuli/2VATestKlients.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/VanessaRunTestKlient.sikuli/3VATestKlientsThisKlient.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/VanessaRunTestKlient.sikuli/4VATestKlientsKnopkaRunKlient.png")
    wait(Pattern("C:/vanessa/features/corp-video-features/Sikuli/VanessaRunTestKlient.sikuli/1SBaseTestKlient.png").similar(0.90),20)
    click("C:/vanessa/features/corp-video-features/Sikuli/VanessaRunTestKlient.sikuli/1SIconOnPanel.png")
    click("1SManagerOnPanel.jpg")
    wait("C:/vanessa/features/corp-video-features/Sikuli/VanessaRunTestKlient.sikuli/1651754519039.png")

def AdressnaeaStroka():
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/AdressnaeaStroka.sikuli/AdressnaeaStroka.png").targetOffset(65,-1))

def Chrome():
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/Chrome.sikuli/NovaeaVkladka.png").targetOffset(20,-1))
    wait("C:/vanessa/features/corp-video-features/Sikuli/OF/Chrome.sikuli/1658320902297.png")
    mouseMove("C:/vanessa/features/corp-video-features/Sikuli/OF/Chrome.sikuli/1658320902297.png")
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/Chrome.sikuli/ZakritiPervuiuVkladku.png").targetOffset(-17,0))
    mouseMove("C:/vanessa/features/corp-video-features/Sikuli/OF/Chrome.sikuli/1658313545518.png")
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/Chrome.sikuli/AdressnaeaStroka.png").targetOffset(65,-1))

def ClickButtonOK():
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/ClickButtonOK.sikuli/ButtonOK.png")

def CloseAllWindows():
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/CloseAllWindows.sikuli/Okna.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/CloseAllWindows.sikuli/CloseAll.png")

def cnasMD():
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/cnasMD.sikuli/NovaeaVkladka.png").targetOffset(20,-1))
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/cnasMD.sikuli/ZakritiPervuiuVkladku.png").targetOffset(-17,0))
    
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/cnasMD.sikuli/AdressnaeaStroka.png").targetOffset(65,-1))
    type("cnas.gov.md")
    type(Key.ENTER)
    
    wait("C:/vanessa/features/corp-video-features/Sikuli/OF/cnasMD.sikuli/MenuPentruPlatitoriDeContributii.png")
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/cnasMD.sikuli/MenuPentruPlatitoriDeContributii.png").targetOffset(17,45))
    
    wait("C:/vanessa/features/corp-video-features/Sikuli/OF/cnasMD.sikuli/MenuClassificatoare.png",10)
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/cnasMD.sikuli/MenuClassificatoare.png")
    
    exists(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/cnasMD.sikuli/TabelComparativ.png").similar(0.89))

def OProgramme():
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/OProgramme.sikuli/MenuSpravka.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/OProgramme.sikuli/OProgramme.png")
    #exists("C:/vanessa/features/corp-video-features/Sikuli/OF/OProgramme.sikuli/redactia1291.png")
    exists("C:/vanessa/features/corp-video-features/Sikuli/OF/OProgramme.sikuli/redactia12111.png")

def PereclucenieNaConfig():
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/PereclucenieNaConfig.sikuli/IconOneS.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/PereclucenieNaConfig.sikuli/Configurator.png")
    
    exists("C:/vanessa/features/corp-video-features/Sikuli/OF/PereclucenieNaConfig.sikuli/IconNaPodderjke.png")

def PereclucenieNaOneS():
    if exists("C:/vanessa/features/corp-video-features/Sikuli/OF/PereclucenieNaOneS.sikuli/OneS.png"):
        click("C:/vanessa/features/corp-video-features/Sikuli/OF/PereclucenieNaOneS.sikuli/OneS.png")
        click("C:/vanessa/features/corp-video-features/Sikuli/OF/PereclucenieNaOneS.sikuli/1SBuhOF.png")
    if exists("C:/vanessa/features/corp-video-features/Sikuli/OF/PereclucenieNaOneS.sikuli/OneSBlack.png"):
        click("C:/vanessa/features/corp-video-features/Sikuli/OF/PereclucenieNaOneS.sikuli/OneSBlack.png")
        click("C:/vanessa/features/corp-video-features/Sikuli/OF/PereclucenieNaOneS.sikuli/1SBuhOFBlack.png")
    #click("C:/vanessa/features/corp-video-features/Sikuli/OF/PereclucenieNaOneS.sikuli/Chrome.png")

def testKeyDown():
    keyDown(Key.ALT)
    keyDown(Key.TAB+Key.TAB)
    #keyUp(Key.TAB)
    keyDown(Key.TAB)
    #keyUp(Key.TAB)
    #keyUp(Key.ALT)

def typeCnasGovMD():
    type("cnas.gov.md")
    type(Key.ENTER)

def UpravlenieRazmeromOkna():
    #rightClick(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/UpravlenieRazmeromOkna.sikuli/ZagolovockNastroikaPolizovatelea.png").similar(0.50))
    rightClick("C:/vanessa/features/corp-video-features/Sikuli/OF/UpravlenieRazmeromOkna.sikuli/1658339571926.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/UpravlenieRazmeromOkna.sikuli/VosstanovitiPolojenieOkna.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/UpravlenieRazmeromOkna.sikuli/UpravlenieRazmeromOkna.png")

def ZakritiVkladku():
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/ZakritiVkladku.sikuli/ZakritiPervuiuVkladku.png").targetOffset(-17,0))

def ZapolnenieIB():
    
    wait(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/DannieBiliIzmeneni.png").targetOffset(-6,20))
    
    
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/MenuServis.png")
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/MenuServisEschio.png").similar(0.81))
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/MenuServisEschio.png").similar(0.80))
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/MenuServisEschio.png").similar(0.80))
    sleep(2)
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/MenuServisZapolnenieIB.png").similar(0.95).targetOffset(0,-5))
    
    click(Pattern("ZakladkaC:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/Spravochnik.png").similar(0.91))
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/ZapolnitiDoljnosti22.png").targetOffset(-71,0))
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/Vipolniti.png")
    sleep(5)
    
    
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/MenuServis.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/NastroikiPolzovatelea.png")
    
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/ZakladkaNastroiki.png")
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/ZagolovokNastroika.png").targetOffset(-3,12))
    
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/Poisk.png").targetOffset(30,11))
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/ButtonIskati.png")
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/PokazivatiNeispolzuemieDoljnosti.png").targetOffset(146,0))
    exists(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/NeIspolizuemieDoljnosti.png").targetOffset(465,0))
    
    
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/PokazivatiNeispolizuemieDoljnostiActiveFlag.png")
    
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/ButtonOk.png")
    
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/MenuOperatii.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/Spravochnik.png")
    
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/SpravochnikDoljnostiActiv.png").targetOffset(-55,0))
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/ButtonOKThin.png")
    
    exists("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/ButtonPokazivatiNeispolizuemieDoljnosti.png")
    
    exists("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/FlagNeIspolizuetsea.png")
    
    doubleClick(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/SsilkaNaNovuiuDoljnosti.png").targetOffset(-106,-2))
    
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/ButtonTriTochki.png")
    
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/ButtonExit.png").targetOffset(18,-2))
    
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/MenuZPAndKadri.png") 
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/MenuDokumenti.png") 
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/MenuKadrovieDocumenti.png")
    
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/ButtonDobavitiNoviiDokument.png")
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/ViborKadrovoe.png")
    
    click(Pattern("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/DataDoc.png").targetOffset(-39,-2))
    exists("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/Podrazdelenie.png")
    
    click("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/ButtonZapolniti.png")
    
    exists("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/KolonkiDoljnosti.png")
    exists("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/PustaeaNovaeaDoljnosti.png")
    exists("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/KolonkaS.png")
    exists("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/ZakladkaNachislenia.png")
    exists("C:/vanessa/features/corp-video-features/Sikuli/OF/ZapolnenieIB.sikuli/ButtonDa.png")
    


comand_filename   = sys.argv[1]
response_filename = sys.argv[2]
DoResponse(response_filename,"sikulix server started")
NeetToExit = False

while True:
    try:
        if not os.path.exists(comand_filename):
            sleep(0.3)
            continue
    except:
            continue
    
    
    with open(comand_filename) as data_file_comand:    
            dataofcomand = json.load(data_file_comand)
            comand = dataofcomand['comand']
            if comand == "exit0":
                NeetToExit = True
                break



            elif comand == "ClickOnElementZatrati":
                read_comand(dataofcomand)
                ClickOnElementZatrati()
                DoResponse(response_filename,'success')


            elif comand == "ClickOnFileName":
                read_comand(dataofcomand)
                ClickOnFileName()
                DoResponse(response_filename,'success')


            elif comand == "ClickOnKontragentStatistica":
                read_comand(dataofcomand)
                ClickOnKontragentStatistica()
                DoResponse(response_filename,'success')


            elif comand == "ClickRazdelDown":
                read_comand(dataofcomand)
                ClickRazdelDown()
                DoResponse(response_filename,'success')


            elif comand == "CommandInterfaceOrganizationPropierties":
                read_comand(dataofcomand)
                CommandInterfaceOrganizationPropierties()
                DoResponse(response_filename,'success')


            elif comand == "CtrlA":
                read_comand(dataofcomand)
                CtrlA()
                DoResponse(response_filename,'success')


            elif comand == "CtrlF":
                read_comand(dataofcomand)
                CtrlF()
                DoResponse(response_filename,'success')


            elif comand == "DoubleClickOnGroupTovari":
                read_comand(dataofcomand)
                DoubleClickOnGroupTovari()
                DoResponse(response_filename,'success')


            elif comand == "Kassa_ClickOnOtchetKassira":
                read_comand(dataofcomand)
                Kassa_ClickOnOtchetKassira()
                DoResponse(response_filename,'success')


            elif comand == "Kassa_ClickOnPKO":
                read_comand(dataofcomand)
                Kassa_ClickOnPKO()
                DoResponse(response_filename,'success')


            elif comand == "OneSClickOnIcon":
                read_comand(dataofcomand)
                OneSClickOnIcon()
                DoResponse(response_filename,'success')


            elif comand == "OneSConfigTestManager":
                read_comand(dataofcomand)
                OneSConfigTestManager()
                DoResponse(response_filename,'success')


            elif comand == "OneSEnterepriceRunVanessa":
                read_comand(dataofcomand)
                OneSEnterepriceRunVanessa()
                DoResponse(response_filename,'success')


            elif comand == "OneSRunConfig":
                read_comand(dataofcomand)
                OneSRunConfig()
                DoResponse(response_filename,'success')


            elif comand == "OpenReglReports":
                read_comand(dataofcomand)
                OpenReglReports()
                DoResponse(response_filename,'success')


            elif comand == "PodrazdelKassa":
                read_comand(dataofcomand)
                PodrazdelKassa()
                DoResponse(response_filename,'success')


            elif comand == "TypeDELETE":
                read_comand(dataofcomand)
                TypeDELETE()
                DoResponse(response_filename,'success')


            elif comand == "TypeENTER":
                read_comand(dataofcomand)
                TypeENTER()
                DoResponse(response_filename,'success')


            elif comand == "TypeTEXT":
                read_comand(dataofcomand)
                TypeTEXT()
                DoResponse(response_filename,'success')


            elif comand == "VanessaRunTestKlient":
                read_comand(dataofcomand)
                VanessaRunTestKlient()
                DoResponse(response_filename,'success')


            elif comand == "AdressnaeaStroka":
                read_comand(dataofcomand)
                AdressnaeaStroka()
                DoResponse(response_filename,'success')


            elif comand == "Chrome":
                read_comand(dataofcomand)
                Chrome()
                DoResponse(response_filename,'success')


            elif comand == "ClickButtonOK":
                read_comand(dataofcomand)
                ClickButtonOK()
                DoResponse(response_filename,'success')


            elif comand == "CloseAllWindows":
                read_comand(dataofcomand)
                CloseAllWindows()
                DoResponse(response_filename,'success')


            elif comand == "cnasMD":
                read_comand(dataofcomand)
                cnasMD()
                DoResponse(response_filename,'success')


            elif comand == "OProgramme":
                read_comand(dataofcomand)
                OProgramme()
                DoResponse(response_filename,'success')


            elif comand == "PereclucenieNaConfig":
                read_comand(dataofcomand)
                PereclucenieNaConfig()
                DoResponse(response_filename,'success')


            elif comand == "PereclucenieNaOneS":
                read_comand(dataofcomand)
                PereclucenieNaOneS()
                DoResponse(response_filename,'success')


            elif comand == "testKeyDown":
                read_comand(dataofcomand)
                testKeyDown()
                DoResponse(response_filename,'success')


            elif comand == "typeCnasGovMD":
                read_comand(dataofcomand)
                typeCnasGovMD()
                DoResponse(response_filename,'success')


            elif comand == "UpravlenieRazmeromOkna":
                read_comand(dataofcomand)
                UpravlenieRazmeromOkna()
                DoResponse(response_filename,'success')


            elif comand == "ZakritiVkladku":
                read_comand(dataofcomand)
                ZakritiVkladku()
                DoResponse(response_filename,'success')


            elif comand == "ZapolnenieIB":
                read_comand(dataofcomand)
                ZapolnenieIB()
                DoResponse(response_filename,'success')



    #f.close()
    os.remove(comand_filename)
        
    if NeetToExit:
        break
            
    sleep(0.3)        


exit(0)

