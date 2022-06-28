﻿#language: ru

@tree

Функционал: Коммандная панель "Обработки.ОбщиеОбъектыРеглОтчетности" дымовое тестирование

Как <Разработчик> я хочу
<убедиться, что работает создание новых отчетов из обработки ОбщиеОбъектыРеглОтчетности> 

Контекст:

	Дано я запускаю SikuliX сервер

	Дано Я подключаю клиент тестирования по имени "Веб"

Сценарий: Отчет Munca1_2022_УФ
	*Проверяю открытие форм отчета Munca1_2022_УЭФ
		Дано Я устанавливаю переменные регл отчета Munca1_2022_УФ
		И я выполняю дымовое тестирование регл отчета из формы управления отчетностью

Сценарий: Отчет ГодовойБаланс_Сокращенный_2020_УФ
	*Проверяю открытие форм отчета ГодовойБалансСокращенный 2020
		Дано Я устанавливаю переменные регл отчета ГодовойБаланс_Сокращенный_2020_УФ
		
		И Я выполняю открытие основной формы регл отчета из формы управления отчетностью
	
		//Для форм с видимостью реквизита "Периодичность"
		И из выпадающего списка с именем "мПериодичность" я выбираю точное значение 'Год'
		
		И Я устанавливаю период в основной форме "$ПериодВОсновнойФорме$"
		И из выпадающего списка с именем "Организация" я выбираю точное значение "$Организация$"
		И я нажимаю на кнопку с именем 'ОткрытьФормуОтчета'
		Тогда открылось окно "$ЗаголовокФормыОтчета$"
		И я проверяю видимость ГруппаНастройки
		Если в логе сообщений TestClient есть строка по шаблону "Разработчику отчета*" Тогда
			Тогда я вызываю исключение с текстом сообщения

Сценарий: Отчет ГодовойБаланс_2020_УФ
	#[autodoc.text]
	*Проверяю открытие форм отчета ГодовойБаланс 2020	
		Дано я устанавливаю переменные регл отчета ГодовойБаланс_2020_УФ
	
		И Я выполняю открытие основной формы регл отчета из формы управления отчетностью
		
		//Для форм с видимостью реквизита "Периодичность"
		И из выпадающего списка с именем "мПериодичность" я выбираю точное значение 'Год'

		И Я устанавливаю период в основной форме "$ПериодВОсновнойФорме$"
		И из выпадающего списка с именем "Организация" я выбираю точное значение "$Организация$"
		И я нажимаю на кнопку с именем 'ОткрытьФормуОтчета'
		Тогда открылось окно "$ЗаголовокФормыОтчета$"
		И я проверяю видимость ГруппаНастройки
		Если в логе сообщений TestClient есть строка по шаблону "Разработчику отчета*" Тогда
			Тогда я вызываю исключение с текстом сообщения

Сценарий: Отчет ДекларацияНДС_2021_УФ
	*Проверяю открытие форм отчета ДекларацияНДС 2021
		Дано я устанавливаю переменные регл отчета ДекларацияНДС_2021_УФ
		И Я выполняю дымовое тестирование регл отчета из формы управления отчетностью
		И Я закрываю окно '*за*($Организация$): Декларация НДС *'
		
		Если появилось окно с заголовком "1С:Предприятие" в течение 10 секунд Тогда
					И я нажимаю на кнопку с именем 'Button1'
		
		И Пауза 5

		Если появилось окно с заголовком "1С:Предприятие" в течение 10 секунд Тогда
					И я нажимаю на кнопку с именем 'Button1'

Сценарий: Отчет ОтчетПоМестнымСборам_УФ
	*Проверяю открытие форм отчета Отчет По Местным Сборам
		Дано я устанавливаю переменные регл отчета ОтчетПоМестнымСборам_УФ
		И Я выполняю дымовое тестирование регл отчета из формы управления отчетностью

Сценарий: Отчет POLMED_УФ
	*Проверяю открытие форм отчета Полмед
		Дано я устанавливаю переменные регл отчета POLMED_УФ
		И Я выполняю дымовое тестирование регл отчета из формы управления отчетностью

Сценарий: Отчет ЛичнаяКарточкаХоз2018_УФ
	*Проверяю открытие форм отчета Личная Карточка
		Дано я устанавливаю переменные регл отчета ЛичнаяКарточкаХоз2018_УФ
		И Я выполняю дымовое тестирование регл отчета из формы управления отчетностью
		
Сценарий: Отчет Статистический5сi2017_Хозрасчетный_УФ
	*Проверяю открытие форм отчета Статистический отчет 5 чеи 2017
		Дано я устанавливаю переменные регл отчета Статистический5сi2017_Хозрасчетный_УФ
		И Я выполняю дымовое тестирование регл отчета из формы управления отчетностью		
		
Сценарий: Отчет DSA19_УФ
	*Проверяю открытие форм отчета ДэСэА 2019
		Дано я устанавливаю переменные регл отчета DSA19_УФ
		И Я выполняю дымовое тестирование регл отчета из формы управления отчетностью				
		
Сценарий: Отчет ОтчетПоЗаймам_Anexa11_УФ
	*Проверяю открытие форм отчета ОтчетПоЗаймам Анекса11
		Дано я устанавливаю переменные регл отчета ОтчетПоЗаймам_Anexa11_УФ
		И Я выполняю дымовое тестирование регл отчета из формы управления отчетностью						
		
Сценарий: Отчет SIMM20_УФ
	*Проверяю открытие форм отчета СИМ М 20
		Дано я устанавливаю переменные регл отчета SIMM20_УФ
		И Я выполняю дымовое тестирование регл отчета из формы управления отчетностью								