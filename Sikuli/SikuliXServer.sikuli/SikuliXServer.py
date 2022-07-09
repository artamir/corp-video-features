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



def 1VanessaRunTestKlient():
    wait("E:/vanessa/corp/features/Sikuli/1VanessaRunTestKlient.sikuli/1VAZagolovok.png")
    wait("E:/vanessa/corp/features/Sikuli/1VanessaRunTestKlient.sikuli/2VATestKlients.png")
    click("E:/vanessa/corp/features/Sikuli/1VanessaRunTestKlient.sikuli/2VATestKlients.png")
    click("E:/vanessa/corp/features/Sikuli/1VanessaRunTestKlient.sikuli/3VATestKlientsThisKlient.png")
    click("E:/vanessa/corp/features/Sikuli/1VanessaRunTestKlient.sikuli/4VATestKlientsKnopkaRunKlient.png")
    wait(Pattern("E:/vanessa/corp/features/Sikuli/1VanessaRunTestKlient.sikuli/1SBaseTestKlient.png").similar(0.90),20)
    click("E:/vanessa/corp/features/Sikuli/1VanessaRunTestKlient.sikuli/1SIconOnPanel.png")
    click("1SManagerOnPanel.jpg")
    wait("E:/vanessa/corp/features/Sikuli/1VanessaRunTestKlient.sikuli/1651754519039.png")

def ClickOnElementZatrati():
    click(Pattern("E:/vanessa/corp/features/Sikuli/ClickOnElementZatrati.sikuli/StatiiZatratNaimenovanie.png").targetOffset(55,0))

def ClickOnFileName():
    if exists(Pattern("E:/vanessa/corp/features/Sikuli/ClickOnFileName.sikuli/1648669327734.png").targetOffset(-183,-16)):
        click(Pattern("E:/vanessa/corp/features/Sikuli/ClickOnFileName.sikuli/1648669327734.png").targetOffset(-183,-16))
    
    pass

def ClickRazdelDown():
    click("E:/vanessa/corp/features/Sikuli/ClickRazdelDown.sikuli/1646790691953.png")
    
    

def CommandInterfaceOrganizationPropierties():
    "E:/vanessa/corp/features/Sikuli/CommandInterfaceOrganizationPropierties.sikuli/1650827191667.png""E:/vanessa/corp/features/Sikuli/CommandInterfaceOrganizationPropierties.sikuli/1650644600490.png""E:/vanessa/corp/features/Sikuli/CommandInterfaceOrganizationPropierties.sikuli/1651084264472.png"

def DoubleClickOnGroupTovari():
    doubleClick("E:/vanessa/corp/features/Sikuli/DoubleClickOnGroupTovari.sikuli/NomenclaturaTovariSikuli.png")
    exists("E:/vanessa/corp/features/Sikuli/DoubleClickOnGroupTovari.sikuli/NomenklaturaListTovarsSikuli.png")
    exists("E:/vanessa/corp/features/Sikuli/DoubleClickOnGroupTovari.sikuli/PoleFindSikuli.png")
    exists("E:/vanessa/corp/features/Sikuli/DoubleClickOnGroupTovari.sikuli/NomenclaturaEdIzmStavkaNDSSikuli.png")
    exists("E:/vanessa/corp/features/Sikuli/DoubleClickOnGroupTovari.sikuli/PoleFindSikuli.png")
    exists("E:/vanessa/corp/features/Sikuli/DoubleClickOnGroupTovari.sikuli/1651809819167.png")
    exists("E:/vanessa/corp/features/Sikuli/DoubleClickOnGroupTovari.sikuli/NomenclaturaEdIzmStavkaNDSSikuli.png")

def Kassa_ClickOnOtchetKassira():
    click(Pattern("E:/vanessa/corp/features/Sikuli/Kassa_ClickOnOtchetKassira.sikuli/OtchetKassiraPodrazdelKassa.png").targetOffset(-45,54))
    
    "E:/vanessa/corp/features/Sikuli/Kassa_ClickOnOtchetKassira.sikuli/OtchetKassira.png"

