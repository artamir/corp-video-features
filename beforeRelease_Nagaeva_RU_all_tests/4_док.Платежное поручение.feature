﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: <описание сценария> 



	И В командном интерфейсе я выбираю 'Денежные средства' 'Платежное поручение'
	Тогда открылось окно 'Платежное поручение'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Платежное поручение (создание)'
	И я нажимаю кнопку выбора у поля с именем "Дата"
	И в поле с именем 'Дата' я ввожу текст '03.01.2022  8:00:00'
	И я нажимаю кнопку выбора у поля с именем "Контрагент"
	Тогда открылось окно 'Контрагенты'
	И я нажимаю на кнопку с именем 'ФормаСоздатьГруппу'
	Тогда открылось окно 'Контрагенты (создание группы)'
	И в поле с именем 'Наименование' я ввожу текст 'Furnizori'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно 'Furnizori (Контрагенты)'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Furnizori (Контрагенты)' в течение 20 секунд
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я выбираю текущую строку
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Контрагенты (создание)'
	И в поле с именем 'ПолеВвода3' я ввожу текст 'Union Fenosa S.A.'
	И из выпадающего списка с именем "ПолеВвода2" я выбираю точное значение 'Организация'
	И в поле с именем 'ФискКод' я ввожу текст '1000365214000'
	И в поле с именем 'ЮрАдрес' я ввожу текст 'mun.Chisinau, str. A.Puskin, 10'
	И в поле с именем 'ПочтАдрес' я ввожу текст 'mun.Chisinau, str. A.Puskin, 10'
	И в поле с именем 'РегНомНДС' я ввожу текст '1002541'
	И я нажимаю кнопку выбора у поля с именем "Страна"
	Тогда открылось окно 'Классификатор стран мира'
	И в таблице "Список" я активизирую поле с именем "Наименование"
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Контрагенты (создание) *'
	И я перехожу к закладке с именем "РасчетныеСчетаСтраница"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно 'Union Fenosa S.A. (Контрагенты)'
	И в таблице "РасчетныеСчета" я нажимаю на кнопку с именем 'РасчетныеСчетаСоздать'
	Тогда открылось окно 'Расчетные счета (создание)'
	И в поле с именем 'РасчетныйСчет1' я ввожу текст 'MD00125478MO074188510023'
	И я нажимаю кнопку выбора у поля с именем "Банк"
	Тогда открылось окно 'Банки'
	И в таблице "Список" я перехожу к строке:
		| 'Код'          | 'Наименование'           |
		| 'MOLDMD2X    ' | 'BC'Moldindconbank'S.A.' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Расчетные счета (создание) *'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно 'principal (Расчетные счета)'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'principal (Расчетные счета)' в течение 20 секунд
	Тогда открылось окно 'Union Fenosa S.A. (Контрагенты)'
	И в таблице "РасчетныеСчета" я нажимаю на кнопку с именем 'РасчетныеСчетаСделатьОсновным'
	И я перехожу к закладке с именем "КонтактнаяИнформация"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Union Fenosa S.A. (Контрагенты)' в течение 20 секунд
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Платежное поручение (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Договор"
	Тогда открылось окно 'Договора'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Договора (создание)'
	И в поле с именем 'Наименование1' я ввожу текст 'en.electrica'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно 'en.electrica (Договора)'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'en.electrica (Договора)' в течение 20 секунд
	Тогда открылось окно 'Договора'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Платежное поручение (создание) *'
	И в поле с именем 'Сумма' я ввожу текст '1 600,00'
	И я перехожу к следующему реквизиту
	И я нажимаю кнопку выбора у поля с именем "НДС_"
	Тогда открылось окно 'Ставки НДС'
	И в таблице "Список" я перехожу к строке:
		| 'Представление' | 'Ставка' |
		| '20 %'          | '20,00'  |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Платежное поручение (создание) *'
	И в поле с именем 'Содержание1' я ввожу текст 'Plata pentru energia electrica confom factura fiscala IH0147852 din 03.01.2022'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно 'Платежное поручение * от *'
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Платежное поручение * от *' в течение 20 секунд
	Тогда открылось окно 'Платежное поручение'
	И Я закрываю окно 'Платежное поручение'

