﻿#language: ru

@tree

Функционал: Обзор фреймворка Allure 2

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 
Контекст:
	И Пауза 10
	

Сценарий: Переключение на открытый отчет.
	*Скачиваем файл "complete.html" и открываем его браузером.
		И Пауза 1

	*Открывается основная форма отчета, в которой отображается краткий обзор представленной в отчете информации.
		И пауза 1

	*Отчет разбит на разделы.
		и пауза 1

	*Переходим к разделу категории
		И пауза 1
		И я выполняю скрипт SikuliX "ClickCategories"

	*В этом разделе представлена информация по ошибкам, зарегистрированным при тестировании
		И Пауза 1

	*Все ошибки сгруппированы
		И я выполняю скрипт SikuliX "ClickCategoriesErrors"

	#[autodoc.mute]
	И я выполняю скрипт SikuliX "ClickSuites"
	И я выполняю скрипт SikuliX "ClickGraphs"
	И я выполняю скрипт SikuliX "ClickTimeline"
	И я выполняю скрипт SikuliX "ClickBihaviors"
	И я выполняю скрипт SikuliX "ClickPackages"
		
		
				
