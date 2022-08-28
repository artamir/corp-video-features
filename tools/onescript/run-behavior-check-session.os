﻿#Использовать logos
#Использовать json
#Использовать "./РаботаСФайлами"

Перем Лог;
Перем МассивВременныхФайлов;

Перем МассивКаталоговАллюр;

Функция ПолучитьИмяВременногоФайлаЛокально(Расширение="")
	Если Не ТипЗнч(МассивВременныхФайлов) = Тип("Массив") Тогда
		МассивВременныхФайлов = Новый Массив;		
	КонецЕсли;

	ТекВременныйФайл = ПолучитьИмяВременногоФайла(Расширение);
	МассивВременныхФайлов.Добавить(ТекВременныйФайл);

	Возврат ТекВременныйФайл;
КонецФункции	

Функция ВыполнитьСкрипт(СтрокаКоманды)
	ИмяВременногоФайлаКоманда = ПолучитьИмяВременногоФайлаЛокально("cmd");

	ЗТ = Новый ЗаписьТекста(ИмяВременногоФайлаКоманда,"UTF-8",,Ложь);
	ЗТ.ЗаписатьСтроку(СтрокаКоманды);
	ЗТ.Закрыть();

	retCode = -1;
	ЗапуститьПриложение(ИмяВременногоФайлаКоманда,,Истина,retCode);

	Возврат retCode;
КонецФункции	

Функция УбратьСлешСправа(Стр)
	Если Прав(Стр,1) = "\" Тогда
		Возврат Лев(Стр,СтрДлина(Стр)-1);
	КонецЕсли;
	Если Прав(Стр,1) = "/" Тогда
		Возврат Лев(Стр,СтрДлина(Стр)-1);
	КонецЕсли;

	Возврат Стр;
КонецФункции

Функция ПрочитатьФайлВСтроку(Знач ИмяФайла)
	ФайлПроверкаСуществования = Новый Файл(ИмяФайла);
	
	Если НЕ ФайлПроверкаСуществования.Существует() Тогда
		ВызватьИсключение("Файл <" + ИмяФайла + "> не существует!");
	КонецЕсли;


	Текст = Новый ЧтениеТекста;
	Текст.Открыть(ИмяФайла,"UTF-8");
	Рез = "";

	Пока Истина Цикл
		Стр = Текст.ПрочитатьСтроку();
		Если Стр = Неопределено Тогда
			Прервать;
		КонецЕсли;

		Рез = Рез + Стр + Символы.ПС;
	КонецЦикла;

	Текст.Закрыть();

	Возврат  Рез;
КонецФункции

Функция ПреобразоватьПутьСТочкамиКНормальномуПути(ОригСтр)
	ИмяВременногоФайлаКоманда = ПолучитьИмяВременногоФайлаЛокально("cmd");
	ИмяВременногоФайлаЛог     = ПолучитьИмяВременногоФайлаЛокально("txt");

	//ИмяВременногоФайлаКоманда = "h:\commons\temp\111.cmd";
	//ИмяВременногоФайлаЛог     = "h:\commons\temp\111.txt";


	Команда = "
				|@echo on
				|chcp 65001
				|for %%f in ( """ + ОригСтр + """ ) do set fullname=%%~ff
				|echo %fullname% > " + ИмяВременногоФайлаЛог + "
				|rem pause";

	ЗТ = Новый ЗаписьТекста(ИмяВременногоФайлаКоманда,"UTF-8",,Ложь);
	ЗТ.ЗаписатьСтроку(Команда);

	ЗТ.Закрыть();




	retCode = -1;
	ЗапуститьПриложение(ИмяВременногоФайлаКоманда,,Истина,retCode);


	Рез = ОригСтр;

	Текст = Новый ЧтениеТекста;
	Текст.Открыть(ИмяВременногоФайлаЛог,"UTF-8");

	Пока Истина Цикл
		Стр = Текст.ПрочитатьСтроку();
		Лог.Информация(Стр);
		Если Стр = Неопределено Тогда
			Прервать;
		КонецЕсли;

		Если СокрЛП(Стр) = "" Тогда
			Продолжить;
		КонецЕсли;


		Рез = Стр;

	КонецЦикла;

	Текст.Закрыть();

	Возврат Рез;

КонецФункции

