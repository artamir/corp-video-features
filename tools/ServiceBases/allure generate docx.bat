@echo allure generate .\allurereport\ -o .\allurereport_html
allure-docx .\allurereport_html\ .\allurereport.docx
allure-docx --help
pause