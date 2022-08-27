@echo allure generate .\allurereport\ -o .\allurereport_html
allure-combine .\allurereport_html --remove-temp-files --ignore-utf8-errors >.\logallurecombine.txt
pause