﻿#language: ru

@tree

Функционал: Коммандная панель "Отчеты - Регламентированные отчеты"

Как <Разработчик> я хочу
<убедиться, что работает командная панель "Регл. отчеты"> 

Контекст:
	Дано я подключаю клиент тестирования

Сценарий: Проверка функций командной панели "Отчеты.Регламентированные отчеты"

	И В командном интерфейсе я выбираю 'Отчеты' 'Регламентированная и финансовая отчетность'
	Тогда открылось окно 'Регламентированная и финансовая отчетность'
	И Я закрываю окно 'Регламентированная и финансовая отчетность'
	И В командном интерфейсе я выбираю 'Отчеты' '1С-Отчетность'
	Тогда открылось окно '1С-Отчетность'
	И Я закрываю окно '1С-Отчетность'
	И В командном интерфейсе я выбираю 'Отчеты' 'Регламентированные отчеты'
	Тогда открылось окно 'Регламентированные отчеты'
	И Я закрываю окно 'Регламентированные отчеты'
	И В командном интерфейсе я выбираю 'Отчеты' 'Обновление регламентированной отчетности'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button1'