def Kassa_ClickOnPKO():
    "E:/vanessa/corp/features/Sikuli/Kassa_ClickOnPKO.sikuli/PKO.png"
    click(Pattern("E:/vanessa/corp/features/Sikuli/Kassa_ClickOnPKO.sikuli/PKOPodrazdelKassa.png").targetOffset(-44,-24))

def OneSClickOnIcon():
    type('d', KeyModifier.WIN)
    click("E:/vanessa/corp/features/Sikuli/OneSClickOnIcon.sikuli/1651729303207.png")
    wait(Pattern("E:/vanessa/corp/features/Sikuli/OneSClickOnIcon.sikuli/Icon1S.png").similar(0.80),10)
    if exists(Pattern("E:/vanessa/corp/features/Sikuli/OneSClickOnIcon.sikuli/Icon1S.png").similar(0.80)):
        doubleClick(Pattern("E:/vanessa/corp/features/Sikuli/OneSClickOnIcon.sikuli/Icon1S.png").similar(0.80))

def OneSConfigTestManager():
    wait("E:/vanessa/corp/features/Sikuli/OneSConfigTestManager.sikuli/ZagolovokConfigurator.png")
    click("E:/vanessa/corp/features/Sikuli/OneSConfigTestManager.sikuli/Servis.png")
    click("Parametri.jpg")
    wait("E:/vanessa/corp/features/Sikuli/OneSConfigTestManager.sikuli/1ZakladkaZapusk.png")
    click("E:/vanessa/corp/features/Sikuli/OneSConfigTestManager.sikuli/1ZakladkaZapusk.png")
    click("E:/vanessa/corp/features/Sikuli/OneSConfigTestManager.sikuli/2ZakladkaDopolnitelnie.png")
    click("E:/vanessa/corp/features/Sikuli/OneSConfigTestManager.sikuli/3RadioZapuskatiKakaManager.png")
    click("E:/vanessa/corp/features/Sikuli/OneSConfigTestManager.sikuli/4KnokaPrimeniti.png")
    click("E:/vanessa/corp/features/Sikuli/OneSConfigTestManager.sikuli/5KnopkaOk.png")
    click("E:/vanessa/corp/features/Sikuli/OneSConfigTestManager.sikuli/9KnopkaNachatiOtladku.png")

def OneSEnterepriceRunVanessa():
    wait("E:/vanessa/corp/features/Sikuli/OneSEnterepriceRunVanessa.sikuli/1SEnterpriceZagolovokManager.png")
    click("E:/vanessa/corp/features/Sikuli/OneSEnterepriceRunVanessa.sikuli/1SEnterpriceMenu.png")
    click("1MenuFile.jpg")
    click("2MenuOpen.jpg")
    click("E:/vanessa/corp/features/Sikuli/OneSEnterepriceRunVanessa.sikuli/1OpenFormMyComp.png")
    click("E:/vanessa/corp/features/Sikuli/OneSEnterepriceRunVanessa.sikuli/2OpenFormDiskE.png")
    click("E:/vanessa/corp/features/Sikuli/OneSEnterepriceRunVanessa.sikuli/3OpenFormVanessa.png")
    click("E:/vanessa/corp/features/Sikuli/OneSEnterepriceRunVanessa.sikuli/OpenFormKnopkaOpen.png")
    

def OneSRunConfig():
    wait("E:/vanessa/corp/features/Sikuli/OneSRunConfig.sikuli/ZagolovokOknaZapuska1S.png")
    if not exists("E:/vanessa/corp/features/Sikuli/OneSRunConfig.sikuli/ImeaBaziNeaktivnoe.png") or not exists("E:/vanessa/corp/features/Sikuli/OneSRunConfig.sikuli/ImeaBaziAktivnoe.png"):
        click("E:/vanessa/corp/features/Sikuli/OneSRunConfig.sikuli/ZagolovokOknaZapuska1S.png")
        type('c')
        if exists("E:/vanessa/corp/features/Sikuli/OneSRunConfig.sikuli/ImeaBaziNeaktivnoe.png"):
            click("E:/vanessa/corp/features/Sikuli/OneSRunConfig.sikuli/ImeaBaziNeaktivnoe.png")
    
    if exists("E:/vanessa/corp/features/Sikuli/OneSRunConfig.sikuli/ImeaBaziAktivnoe.png"):
        click("E:/vanessa/corp/features/Sikuli/OneSRunConfig.sikuli/KnopkaConfigurator.png")
    
    wait("E:/vanessa/corp/features/Sikuli/OneSRunConfig.sikuli/KnopkaVoiti.png",20)
    click("E:/vanessa/corp/features/Sikuli/OneSRunConfig.sikuli/KnopkaVoiti.png")
    
    
        
            

