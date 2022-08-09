﻿#Использовать v8runner
#Использовать logos

Перем Лог;

Лог = Логирование.ПолучитьЛог("behavior.run.log");

Если АргументыКоманднойСтроки.Количество() = 0 Тогда
	Лог.Ошибка("Не передан файл параметров!");
	//Возврат;
ИначеЕсли АргументыКоманднойСтроки.Количество() > 1 Тогда
	Лог.Ошибка("Скрипт принимает не больше 1 параметров.");
	//Возврат;
Иначе
	СтрПараметр = АргументыКоманднойСтроки[0];
	СтрПараметр = СтрЗаменить(СтрПараметр,Символ(13),"");
	
	ОчищатьКеш = Ложь;
	Если АргументыКоманднойСтроки.Количество() > 1 Тогда
		Значение = АргументыКоманднойСтроки[1];
		Если Нрег(Значение) = "да" ИЛИ Нрег(Значение) = "true" Тогда
			ОчищатьКеш = Истина;
		КонецЕсли;	 
	КонецЕсли;	 
	
КонецЕсли;



Лог.Информация("Начало обновления конфигрурации базы данных...");
Конфигуратор = Новый УправлениеКонфигуратором();
ПараметрыСтрокиСоединения = Конфигуратор.ПараметрыСтрокиСоединения();
ПараметрыСтрокиСоединения.ПутьКФайлуБазы = СтрПараметр;
Конфигуратор.УстановитьКонтекст(ПараметрыСтрокиСоединения,"","");//, "Admin", "passw0rd");

Конфигуратор.ОбновитьКонфигурациюБазыДанных(Ложь, Ложь);
Лог.Информация("Окончание обновления конфигрурации базы данных.");