﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: <описание сценария> 



	И В командном интерфейсе я выбираю 'Главное' 'Сведения об организации'
	Тогда открылось окно 'Сведения об организации'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Сведения об организации (создание)'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'Account Timbal SRL'
	И в поле с именем 'Период' я ввожу текст '01.01.2022'
	И я перехожу к следующему реквизиту
	И я изменяю флаг с именем 'НеУчитыватьПродажиНижеСебестоимости'
	И в поле с именем 'ФискальныйКод' я ввожу текст '1003600012001'
	И в поле с именем 'РегНомНДС' я ввожу текст '012458'
	И я нажимаю кнопку выбора у поля с именем "Руководитель"
	Тогда открылось окно 'Сотрудники: Сотрудники'
	И я нажимаю на кнопку с именем 'ФормаСоздатьГруппу'
	Тогда открылось окно 'Сотрудники: Сотрудники (создание группы)'
	И в поле с именем 'Наименование' я ввожу текст 'Administratia'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно 'Сотрудники: Administratia (Сотрудники)'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Сотрудники: Administratia (Сотрудники)' в течение 20 секунд
	Тогда открылось окно 'Сотрудники: Сотрудники'
	И в таблице "Список" я выбираю текущую строку
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Сотрудники: Сотрудники (создание)'
	И в поле с именем 'Наименование' я ввожу текст 'Ivanov Petru Ion'
	И я перехожу к следующему реквизиту
	И в поле с именем 'ДатаРождения' я ввожу текст '06.10.1978'
	И я перехожу к следующему реквизиту
	И в поле с именем 'МестоРожденияСотрудника' я ввожу текст 'mun.Chisinau'
	И из выпадающего списка с именем "Пол" я выбираю точное значение 'Мужской'
	И в поле с именем 'IDNP' я ввожу текст '0980012458001'
	И я перехожу к следующему реквизиту
	И в поле с именем 'CPAS' я ввожу текст '01478522   '
	И я перехожу к следующему реквизиту
	И в поле с именем 'НомерПолисаМС' я ввожу текст '0258856'
	И я перехожу к следующему реквизиту
	И я перехожу к закладке с именем "Дополнительно"
	И я нажимаю кнопку выбора у поля с именем "УдостоверениеЛичности"
	Тогда открылось окно 'Форма паспортные данные УФ'
	И я нажимаю кнопку выбора у поля с именем "СправочникОбъектТипДокумента"
	Тогда открылось окно 'Тип документа,удостоверяющего личность'
	И в таблице "Список" я перехожу к строке:
		| 'Код' | 'Наименование'                      |
		| '1'   | 'Buletin de identitate al cetat.RM' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Форма паспортные данные УФ'
	И в поле с именем 'СправочникОбъектСерияПаспорта' я ввожу текст 'B'
	И я перехожу к следующему реквизиту
	И в поле с именем 'СправочникОбъектНомерПаспорта' я ввожу текст '12457896'
	И в поле с именем 'СправочникОбъектДатаВыдачиПаспорта' я ввожу текст '02.10.2021'
	И я перехожу к следующему реквизиту
	И в поле с именем 'СправочникОбъектКемВыданПаспорт' я ввожу текст 'ASP'
	И я нажимаю на кнопку с именем 'ФормаОк'
	Тогда открылось окно 'Сотрудники: Сотрудники (создание) *'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно 'Сотрудники: Ivanov Petru Ion (Сотрудники)'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Сотрудники: Ivanov Petru Ion (Сотрудники)' в течение 20 секунд
	Тогда открылось окно 'Сотрудники: Сотрудники'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Сведения об организации (создание) *'
	И я нажимаю кнопку выбора у поля с именем "ГлБух"
	Тогда открылось окно 'Сотрудники: Сотрудники'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Сотрудники: Сотрудники (создание)'
	И в поле с именем 'Наименование' я ввожу текст 'Braghis Ilona Boris'
	И я перехожу к следующему реквизиту
	И в поле с именем 'ДатаРождения' я ввожу текст '10.11.1988'
	И я перехожу к следующему реквизиту
	И в поле с именем 'МестоРожденияСотрудника' я ввожу текст 'mun.Chisinau'
	И из выпадающего списка с именем "Пол" я выбираю точное значение 'Женский'
	И в поле с именем 'IDNP' я ввожу текст '0982012100774'
	И я перехожу к следующему реквизиту
	И в поле с именем 'CPAS' я ввожу текст '01478523   '
	И я перехожу к следующему реквизиту
	И в поле с именем 'НомерПолисаМС' я ввожу текст '02589623'
	И я перехожу к следующему реквизиту
	И я перехожу к закладке с именем "Дополнительно"
	И я нажимаю кнопку выбора у поля с именем "УдостоверениеЛичности"
	Тогда открылось окно 'Форма паспортные данные УФ'
	И я нажимаю кнопку выбора у поля с именем "СправочникОбъектТипДокумента"
	Тогда открылось окно 'Тип документа,удостоверяющего личность'
	И в таблице "Список" я перехожу к строке:
		| 'Код' | 'Наименование'                      |
		| '1'   | 'Buletin de identitate al cetat.RM' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Форма паспортные данные УФ'
	И в поле с именем 'СправочникОбъектСерияПаспорта' я ввожу текст 'A'
	И я перехожу к следующему реквизиту
	И в поле с именем 'СправочникОбъектНомерПаспорта' я ввожу текст '01478523'
	И я перехожу к следующему реквизиту
	И в поле с именем 'СправочникОбъектДатаВыдачиПаспорта' я ввожу текст '01.11.2019'
	И я перехожу к следующему реквизиту
	И в поле с именем 'СправочникОбъектКемВыданПаспорт' я ввожу текст 'Cris Registru'
	И я нажимаю на кнопку с именем 'ФормаОк'
	Тогда открылось окно 'Сотрудники: Сотрудники (создание) *'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно 'Сотрудники: Braghis Ilona Boris (Сотрудники)'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Сотрудники: Braghis Ilona Boris (Сотрудники)' в течение 20 секунд
	Тогда открылось окно 'Сотрудники: Сотрудники'
	И в таблице "Список" я активизирую поле с именем "Наименование"
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Сведения об организации (создание) *'
	И я перехожу к закладке с именем "Группа3"
	И в поле с именем 'ЮрАдрес' я ввожу текст 'mun.Chisinau, str. A.Pumnul, 133/1'
	И в поле с именем 'ПочтовыйАдрес' я ввожу текст 'mun.Chisinau, str. A.Pumnul, 133/1'
	И в поле с именем 'Телефоны' я ввожу текст '022-870-888'
	И в поле с именем 'eMail' я ввожу текст 'hotline@1cmd.md'
	И в поле с именем 'ПочтКод' я ввожу текст 'MD2043'
	И я перехожу к закладке с именем "Группа4"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно 'Сведения об организации'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Сведения об организации' в течение 20 секунд
	Тогда открылось окно 'Сведения об организации'
	И Я закрываю окно 'Сведения об организации'