Процедура ПреобразоватьПараметрыКоторыеНачинаютсяСТочкиКНормальнымПутям(ПараметрыСборки)
	МассивКлючей = Новый Массив;

	ВложенныеСоответствия = Новый Соответствие;
	ВложенныеМассивыСтруктура = Новый Структура;

	Сообщить(ТипЗнч(ПараметрыСборки));

	Для каждого ПараметрСборки Из ПараметрыСборки Цикл
		Если Лев(ПараметрСборки.Значение,1) = "." Тогда
			МассивКлючей.Добавить(ПараметрСборки.Ключ);
		КонецЕсли;
		
		//Сообщить("Ключ = "+ПараметрСборки.Ключ+"; значение = "+ПараметрСборки.Значение);
		//Сообщить(ТипЗнч(ПараметрСборки.Значение));

		Если ТипЗнч(ПараметрСборки.Значение) = Тип("Соответствие") Тогда
			ПреобразоватьПараметрыКоторыеНачинаютсяСТочкиКНормальнымПутям(ПараметрСборки.Значение);
			ВложенныеСоответствия.Вставить(ПараметрСборки.Ключ, ПараметрСборки.Значение);
		КонецЕсли;	

		Если ТипЗнч(ПараметрСборки.Значение) = Тип("Массив") Тогда
			
			ВложенныйМассив = Новый Массив;
			
			Для Каждого ЭлементМассива Из ПараметрСборки.Значение Цикл
			
				Было  = ЭлементМассива;
				
				Если ТипЗнч(Было) = Тип("Соответствие") Тогда
					ПреобразоватьПараметрыКоторыеНачинаютсяСТочкиКНормальнымПутям(Было);
					Стало = Было;
				Иначе
					Стало = ПреобразоватьПутьСТочкамиКНормальномуПути(ЭлементМассива);
					Стало = СокрЛП(Стало);
				КонецЕсли;
				
				
				ВложенныйМассив.Добавить(Стало);

			КонецЦикла;	

			ВложенныеМассивыСтруктура.Вставить(ПараметрСборки.Ключ, ВложенныйМассив);
		КонецЕсли;	

	КонецЦикла;

	Для каждого Ключ Из МассивКлючей Цикл
		Было  = ПараметрыСборки[Ключ];
		Стало = ПреобразоватьПутьСТочкамиКНормальномуПути(Было);
		//Сообщить("Было=" + Было + ", Стало="+Стало);

		ПараметрыСборки.Вставить(Ключ,СокрЛП(Стало));
	КонецЦикла;

	Если ВложенныеСоответствия.Количество() <> 0 Тогда
		Для Каждого ВложенноеСоответствие Из ВложенныеСоответствия Цикл
			ПараметрыСборки.Вставить(ВложенноеСоответствие.Ключ, ВложенноеСоответствие.Значение); 
		КонецЦикла;	
	КонецЕсли;

	Если ВложенныеМассивыСтруктура.Количество() <> 0 Тогда
		Для Каждого ВложенныйМассив Из ВложенныеМассивыСтруктура Цикл
			ПараметрыСборки.Вставить(ВложенныйМассив.Ключ, ВложенныйМассив.Значение);
		КонецЦикла;	
	КонецЕсли;

	Сообщить(ТипЗнч(ПараметрыСборки["КаталогиБиблиотек"]));

КонецПроцедуры

