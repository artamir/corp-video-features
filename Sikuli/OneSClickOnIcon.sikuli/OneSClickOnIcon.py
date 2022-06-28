type('d', KeyModifier.WIN)
click("1651729303207.png")
wait(Pattern("Icon1S.png").similar(0.80),10)
if exists(Pattern("Icon1S.png").similar(0.80)):
    doubleClick(Pattern("Icon1S.png").similar(0.80))