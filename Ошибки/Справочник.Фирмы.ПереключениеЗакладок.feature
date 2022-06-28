﻿#language: ru

@tree

Функционал: Справочник.Фирмы. 
Сбрасываются установленные значения на закладке Реквизиты, если переключиться на 
закладку Дополнительно, до записи элемента.

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Контекст:
	Дано Я подключаю клиент тестирования по имени "Этот клиент"

Сценарий: Сбрасываются значения пользователя, если переключить закладку
	И В командном интерфейсе я выбираю 'Главное' 'Фирмы'
	Тогда открылось окно 'Фирмы'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Exemplu SRL (Фирмы)'
	И я перехожу к закладке с именем "Реквизиты"
	И я нажимаю кнопку выбора у поля с именем "ОснЕдИзм"
	Тогда открылось окно 'Классификатор единиц измерения'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Exemplu SRL (Фирмы) *'
	И я нажимаю кнопку выбора у поля с именем "СтавкаНДС"
	Тогда открылось окно 'Ставки НДС'
	И в таблице "Список" я перехожу к строке:
		| 'Представление' | 'Ставка' |
		| '20 %'          | '20,00'  |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Exemplu SRL (Фирмы) *'
	И я перехожу к закладке с именем "Дополнительно"
	Тогда открылось окно 'Exemplu SRL (Фирмы)'
//	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
//	И я жду закрытия окна 'Exemplu SRL (Фирмы)' в течение 20 секунд
//	Тогда открылось окно 'Фирмы'
//	И в таблице "Список" я выбираю текущую строку
//	Тогда открылось окно 'Exemplu SRL (Фирмы)'
	И я перехожу к закладке с именем "Реквизиты"
