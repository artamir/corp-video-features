﻿#language: ru

@tree

Функционал: <описание фичи>

Как Разработчик я хочу
Иметь возможность автоматически воспроизводить ошибки
работы конфигурации.

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
	Дано я активизирую окно текущего клиента тестирования
	И я закрываю все окна клиентского приложения

Сценарий: Ошибка Создание Рнн из журнала "Расход"
	
	И В командном интерфейсе я выбираю 'Продажи' 'Расход'
	Тогда открылось окно 'Расход'

	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'ВидыРасходных'
	И в таблице "Список" я выбираю текущую строку

	Если открылось окно "Подробный текст ошибки" Тогда
		И Пауза 10