def OpenReglReports():
    if (exists("E:/vanessa/corp/features/Sikuli/OpenReglReports.sikuli/1646439775281.png")):
            click("E:/vanessa/corp/features/Sikuli/OpenReglReports.sikuli/1646439785680.png")
    
    if (exists("E:/vanessa/corp/features/Sikuli/OpenReglReports.sikuli/reports-reglreports.png")):
            click("E:/vanessa/corp/features/Sikuli/OpenReglReports.sikuli/reports-reglreports.png")
            

def PodrazdelKassa():
    "E:/vanessa/corp/features/Sikuli/PodrazdelKassa.sikuli/PodrazdelKassa.png"
    click("E:/vanessa/corp/features/Sikuli/PodrazdelKassa.sikuli/PodrazdelKassa.png")
    "E:/vanessa/corp/features/Sikuli/PodrazdelKassa.sikuli/RKO.png"

def ZapolnenieIB():
    click("E:/vanessa/corp/features/Sikuli/OF/ZapolnenieIB.sikuli/Okna.png")
    click("E:/vanessa/corp/features/Sikuli/OF/ZapolnenieIB.sikuli/CloseAll.png")
    
    click("E:/vanessa/corp/features/Sikuli/OF/ZapolnenieIB.sikuli/MenuServis.png")
    click(Pattern("E:/vanessa/corp/features/Sikuli/OF/ZapolnenieIB.sikuli/MenuServisEschio.png").similar(0.81))
    click(Pattern("E:/vanessa/corp/features/Sikuli/OF/ZapolnenieIB.sikuli/MenuServisEschio.png").similar(0.80))
    click(Pattern("E:/vanessa/corp/features/Sikuli/OF/ZapolnenieIB.sikuli/MenuServisEschio.png").similar(0.80))
    sleep(2)
    click(Pattern("E:/vanessa/corp/features/Sikuli/OF/ZapolnenieIB.sikuli/MenuServisZapolnenieIB.png").similar(0.95).targetOffset(0,-5))
    
    click(Pattern("E:/vanessa/corp/features/Sikuli/OF/ZapolnenieIB.sikuli/ZakladkaSpravochnik.png").similar(0.91))
    click(Pattern("E:/vanessa/corp/features/Sikuli/OF/ZapolnenieIB.sikuli/ZapolnitiDoljnosti22.png").targetOffset(-71,0))
    click("E:/vanessa/corp/features/Sikuli/OF/ZapolnenieIB.sikuli/Vipolniti.png")

def v7-PrihodDizToplivo-1.Menu-Refs-Contr():
    wait("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo-1.Menu-Refs-Contr.sikuli/1.2 Caption_Transpolo.png")
    click("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo-1.Menu-Refs-Contr.sikuli/2.1 Menu-reference.png")
    click("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo-1.Menu-Refs-Contr.sikuli/2.2 Menu-kontragents.png")

def v7-PrihodDizToplivo-2.doubleclick-on-Strani():
    doubleClick(Pattern("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo-2.doubleclick-on-Strani.sikuli/3 Group Strani.png").targetOffset(-73,-2))

def v7-PrihodDizToplivo-click on Naimenovanie():
    click(Pattern("5.1 Pole Naimenovanie.png").targetOffset(38,-1))

def v7-PrihodDizToplivo-VidRefStrani():
    while not exists("11.1 type Strani.png"):
            #click(Pattern("11.3 button down.png").similar(0.91))
            for i in range(10):
                click(Pattern("1653576146739.png").similar(0.81).targetOffset(-43,75))

