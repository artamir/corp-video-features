﻿#language: ru

@tree

Функционал: Видео курсы. 9.1 Установка цен номенклатуры

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Контекст: 
	
	И я запоминаю строку "9.1 Установка цен номенклатуры" в переменную "ИмяСценария"

	И я подготавливаю данные для сценария "$ИмяСценария$"

	И я создаю данные которых не хватает для сценария "$ИмяСценария$"

	Дано Я подключаю клиент тестирования по имени "Веб"

	Дано я активизирую окно текущего клиента тестирования
	И я закрываю все окна клиентского приложения
	И я активизирую браузер и устанавливаю полноэкранный режим
	
	И Пауза 10	


Сценарий: 9.1 Установка цен номенклатуры 

	*Документ "Установка цен номенклатуры" предназначен для документального фиксирования изменения отпускных цен. 
		И Пауза 1

	*Открыть форму списка всех документов установки цен можно в разделе 'Продажи'
		И Пауза 4
		И Я перехожу в раздел "Продажи" с подсказкой 'Раздел "Продажи"'  EnjoyHint в браузере

	*Далее - 'Установка цен номенклатуры'
		И Пауза 1
		И Я перехожу в функцию "Установка цен номенклатуры" с подсказкой "Установка цен номенклатуры" EnjoyHint в браузере
		Тогда открылось окно 'Установка цен номенклатуры'

	*При проведении документа информация о ценах записывается  в регистр сведений "Цены номенклатуры" по каждой позиции номенклатуры.
		И пауза 1
		И я нажимаю на кнопку с именем 'ФормаОбщаяКомандаПоказатьДвиженияДокумента'
		Тогда открылось окно 'Таблица'
		
		И Пауза 5
		И Я закрываю окно 'Таблица'


	*Создадим новый документ.
		И Пауза 1
		И Я нажимаю на кнопку "ФормаСоздать" с подсказкой "Кнопка создания нового документа" EnjoyHint в браузере
		Тогда открылось окно 'Установка цен номенклатуры (создание)'

	*В документ вводится список позиций номенклатуры, и для них назначаются цены. Цены могут быть назначены в любой валюте и для любой единицы измерения. 
		

//	*Изначально датой документа является рабочая дата 
//		И пауза 1
//
//	*  Проставляем дату документа
//		И Пауза 1
//	
//
//	И в поле с именем 'Дата' я ввожу текст '01.05.2022  0:00:00'
//	И я перехожу к следующему реквизиту
//	И я нажимаю кнопку выбора у поля с именем "ТипЦен"
//	И пауза 1
//	* Выбираем тип цен по которому будет установлена отпускная цена
//	Тогда открылось окно 'Типы цен номенклатуры'
//	И в таблице "Список" я перехожу к строке:
//		| 'Код'      | 'Наименование'   |
//		| '00000002' | 'Розничная цена' |
//	И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюИзменить' на элементе формы с именем "Список"
//	Тогда открылось окно 'Розничная цена (Типы цен номенклатуры)'
//	И пауза 1 
//	* Цены могут быть назначены в любой валюте и для любой единицы измерения
//	И из выпадающего списка с именем "ВалютаЦены" я выбираю точное значение 'MDL'
//	И я изменяю флаг с именем 'ЦенаВключаетНДС'
//    И я изменяю флаг с именем 'ЦенаВключаетНДС'
//	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
//	И я жду закрытия окна 'Розничная цена (Типы цен номенклатуры) *' в течение 20 секунд
//	Тогда открылось окно 'Типы цен номенклатуры'
//	И в таблице "Список" я выбираю текущую строку
//	Тогда открылось окно 'Установка цен номенклатуры (создание) *' 
//	И пауза 1
//	*  В табличной части выбираем ТМЦ
//	И пауза 1
//	*  По кнопке "Заполнить" можно произвести автоматическое заполнение табличной части документа
//	И пауза 1
//	*  если выбран пункт "Добавить..", то в табличную часть документа добавляются выбранные позиции
//	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыЗаполнитьПоНоменклатуре'
//	И в таблице "Товары" я активизирую поле с именем "ТоварыНоменклатура"
//	И я выбираю пункт контекстного меню с именем 'ТоварыКонтекстноеМенюУдалить' на элементе формы с именем "Товары"
//	И я выбираю пункт контекстного меню с именем 'ТоварыКонтекстноеМенюУдалить' на элементе формы с именем "Товары"
//	И я выбираю пункт контекстного меню с именем 'ТоварыКонтекстноеМенюУдалить' на элементе формы с именем "Товары"
//	И я выбираю пункт контекстного меню с именем 'ТоварыКонтекстноеМенюУдалить' на элементе формы с именем "Товары"
//	И я выбираю пункт контекстного меню с именем 'ТоварыКонтекстноеМенюУдалить' на элементе формы с именем "Товары"
//	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
//	И в таблице "Товары" я выбираю текущую строку
//	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '6 500,00'
//	И в таблице "Товары" я завершаю редактирование строки
//	И я нажимаю на кнопку с именем 'ФормаЗаписать'
//	Тогда открылось окно 'Установка цен номенклатуры * от *'
//	И я нажимаю на кнопку с именем 'ФормаПровести'
//	И я нажимаю на кнопку с именем 'ФормаОбщаяКомандаПоказатьЖурналПроводок'
//	Тогда открылось окно 'Хозрасчетный'
//	И Я закрываю окно 'Хозрасчетный'
//	И пауза 1
//	* Документ не формирует проводки
//	Тогда открылось окно 'Установка цен номенклатуры * от *'
//	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
//	И я жду закрытия окна 'Установка цен номенклатуры * от *' в течение 20 секунд
//