Функция ПрочитатьФайлJSON(ИмяФайла)
	
	ИмяВременногоФайлаJSON = ПолучитьИмяВременногоФайлаЛокально("json");

	JsonСтрока  = ПрочитатьФайлВСтроку(ИмяФайла);
	ПарсерJSON  = Новый ПарсерJSON();
	Рез         = ПарсерJSON.ПрочитатьJSON(JsonСтрока);
	ПреобразоватьПараметрыКоторыеНачинаютсяСТочкиКНормальнымПутям(Рез);
	Рез.Вставить("ИмяФайлаСборки",ИмяФайла);
	Рез.Вставить("ИмяВременногоФайлаJSON", ИмяВременногоФайлаJSON);
	
	Рез.Вставить("КомандаЗапускаБраузера", """" + ПолучитьСтрокуЗапускаChrome() + """ --remote-debugging-port=9222");

	ТекстФайла = РаботаСФайлами.ОБъектВJson(Рез);
	РаботаСФайлами.ЗаписатьФайл(ИмяВременногоФайлаJSON, ТекстФайла);
	Сообщить(ИмяВременногоФайлаJSON);

	Возврат Рез;
КонецФункции

Функция РазложитьСтрокуВМассивПодстрок(Знач Строка, Знач Разделитель = ",", Знач ПропускатьПустыеСтроки = Неопределено) Экспорт

	Результат = Новый Массив;

	// для обеспечения обратной совместимости
	Если ПропускатьПустыеСтроки = Неопределено Тогда
		ПропускатьПустыеСтроки = ?(Разделитель = " ", Истина, Ложь);
		Если ПустаяСтрока(Строка) Тогда
			Если Разделитель = " " Тогда
				Результат.Добавить("");
			КонецЕсли;
			Возврат Результат;
		КонецЕсли;
	КонецЕсли;
	//

	Позиция = Найти(Строка, Разделитель);
	Пока Позиция > 0 Цикл
		Подстрока = Лев(Строка, Позиция - 1);
		Если Не ПропускатьПустыеСтроки Или Не ПустаяСтрока(Подстрока) Тогда
			Результат.Добавить(Подстрока);
		КонецЕсли;
		Строка = Сред(Строка, Позиция + СтрДлина(Разделитель));
		Позиция = Найти(Строка, Разделитель);
	КонецЦикла;

	Если Не ПропускатьПустыеСтроки Или Не ПустаяСтрока(Строка) Тогда
		Результат.Добавить(Строка);
	КонецЕсли;

	Возврат Результат;

КонецФункции

Функция ДобавитьНулейДоНужнойДлинны(Знач Стр,Кол)
	Пока СтрДлина(Стр) < Кол Цикл
		Стр = "0" + Стр;
	КонецЦикла;

	Возврат Стр;
КонецФункции

Функция СоздатьСтрокуДляСортировкиВерсии(Стр)
	Рез = "";

	Массив = РазложитьСтрокуВМассивПодстрок(Стр,".");
	Для каждого Элем Из Массив Цикл
		Рез = Рез + ДобавитьНулейДоНужнойДлинны(Элем,7);
	КонецЦикла;

	Возврат Рез;
КонецФункции

Функция ПолучитьСтрокуДляПодключенияИзПереданныхДанных(Знач Стр)
	Если Лев(Стр,1) <> "!" Тогда
		Возврат Стр; 
	КонецЕсли;	 
	
	Стр = Сред(Стр,2);
	Текст = Новый ЧтениеТекста;
	Текст.Открыть(Стр,"UTF-8");
	
	Значение = СокрЛП(Текст.Прочитать());
	Текст.Закрыть();
	
	Возврат Значение;
КонецФункции	 

Функция НайтиСамуюПозднююВерсиюПлатформыПоСтрокеПоиска(СтрокаПоискаВерсияПлатформы,КаталогПоискаВерсииПлатформы,ПараметрыСборки)

	ТаблицаВерсий = Новый ТаблицаЗначений;
	ТаблицаВерсий.Колонки.Добавить("Имя");
	ТаблицаВерсий.Колонки.Добавить("ДляСортировки");

	Файлы = НайтиФайлы(КаталогПоискаВерсииПлатформы,СтрокаПоискаВерсияПлатформы + "*",Истина);
	Для каждого Файл Из Файлы Цикл
		Если Не Файл.ЭтоКаталог() Тогда
			Продолжить;
		КонецЕсли;

		ИмяФайлаExe = Файл.ПолноеИмя + "\bin\1cv8.exe";
		ФайлExe = Новый Файл(ИмяФайлаExe);
		Если Не ФайлExe.Существует() Тогда
			Продолжить;
		КонецЕсли;	 
		
		СтрТаблицаВерсий     = ТаблицаВерсий.Добавить();
		СтрТаблицаВерсий.Имя = Файл.Имя;
		СтрТаблицаВерсий.ДляСортировки = СоздатьСтрокуДляСортировкиВерсии(СтрТаблицаВерсий.Имя);
		//Сообщить("СтрТаблицаВерсий.ДляСортировки="+СтрТаблицаВерсий.ДляСортировки);
	КонецЦикла;

	Если ТаблицаВерсий.Количество() = 0 Тогда
		Стр = "Не найдено ни одной версии по строке <" + СтрокаПоискаВерсияПлатформы + ">" + " в каталоге <" + КаталогПоискаВерсииПлатформы + ">";
		Лог.Ошибка(Стр);
		ВызватьИсключение(Стр);
	КонецЕсли;

	ТаблицаВерсий.Сортировать("ДляСортировки убыв");

	ИмяФайлаЗапуска = "1cv8c.exe";
	Если НРег(ПараметрыСборки["ЗапускатьТолстыйКлиент"]) = "истина" Тогда
		ИмяФайлаЗапуска = "1cv8.exe";
	КонецЕсли;
	Рез = УбратьСлешСправа(КаталогПоискаВерсииПлатформы) + "\" +  ТаблицаВерсий[0].Имя + "\bin\" + ИмяФайлаЗапуска;

	Возврат """" + Рез + """";
КонецФункции

Функция ПолучитьСтрокуЗапускаСборки(ПараметрыСборки)
	//Стр = "start /wait /MAX """" " + ПараметрыСборки["ПутьК1С"];
	Стр = ПараметрыСборки["ПутьК1С"];
	Стр = Стр + " " + ПолучитьСтрокуДляПодключенияИзПереданныхДанных(ПараметрыСборки["СтрокаПодключенияКБазе"]);

	ДопПараметрыЗапуска = "";
	Если ПараметрыСборки["ДопПараметрыЗапуска"] <> Неопределено Тогда
		ДопПараметрыЗапуска = ";" + ПараметрыСборки["ДопПараметрыЗапуска"];
	КонецЕсли;	 
	
	Если ПараметрыСборки.Получить("ИмяВременногоФайлаJSON") = Неопределено Тогда
		ФайлПараметров = Новый Файл(ПараметрыСборки["ИмяФайлаСборки"]);
	Иначе
		ФайлПараметров = Новый Файл(ПараметрыСборки["ИмяВременногоФайлаJSON"]);
	КонецЕсли;		
	Стр = Стр + " /Execute " + ПараметрыСборки["ПутьКVanessaAutomation"] + " /C""StartFeaturePlayer;workspaceRoot=%workspaceRoot%;DisableUserSettingsLoader;ClearCacheSteps;DisableLoadTestClientsTable;VBParams=" + ФайлПараметров.ПолноеИмя + ДопПараметрыЗапуска +  """ /TESTMANAGER ";
	
	ПутьКVanessaAutomation = ПреобразоватьПутьСТочкамиКНормальномуПути(ПараметрыСборки["ПутьКVanessaAutomation"]);
	ФайлПутьКVanessaAutomation = Новый Файл(ПутьКVanessaAutomation); 
	КаталогVanessaAutomation = ФайлПутьКVanessaAutomation.Путь;
	
	Стр = СтрЗаменить(Стр,"%workspaceRoot%",КаталогVanessaAutomation);

	//Если ПараметрыСборки["ВыводитьСообщенияВФайл"] <> Неопределено Тогда
	//	Стр = Стр + " /Out""" + ПараметрыСборки["ВыводитьСообщенияВФайл"] + """";
	//КонецЕсли;


	Возврат Стр;
КонецФункции

Функция ПолучитьСтрокуЗапускаИнициализации(ПараметрыСборки)
	Стр = ПараметрыСборки["ПутьК1С"];
	Стр = Стр + " " + ПолучитьСтрокуДляПодключенияИзПереданныхДанных(ПараметрыСборки["СтрокаПодключенияКБазе"]);

	Стр = Стр + " /Execute " + ПараметрыСборки["EpfДляИнициализацияБазы"] + " /C""InitDataBase;VBParams=" + ПараметрыСборки["ПараметрыДляИнициализацияБазы"] + """";


	Возврат Стр;
КонецФункции

Функция ПолучитьСтрокуЗапускаChrome()

	ИмяВременногоФайлаКоманда = ПолучитьИмяВременногоФайлаЛокально("cmd");
	ИмяВременногоФайлаЛог     = ПолучитьИмяВременногоФайлаЛокально("txt");

	Команда = "
				|chcp 65001	
				|set ""Command=""
				|for /f ""tokens=2,*"" %%A in ('reg query ""HKEY_LOCAL_MACHINE\SOFTWARE\Clients\StartMenuInternet\Google Chrome\shell\open\command"" /ve 2^>nul') do set ""Command=%%~B""
				|if not defined Command for /f ""tokens=2,*"" %%A in ('reg query ""HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Clients\StartMenuInternet\Google Chrome\shell\open\command"" /ve 2^>nul') do set ""Command=%%~B""
				|if not defined Command echo Google Chrome was not found.
				|if defined Command echo %Command% > " + ИмяВременногоФайлаЛог + "
				|rem pause";

	ЗТ = Новый ЗаписьТекста(ИмяВременногоФайлаКоманда,"UTF-8",,Ложь);
	ЗТ.ЗаписатьСтроку(Команда);

	ЗТ.Закрыть();

	retCode = -1;
	ЗапуститьПриложение(ИмяВременногоФайлаКоманда,,Истина,retCode);

	Рез = "";

	Текст = Новый ЧтениеТекста;
	Текст.Открыть(ИмяВременногоФайлаЛог,"UTF-8");

	Пока Истина Цикл
		Стр = Текст.ПрочитатьСтроку();
		Лог.Информация(Стр);
		Если Стр = Неопределено Тогда
			Прервать;
		КонецЕсли;

		Если СокрЛП(Стр) = "" Тогда
			Продолжить;
		КонецЕсли;


		Рез = Стр;

	КонецЦикла;

	Текст.Закрыть();

	Возврат Рез;
	

КонецФункции	

Процедура ЗавершитьВсеВозможноЗависшиеПроцессы()
	СтрокаКоманды = "TASKKILL /F /IM 1cv8c.exe"; retCode = -1;
	ЗапуститьПриложение(СтрокаКоманды,,Истина,retCode);

	СтрокаКоманды = "TASKKILL /F /IM 1cv8.exe"; retCode = -1;
	ЗапуститьПриложение(СтрокаКоманды,,Истина,retCode);

	СтрокаКоманды = "TASKKILL /F /IM 1cv8s.exe"; retCode = -1;
	ЗапуститьПриложение(СтрокаКоманды,,Истина,retCode);

	СтрокаКоманды = "TASKKILL /F /IM vlc.exe"; retCode = -1;
	ЗапуститьПриложение(СтрокаКоманды,,Истина,retCode);
КонецПроцедуры

Процедура ВыполнитьЗапускОднойСборки(ПараметрыСборки)

	НадоЧитатьЛог         = Ложь;
	НадоЧитатьКонсоль     = Ложь;
	КолСтрокЛогаПрочитано = 0;
	ИмяФайлаЛога          = Неопределено;
	Если НРег(ПараметрыСборки["ДелатьЛогВыполненияСценариевВТекстовыйФайл"]) = "истина" Тогда
		НадоЧитатьЛог = Истина;
		ИмяФайлаЛога  = ПараметрыСборки["ИмяФайлаЛогВыполненияСценариев"];
		Если Лев(ИмяФайлаЛога,1) = "." Тогда
			ПутьКVB = ПараметрыСборки["ПутьКVanessaAutomation"];
			Если Лев(ПутьКVB,1) = "." Тогда
				ПутьКVB = ПреобразоватьПутьСТочкамиКНормальномуПути(ПутьКVB);
			КонецЕсли;	 
			
			ФайлVB         = Новый Файл(ПутьКVB);
			КаталогПроекта = СтрЗаменить(ФайлVB.Путь,"\","/");
			ИмяФайлаЛога   = КаталогПроекта + Сред(ИмяФайлаЛога,3);
		КонецЕсли;	
		
		Файл = Новый Файл(ИмяФайлаЛога);
		Если Файл.Существует() Тогда
			УдалитьФайлы(ИмяФайлаЛога);
		КонецЕсли;	 
	КонецЕсли;	 
	
	Если НРег(ПараметрыСборки["ВыводитьЛогВКонсоль"]) = "истина" Тогда
		НадоЧитатьКонсоль = Истина;
	КонецЕсли;	 
	
	ЗавершитьВсеВозможноЗависшиеПроцессы();

	ПутьК1С        = НайтиСамуюПозднююВерсиюПлатформыПоСтрокеПоиска(ПараметрыСборки["ВерсияПлатформы"],ПараметрыСборки["КаталогПоискаВерсииПлатформы"],ПараметрыСборки);
	ПараметрыСборки.Вставить("ПутьК1С",ПутьК1С);
	Лог.Информация("Была найдена версия платформы: " + ПутьК1С);


	EpfДляИнициализацияБазы = ПараметрыСборки["EpfДляИнициализацияБазы"];
	Если EpfДляИнициализацияБазы <> Неопределено Тогда
		//значит надо запустить обработку, которая сделает инициализацию базы и закроет сеанс 1С
		СтрокаЗапускаСборки = ПолучитьСтрокуЗапускаИнициализации(ПараметрыСборки);
		retCode = -1;
		Лог.Отладка("Строка запуска 1С для инициализации: " + СтрокаЗапускаСборки);
		//@# Начало МА
		Лог.Информация("Строка запуска сборки: " + СтрокаЗапускаСборки);
		//@# Конец МА
		ЗапуститьПриложение(СтрокаЗапускаСборки,,Истина,retCode);
		Если retCode <> 0 Тогда
			Сообщить("Запуск сеанса 1С для инициализации базы вернул код возврата: " + retCode);
			ЗавершитьРаботу(1);
		КонецЕсли;
	КонецЕсли;


	СтрокаЗапускаСборки = ПолучитьСтрокуЗапускаСборки(ПараметрыСборки);
	//ИмяВременногоBAT = ПолучитьИмяВременногоФайла("bat");
	//ЗТ = Новый ЗаписьТекста(ИмяВременногоBAT,"UTF-8",,Истина);
	//ЗТ.ЗаписатьСтроку(СтрокаЗапускаСборки);
	//ЗТ.Закрыть();


	Лог.Отладка("Строка запуска сборки: " + СтрокаЗапускаСборки);
	//@# Начало МА
	Лог.Информация("Строка запуска сборки: " + СтрокаЗапускаСборки);
	Лог.Информация("тест заменить точку: " + ПреобразоватьПутьСТочкамиКНормальномуПути(".\\..\\ExportScenarios"));
	//@# Конец МА

	
	Сообщить("НадоЧитатьЛог="+НадоЧитатьЛог);
	Сообщить("НадоЧитатьКонсоль="+НадоЧитатьКонсоль);
	Если НадоЧитатьЛог Тогда
		Сообщить("ИмяФайлаЛога="+ИмяФайлаЛога);
	КонецЕсли;	 
	
	Процесс = СоздатьПроцесс(СтрокаЗапускаСборки,,Истина);
	Процесс.Запустить();
	Sleep(5000);
	Пока Истина Цикл
		Если НайтиПроцессПоИдентификатору(Процесс.Идентификатор) = Неопределено Тогда
			Если НадоЧитатьЛог Тогда
				ВывестиНовыеСообщения(ИмяФайлаЛога,КолСтрокЛогаПрочитано);
			КонецЕсли;	 
			
			Прервать;
		КонецЕсли;	 
		
		Если ЗначениеЗаполнено(ИмяФайлаЛога) И НадоЧитатьЛог Тогда
			Sleep(10000);
		Иначе	
			Sleep(2000);
		КонецЕсли;	 
		
		Если НадоЧитатьЛог Тогда
			Если ЗначениеЗаполнено(ИмяФайлаЛога) Тогда
				ВывестиНовыеСообщения(ИмяФайлаЛога,КолСтрокЛогаПрочитано);
			КонецЕсли;	 
			
			Попытка
				Если НЕ Процесс.Завершен ИЛИ Процесс.ПотокВывода.ЕстьДанные ИЛИ Процесс.ПотокОшибок.ЕстьДанные Тогда
					Если Процесс.ПотокВывода.ЕстьДанные Тогда
						ОчереднаяСтрокаВывода = Процесс.ПотокВывода.Прочитать();
						Если Не ПустаяСтрока(ОчереднаяСтрокаВывода) Тогда
							Сообщить(ОчереднаяСтрокаВывода, СтатусСообщения.Информация);
						КонецЕсли;
					КонецЕсли;
					
					Если Процесс.ПотокОшибок.ЕстьДанные Тогда
						ОчереднаяСтрокаОшибок = Процесс.ПотокОшибок.Прочитать();
						Если Не ПустаяСтрока(ОчереднаяСтрокаОшибок) Тогда
							Сообщить(ОчереднаяСтрокаОшибок, СтатусСообщения.Важное);
						КонецЕсли;
					КонецЕсли;	 
				КонецЕсли;	 
			Исключение
				Сообщить(ОписаниеОшибки());
			КонецПопытки;
			
		КонецЕсли;	 
	КонецЦикла;	
		
	//ЗавершитьВсеВозможноЗависшиеПроцессы();
КонецПроцедуры

Процедура ВывестиНовыеСообщения(ИмяФайлаЛога,КолСтрокЛогаПрочитано)
	Попытка                     
		МассивСтрок = ПолучитьНовыеСтрокиЛога(ИмяФайлаЛога,КолСтрокЛогаПрочитано);
		Для Каждого Стр Из МассивСтрок Цикл
			//Если СокрЛП(Стр) = "" Тогда
			//	Продолжить;
			//КонецЕсли;	 
			Сообщить(СокрП(Стр));
		КонецЦикла;	
	Исключение
		Сообщить(ОписаниеОшибки());
	КонецПопытки;
		
КонецПроцедуры

Функция ПолучитьНовыеСтрокиЛога(ИмяФайла,КолСтрокЛогаПрочитано)
	Файл = Новый Файл(ИмяФайла);
	Если Не Файл.Существует() Тогда
		Возврат Новый Массив;
	КонецЕсли;	
	
	Текст = Новый ЧтениеТекста;
	Текст.Открыть(ИмяФайла,"UTF-8");
	
	ВесьТекст = Текст.Прочитать();
	
	Текст.Закрыть();
	
	Массив = Новый Массив();
	
	МассивСтрок = СтрРазделить(ВесьТекст,Символы.ПС,Истина);
	Если МассивСтрок[МассивСтрок.Количество()-1] = "" Тогда
		МассивСтрок.Удалить(МассивСтрок.Количество()-1);
	КонецЕсли;
	
	Для Ккк = (КолСтрокЛогаПрочитано+1) По МассивСтрок.Количество() Цикл
		Массив.Добавить(МассивСтрок[Ккк-1]);
	КонецЦикла;	
	
	
	КолСтрокЛогаПрочитано = МассивСтрок.Количество();
	
	Возврат Массив;
КонецФункции	

Процедура ПроверитьПараметрыСборкиНаКорректность(ПараметрыСборки,ИмяФайлаВариантСборки)
	Если Не ЗначениеЗаполнено(ПараметрыСборки["ИмяСборки"]) Тогда
		Стр = ИмяФайлаВариантСборки + ". Не указан параметр ""ИмяСборки""!";
		Лог.Ошибка(Стр);
		ВызватьИсключение(Стр);
	КонецЕсли;
	Если Не ЗначениеЗаполнено(ПараметрыСборки["ВерсияПлатформы"]) Тогда
		Стр = ИмяФайлаВариантСборки + ". Не указан параметр ""ВерсияПлатформы""!";
		Лог.Ошибка(Стр);
		ВызватьИсключение(Стр);
	КонецЕсли;
	Если Не ЗначениеЗаполнено(ПараметрыСборки["КаталогПоискаВерсииПлатформы"]) Тогда
		Стр = ИмяФайлаВариантСборки + ". Не указан параметр ""КаталогПоискаВерсииПлатформы""!";
		Лог.Ошибка(Стр);
		ВызватьИсключение(Стр);
	КонецЕсли;
	Если Не ЗначениеЗаполнено(ПараметрыСборки["КаталогФич"]) Тогда
		Стр = ИмяФайлаВариантСборки + ". Не указан параметр ""КаталогФич""!";
		Лог.Ошибка(Стр);
		ВызватьИсключение(Стр);
	КонецЕсли;
	Если Не ЗначениеЗаполнено(ПараметрыСборки["СтрокаПодключенияКБазе"]) Тогда
		Стр = ИмяФайлаВариантСборки + ". Не указан параметр ""СтрокаПодключенияКБазе""!";
		Лог.Ошибка(Стр);
		ВызватьИсключение(Стр);
	КонецЕсли;
	Если Не ЗначениеЗаполнено(ПараметрыСборки["ПутьКVanessaAutomation"]) Тогда
		Стр = ИмяФайлаВариантСборки + ". Не указан параметр ""ПутьКVanessaAutomation""!";
		Лог.Ошибка(Стр);
		ВызватьИсключение(Стр);
	КонецЕсли;
КонецПроцедуры

Процедура ОчиститьКаталоги(МассивКаталогов)
	Лог.Информация("МассивКаталогов = "+МассивКаталогов);
	Для каждого Каталог Из МассивКаталогов Цикл
		ФайлПроверкаСуществования = Новый Файл(Каталог);
		Если НЕ ФайлПроверкаСуществования.Существует() Тогда
			Продолжить;
		КонецЕсли;


		Файлы = НайтиФайлы(Каталог,"*");
		Для каждого Файл Из Файлы Цикл
			УдалитьФайлы(Файл.ПолноеИмя);
		КонецЦикла;
	КонецЦикла;
КонецПроцедуры

Процедура УдалитьФайлСтатусВсехСборок(ПараметрыСборки)
	ВыгружатьСтатусВыполненияСценариевВФайл = ПараметрыСборки["ВыгружатьСтатусВыполненияСценариевВФайл"];
	Если НРег(ВыгружатьСтатусВыполненияСценариевВФайл) <> "истина" Тогда
		Возврат;
	КонецЕсли;

	ИмяФайлаСтатусаСборки = ПараметрыСборки["ПутьКФайлуДляВыгрузкиСтатусаВыполненияСценариев"];
	Сообщить(ИмяФайлаСтатусаСборки);
	ФайлПроверкаСуществования = Новый Файл(ИмяФайлаСтатусаСборки);
	Если  ФайлПроверкаСуществования.Существует() Тогда
		УдалитьФайлы(ФайлПроверкаСуществования.ПолноеИмя);
	КонецЕсли;
КонецПроцедуры

Процедура ОбновитьСтатусВсехСборок(СтатусЗапускаВсехСборок,ПараметрыСборки)
	ВыгружатьСтатусВыполненияСценариевВФайл = ПараметрыСборки["ВыгружатьСтатусВыполненияСценариевВФайл"];
	Если НРег(ВыгружатьСтатусВыполненияСценариевВФайл) <> "истина" Тогда
		Возврат;
	КонецЕсли;

	ИмяФайлаСтатусаСборки = ПараметрыСборки["ПутьКФайлуДляВыгрузкиСтатусаВыполненияСценариев"];
	ФайлПроверкаСуществования = Новый Файл(ИмяФайлаСтатусаСборки);
	Если НЕ ФайлПроверкаСуществования.Существует() Тогда
		ФайлВанесса = Новый Файл(ПараметрыСборки["ПутьКVanessaAutomation"]);
		ИмяФайлаСтатусаСборки = Новый Файл(ОбъединитьПути(ФайлВанесса.Путь, ИмяФайлаСтатусаСборки)).ПолноеИмя;
		ФайлПроверкаСуществования = Новый Файл(ИмяФайлаСтатусаСборки);
		Если НЕ ФайлПроверкаСуществования.Существует() Тогда
				Лог.Информация("Ошибка в ОбновитьСтатусВсехСборок. Файл " + ИмяФайлаСтатусаСборки + " не существует!");
				СтатусЗапускаВсехСборок = 1;
				Возврат;
		КонецЕсли;
	КонецЕсли;



	Текст = Новый ЧтениеТекста;
	Текст.Открыть(ИмяФайлаСтатусаСборки,"UTF-8");

	Пока Истина Цикл
		Стр = Текст.ПрочитатьСтроку();
		Если Стр = Неопределено Тогда
			Прервать;
		КонецЕсли;

		Если Стр <> "0" Тогда
			СтатусЗапускаВсехСборок = 1; //значит были упавшие шаги
			Лог.Информация("Найден флаг неудачной сборки.");
		КонецЕсли;
	КонецЦикла;

	Текст.Закрыть();
КонецПроцедуры

Процедура ОчиститьКеш(ОсновнойФайлПараметров)
	Файл = Новый Файл(ОсновнойФайлПараметров);
	КаталогJSON = Файл.Путь;
	Файл = Новый Файл(КаталогJSON);
	КаталогTools = Файл.Путь;
	КаталогСкриптов = УбратьСлешСправа(КаталогTools) + "\onescript\";
	
	ТекстКоманды = "oscript " + КаталогСкриптов + "ClearCacheAppData.os";
	
	retCode = -1;
	Сообщить("Очистка кеша.");
	Сообщить(ТекстКоманды);
	ЗапуститьПриложение(ТекстКоманды,,Истина,retCode);

КонецПроцедуры 

Процедура ВыполнитьЗапускВсехСборок(ОсновнойФайлПараметров, ОчищатьКеш = Ложь)
	ОсновныеПараметры = ПрочитатьФайлJSON(ОсновнойФайлПараметров);
//	Лог.Информация("Основные параметры = "+ОсновныеПараметры);
//	Для й = 0 по ОсновныеПараметры.Количество()-1 Цикл
//		Лог.Информация(ОсновныеПараметры.Получить(й));
//	КонецЦикла;	
	КаталогиДляОчистки = ОсновныеПараметры["КаталогиДляОчистки"];
	ОчиститьКаталоги(КаталогиДляОчистки);


	МассивВариантыСборок = ОсновныеПараметры["ВариантыСборок"];

	Сборки = Новый Массив;

	Лог.Информация("Проверяю корректность переданных параметров...");
	Для каждого ИмяФайлаВариантСборки Из МассивВариантыСборок Цикл
		ФайлПроверкаСуществования = Новый Файл(ИмяФайлаВариантСборки);
		Если НЕ ФайлПроверкаСуществования.Существует() Тогда
			//ВызватьИсключение("Файл " + ИмяФайлаВариантСборки + " не существует!");
		КонецЕсли;



		ПараметрыСборки = ПрочитатьФайлJSON(ИмяФайлаВариантСборки);	
		ПроверитьПараметрыСборкиНаКорректность(ПараметрыСборки,ИмяФайлаВариантСборки);

		Сборки.Добавить(Новый Структура("ИмяФайлаВариантСборки,ПараметрыСборки",ИмяФайлаВариантСборки,ПараметрыСборки));
	КонецЦикла;


	Лог.Информация("-----------------------------------------");

	СтатусЗапускаВсехСборок = 0;

	Для каждого Сборка Из Сборки Цикл
		Лог.Информация("Запускаю сборку по файлу <" + Сборка.ИмяФайлаВариантСборки + ">");

		ПараметрыСборки = ПрочитатьФайлJSON(Сборка.ИмяФайлаВариантСборки);
		Лог.Информация("ИмяСборки = <" + ПараметрыСборки["ИмяСборки"] + ">");
		Лог.Информация("ОтчетAllure = "+ПараметрыСборки["ОтчетAllure"]);

		УдалитьФайлСтатусВсехСборок(ПараметрыСборки);

		Если ОчищатьКеш Тогда
			Сообщить("Начало: Очистка кеша");
			ОчиститьКеш(ОсновнойФайлПараметров);
			Сообщить("Конец: Очистка кеша");
		КонецЕсли;	 
		
		ВыполнитьЗапускОднойСборки(ПараметрыСборки);
		
		Если Не ТипЗнч(МассивКаталоговАллюр) = Тип("Массив") Тогда
			МассивКаталоговАллюр = Новый Массив;
		КонецЕсли;

		МассивКаталоговАллюр.Добавить(ПараметрыСборки["ОтчетAllure"]["КаталогВыгрузкиAllure"]);

		ОбновитьСтатусВсехСборок(СтатусЗапускаВсехСборок,ПараметрыСборки);

		Лог.Информация("-----------------------------------------");
	КонецЦикла;

	Если СтатусЗапускаВсехСборок <> 0 Тогда
		Лог.Информация("БЫЛИ ОШИБКИ ВО ВРЕМЯ ВЫПОЛНЕНИЯ СЦЕНАРИЕВ!");
	Иначе
		Лог.Информация("Ошибок не было!");
	КонецЕсли;

	КаталогАллюрОбщий = ".\ServiceBases\AllureReport_All\";
	КаталогАллюрВсеТесты = ПреобразоватьПутьСТочкамиКНормальномуПути(КаталогАллюрОбщий + "Corp_all_reports");

	КаталогАллюрGenerate = ".\ServiceBases\AllureReport_HTML\";

	Лог.Информация("Копирование всех allure в общую папку");
	Лог.Информация("Количество каталогов для копирования = " + МассивКаталоговАллюр.Количество());

	//-------------------------------------------------------------------
	//Очищаем общую папку аллюр
	Лог.Информация("Очищаем общую папку аллюр");
	СтрокаКоманды = "
	|chcp 65001
	|if exist """ + КаталогАллюрВсеТесты + "\*.*"" (
	|   cd """ + КаталогАллюрВсеТесты + """
	|   rd """ + КаталогАллюрВсеТесты + """ /s /q
	|)";

	retCode = ВыполнитьСкрипт(СтрокаКоманды);

	//-------------------------------------------------------------------
	//Копируем все сырые аллюр в общую папку
	Лог.Информация("Копируем все сырые аллюр в общую папку");
	Для Каждого КаталогАллюр Из МассивКаталоговАллюр Цикл
		СтрокаКоманды = "xcopy """ + КаталогАллюр + """ """ + КаталогАллюрВсеТесты + """ /H /Y /C /R /S /I"; 
		retCode = ВыполнитьСкрипт(СтрокаКоманды);
	КонецЦикла;

	//-------------------------------------------------------------------
	//Копируем из генерированного отчета папку history в общую папку
	Лог.Информация("Копируем из генерированного отчета папку history в общую папку");
	СтрокаКоманды = "xcopy """ + КаталогАллюрGenerate + "history" + """ """ + КаталогАллюрВсеТесты + """history /H /Y /C /R /S /I";
	retCode = ВыполнитьСкрипт(СтрокаКоманды);

	//-------------------------------------------------------------------
	//Очищаем папку со сгенерированным отчетом
	Лог.Информация("Очищаем папку со сгенерированным отчетом");
	СтрокаКоманды = "
	|chcp 65001
	|if exist """ + КаталогАллюрGenerate + "\*.*"" (
	|   cd """ + КаталогАллюрGenerate + """
	|   rd """ + КаталогАллюрGenerate + """ /s /q
	|)";
	retCode = ВыполнитьСкрипт(СтрокаКоманды);

	//-------------------------------------------------------------------
	//Генерируем общий отчет
	Лог.Информация("Генерируем общий отчет");
	СтрокаКоманды = "allure generate""" + КаталогАллюрВсеТесты + """ -o """ + КаталогАллюрGenerate; 
	retCode = ВыполнитьСкрипт(СтрокаКоманды);

	РаботаСФайлами.УдалитьВременныеФайлы(МассивВременныхФайлов);

	ЗавершитьРаботу(СтатусЗапускаВсехСборок);
КонецПроцедуры





Лог = Логирование.ПолучитьЛог("behavior.run.log");
Лог.Информация(ПолучитьСтрокуЗапускаChrome());
//Лог.Информация("Запуск записи сценариев...");



Если АргументыКоманднойСтроки.Количество() = 0 Тогда
	Лог.Ошибка("Не передан файл параметров!");
	//Возврат;
ИначеЕсли АргументыКоманднойСтроки.Количество() > 2 Тогда
	Лог.Ошибка("Скрипт принимает не больше 2 параметров.");
	//Возврат;
Иначе
	Стр = АргументыКоманднойСтроки[0];
	Стр = СтрЗаменить(Стр,Символ(13),"");
	
	ОчищатьКеш = Ложь;
	Если АргументыКоманднойСтроки.Количество() > 1 Тогда
		Значение = АргументыКоманднойСтроки[1];
		Если Нрег(Значение) = "да" ИЛИ Нрег(Значение) = "true" Тогда
			ОчищатьКеш = Истина;
		КонецЕсли;	 
	КонецЕсли;	 
	
	ВыполнитьЗапускВсехСборок(Стр, ОчищатьКеш);
КонецЕсли;		