def v7-PrihodDizToplivo():
    if exists("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/1.1icon_v7.png"):
        click("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/1.1icon_v7.png")
    
        wait("1.2 Caption_Transpolo.png")
        click("2.1 Menu-reference.png")
        click("2.2 Menu-kontragents.png")
        wait("3 Group Strani.png")
        doubleClick(Pattern("3 Group Strani.png").targetOffset(-73,-2))
        wait("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/4. Caption Kontragents.png")
        click("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/4.1 Button Ins.png")
        wait("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/5. Caption SvedeniaOKontr.png")
        click(Pattern("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/5.1 Pole Naimenovanie.png").targetOffset(38,-1))
        type("Ucraina")
        click("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/6. E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/Button OK.png")
        wait("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/7.Form SaveElement.png")
        click("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/7.1 Button Da.png")
        click("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/10.1 Menu-Operation.png")
        click("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/10.2 menu-Refs.png")
    
        while not exists("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/11.1 type Strani.png"):
            #click(Pattern("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/11.3 button down.png").similar(0.91))
            for i in range(10):
                click(Pattern("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/1653576146739.png").similar(0.81).targetOffset(-43,75))
            
        click("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/11.1 type Strani.png")        
        click("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/Button OK.png")  
        click(Pattern("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/14.1 Click in column Naimenovanie.png").similar(0.95))
        type("ucrai")
        doubleClick(Pattern("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/14.2 list strani ucraina.png").targetOffset(27,-2))
        wait("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/15.1 Caption Strani-Ucraina.png")
        click(Pattern("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/15.2 pole contragent.png").targetOffset(140,1))
        
        wait("3 Group Strani.png")
        doubleClick(Pattern("3 Group Strani.png").targetOffset(-73,-2))
        click(Pattern("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/17.1 Click Column-Contragent.png").targetOffset(0,12))
        type("ucrai")
        doubleClick(Pattern("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/17.4 list contr ucraina.png").targetOffset(-32,-1))
        click("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/6. E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/Button OK.png")
        wait("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/7.Form SaveElement.png")
        click("E:/vanessa/corp/features/Sikuli/v7/v7-PrihodDizToplivo.sikuli/7.1 Button Da.png")


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



            elif comand == "1VanessaRunTestKlient":
                read_comand(dataofcomand)
                1VanessaRunTestKlient()
                DoResponse(response_filename,'success')


            elif comand == "ClickOnElementZatrati":
                read_comand(dataofcomand)
                ClickOnElementZatrati()
                DoResponse(response_filename,'success')


            elif comand == "ClickOnFileName":
                read_comand(dataofcomand)
                ClickOnFileName()
                DoResponse(response_filename,'success')


            elif comand == "ClickRazdelDown":
                read_comand(dataofcomand)
                ClickRazdelDown()
                DoResponse(response_filename,'success')


            elif comand == "CommandInterfaceOrganizationPropierties":
                read_comand(dataofcomand)
                CommandInterfaceOrganizationPropierties()
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


            elif comand == "ZapolnenieIB":
                read_comand(dataofcomand)
                ZapolnenieIB()
                DoResponse(response_filename,'success')


            elif comand == "v7-PrihodDizToplivo-1.Menu-Refs-Contr":
                read_comand(dataofcomand)
                v7-PrihodDizToplivo-1.Menu-Refs-Contr()
                DoResponse(response_filename,'success')


            elif comand == "v7-PrihodDizToplivo-2.doubleclick-on-Strani":
                read_comand(dataofcomand)
                v7-PrihodDizToplivo-2.doubleclick-on-Strani()
                DoResponse(response_filename,'success')


            elif comand == "v7-PrihodDizToplivo-click on Naimenovanie":
                read_comand(dataofcomand)
                v7-PrihodDizToplivo-click on Naimenovanie()
                DoResponse(response_filename,'success')


            elif comand == "v7-PrihodDizToplivo-VidRefStrani":
                read_comand(dataofcomand)
                v7-PrihodDizToplivo-VidRefStrani()
                DoResponse(response_filename,'success')


            elif comand == "v7-PrihodDizToplivo":
                read_comand(dataofcomand)
                v7-PrihodDizToplivo()
                DoResponse(response_filename,'success')



    #f.close()
    os.remove(comand_filename)
        
    if NeetToExit:
        break
            
    sleep(0.3)        


exit(0)

