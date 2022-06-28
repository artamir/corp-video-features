﻿#language: ru

@tree

Функционал: VA - настройка конфигуратора

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: Настройка запуска конфигуратора в режиме тест менеджера

	*Запускаем 1С в режиме конфигуратор
		И я выполняю скрипт SikuliX "OneSClickOnIcon.sikuli"
		И я выполняю скрипт SikuliX "OneSRunConfig.sikuli"
		И я жду картинки "ZagolovokConfigurator" в течение 20 секунд

	*Когда открылся конфигуратор, переходим в меню Сервис - Параметры
		И я рисую рамку вокруг картинки "Servis"
			|'Цвет'          | 'Зеленый'        |
			|'Длительность'  | '2000'           |
			|'Прозрачность'	 | '127'           	|
			|'Толщина'  	 | '3'           	|		
		И Пауза 1
		Затем клик на картинку "Servis"
		И Пауза 1

		И я рисую рамку вокруг картинки "Parametri"
			|'Цвет'          | 'Зеленый'        |
			|'Длительность'  | '2000'           |
			|'Прозрачность'	 | '127'           	|
			|'Толщина'  	 | '3'           	|
		И Пауза 1
		Затем клик на картинку "Parametri"

	*В открывшемся окне "Параметры" переходим на закладку "Запуск 1С"
		И я рисую рамку вокруг картинки "1ZakladkaZapusk"
			|'Цвет'          | 'Зеленый'        |
			|'Длительность'  | '2000'           |
			|'Прозрачность'	 | '127'           	|
			|'Толщина'  	 | '3'           	|		
		И Пауза 1
		Затем клик на картинку "1ZakladkaZapusk"

	*Внутри закладки Запуск 1С переходим к закладке Дополнительные
		И я рисую рамку вокруг картинки "2ZakladkaDopolnitelnie"
			|'Цвет'          | 'Зеленый'        |
			|'Длительность'  | '2000'           |
			|'Прозрачность'	 | '127'           	|
			|'Толщина'  	 | '3'           	|		
		И Пауза 1
		Затем клик на картинку "2ZakladkaDopolnitelnie"

	*Ставим точку у пункта Запускать как менеджер тестирования
		И я рисую рамку вокруг картинки "3RadioZapuskatiKakaManager"
			|'Цвет'          | 'Зеленый'        |
			|'Длительность'  | '2000'           |
			|'Прозрачность'	 | '127'           	|
			|'Толщина'  	 | '3'           	|		
		И Пауза 1
		Затем клик на картинку "3RadioZapuskatiKakaManager"

	*Нажимаем Применить и ОК
		Затем клик на картинку "4KnokaPrimeniti"
		И Пауза 2
		
		Затем клик на картинку "5KnopkaOk"
		И Пауза 2
			
	*Настройка конфигуратора завершена
		И Пауза 1

	*В дальнейшем, для запуска предприятия в режиме менеджера тестирования, достаточно зайти в конфигуратор и нажать кнопку начать отладку.
		И я рисую рамку вокруг картинки "9KnopkaNachatiOtladku"
			|'Цвет'          | 'Зеленый'        |
			|'Длительность'  | '2000'           |
			|'Прозрачность'	 | '127'           	|
			|'Толщина'  	 | '3'           	|		
		И Пауза 1
		Затем клик на картинку "9KnopkaNachatiOtladku"
		И я жду картинки "1SEnterpriceZagolovokManager" в течение 20 секунд
		
			
	*То, что предприятие открылось в режиме менеджера тестирования, видно в заголовке	
		И я рисую рамку вокруг картинки "1SEnterpriceZagolovokManager"
			|'Цвет'          | 'Зеленый'        |
			|'Длительность'  | '2000'           |
			|'Прозрачность'	 | '127'           	|
			|'Толщина'  	 | '3'           	|		
		И Пауза 3		
		
		
		
	
