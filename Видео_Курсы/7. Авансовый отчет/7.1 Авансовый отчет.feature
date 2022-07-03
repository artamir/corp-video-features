﻿Функционал: 7.1 Авансовый отчет

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Контекст:

	И я подготавливаю данные для сценария "7.1 Авансовый отчет"

	И я создаю данные которых не хватает для сценария "7.1 Авансовый отчет"

	Дано Я подключаю клиент тестирования по имени "Веб"

	Дано я активизирую окно текущего клиента тестирования
	И я закрываю все окна клиентского приложения
	И я активизирую браузер и устанавливаю полноэкранный режим
	
	И Пауза 10	

Сценарий: 7.1 Авансовый отчет

	*Документ предназначен для списания с подотчетного лица сумм ранее выданного аванса
		И Пауза 1
		
	*В авансовый отчет вносятся все расходы по подотчетному лицу за отчетный период (по командировкам, на хозяйственные нужды и др.).
		И Пауза 1

	*Документ Авансовый отчет находится в разделе Денежные средства
		И Пауза 1
		И Я перехожу в раздел "Денежные средства" с подсказкой 'Раздел "Денежные средства"'  EnjoyHint в браузере
		
	*В подразделе Касса 
		И Пауза 1
		//И Я показываю подсказку 'Подраздел "Касса"'  у картинки "PodrazdelKassa" в браузере
		
		Затем клик на картинку "OtchetKassiraPodrazdelKassa"	со смещением "0" "35"
		Попытка
			Затем клик на картинку "OtchetKassiraPodrazdelKassa"	со смещением "0" "35"
		Исключение	
			И Пауза 1
	
	*Открылась форма списка всех авансовых отчетов
		И Пауза 1
		Тогда открылось окно 'Авансовый отчет'

	*Для создания нового документа нажимаем на кнопку Создать.
		И Пауза 1
		И Я нажимаю на кнопку "ФормаСоздать" с подсказкой "Кнопка создания нового документа" EnjoyHint в браузере
		Тогда открылось окно 'Авансовый отчет (создание)'
		
	*Номер документа программа проставит автоматически при проведении. 
		И Пауза 0.1
		И Я показываю подсказку 'Номер документа' у элемента "Номер" в браузере

	*Устанавливаем дату документа sil<[200]>(по умолчанию заполняется текущей датой).
		И Пауза 1
		И Я показываю подсказку 'Дата документа' у элемента "ДатаДок" в браузере
		И в поле с именем 'ДатаДок' я ввожу текст '2301202200000'
		И я перехожу к следующему реквизиту
			
	*Реквизиты: Организация, sil<[1200]>и Валюта, проставляется автоматически значениями, указанными в справочнике Организации.
		//
		//И Пауза 1
		И я показываю подсказку "Организация" EnjoyHint у нескольких элементов в браузере
			|'elem'|'Фирма\\#title_div'|
			|'elem'|'Фирма'|
			|'shape'|'rect'|
			|'timeout'|'2000'|
			|'noFreeze'|'false'|
		И Пауза 2
		И я показываю подсказку "Валюта" EnjoyHint у нескольких элементов в браузере
			|'elem'|'ПолеВвода1\\#title_div'|
			|'elem'|'ПолеВвода1'|
			|'shape'|'rect'|
			|'timeout'|'2000'|
			|'noFreeze'|'false'|	
		И Пауза 2

	*На закладке шапка выбирается сотрудник, счет подотчета и данные по наличным средствам, выданным сотруднику в подотчет.
		И Пауза 1
		И Я показываю подсказку 'Закладка "Шапка"' у элемента "Шапка" в браузере
		И я перехожу к закладке с именем "Шапка"

	*Выбираем счет подотчета. По умолчанию устанавливается пятьсот тридцать два - один
		И Пауза 1	
		И Я показываю подсказку 'Счет подотчета' у элемента "Счет" в браузере

	*Если выбран валютный счет то конкретизируем рабочую валюту по авансовому отчету;
		И Пауза 3
		И из выпадающего списка с именем "ПолеВвода2" я выбираю по строке '532.3'
		И я перехожу к следующему реквизиту

	*При выборе валюты, отличной от национальной, sil<[1200]>1с предоставляет возможность указать дату курса и станут доступными поля, в которе вносятся суммы в валюте 
		И Пауза 1
		И я нажимаю кнопку выбора у поля с именем "ПолеВвода1"
		Тогда открылось окно 'Валюты'
		И в таблице "Список" я перехожу к строке:
			| 'Код' | 'Наименование' |
			| '978' | 'EURO'         |
		И в таблице "Список" я выбираю текущую строку
		И Я показываю подсказку 'Дата курса' у элемента "ДатаВал" в браузере
		И в поле с именем 'ДатаВал' я ввожу текст '23.01.2022'
		И я перехожу к следующему реквизиту

	*Возвращаемся к заполнению авансового отчета в национальной валюте.
		И Пауза 1

	*Установим счет подотчета пятьсот тридцать два и один	
		И Пауза 1

		И из выпадающего списка с именем "ПолеВвода2" я выбираю по строке '532.1'

	*В поле "Валюта" выбираем  эМ Дэ эЛ
		И Пауза 1
		И я нажимаю кнопку выбора у поля с именем "ПолеВвода1"
		Тогда открылось окно 'Валюты'
		И в таблице "Список" я перехожу к строке:
			| 'Код' | 'Наименование' |
			| '498' | 'MDL'          |
		И в таблице "Список" я выбираю текущую строку

	*В поле "Сотрудник" - выбираем подотчетное лицо из справочника "Сотрудники" 
		И Пауза 1
		И Я показываю подсказку 'Подотчетное лицо - сотрудник' у элемента "ПолеВвода3" в браузере

		И я нажимаю кнопку выбора у поля с именем "ПолеВвода3"
		Тогда открылось окно 'Сотрудники: Сотрудники'
		И в таблице "Дерево" я перехожу к строке:
			| 'Имя'           |
			| 'Администрация' |
		И в таблице "Список" я активизирую поле с именем "Наименование"
		И в таблице "Список" я выбираю текущую строку

	*В поле Основание, вносится текст комментирующий хозяйственные операции по которым отчитывается сотрудник
		И Я показываю подсказку 'Комментарий документа' у элемента "ПолеВвода4" в браузере
		И в поле с именем 'ПолеВвода4' я ввожу текст 'Представительские расходы'
		И я перехожу к следующему реквизиту

	*
//	*Есть возможность просмотра остатка или перерасхода денежных средств в подотчете по сотруднику. 
//		И Пауза 1
//		
//	*Для это необходимо нажать кнопку "Показать" в окне "Предыдущий аванс". В результате будет выведен список всех кассовых документов по которым сотрудник получал суммы в подотчет, а также итоговая сумма на выбранную дату: остаток или перерасход сумм;

	*В таблице "Получено", заполняются документы выдачи авасов подотчетнуму лицу.
		И Пауза 1
		И Я показываю подсказку 'Документы выдачи наличных подотчетному лицу' у элемента "ПолученыОрдера" в браузере

	*Если суммы авансов были отражены в программе соответствующими документами, можно автоматически заполнить эту таблицу
		И Пауза 1

	*Перед автоматическим заполнением таблицы "Получено", следует записать документ.
		И Пауза 1
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
		Тогда открылось окно 'Авансовый отчет * от *'

	*Создадим новый расходный кассовый ордер для выдачи наличных в подотчет.
		И Пауза 1

	*Переходим в раздел "Денежные средства", в подразделе "Касса" открываем "Расходный кассовый ордер"
		И Пауза 1 	
		И В командном интерфейсе я выбираю 'Денежные средства' 'Расходный кассовый ордер'
		Тогда открылось окно 'Расходный кассовый ордер'

	*Создаем новый документ	
		И в таблице "Список" я добавляю строку
		Тогда открылось окно 'Расходный кассовый ордер (создание)'

	*Установим дату выдачи наличных в подотчет 
		И Пауза 1
		И в поле с именем 'Дата' я ввожу текст '0501202200000'
		И я перехожу к следующему реквизиту

	*Заполняем реквизиты документа	
		И Пауза 1
		И я нажимаю кнопку выбора у поля с именем "ДенежныеСредства"
		Тогда открылось окно 'Денежные средства'
		И в таблице  "Список" я перехожу на одну строку вниз
		И в таблице  "Список" я перехожу на один уровень вниз
		И в таблице  "Список" я перехожу на одну строку вниз
		И в таблице  "Список" я перехожу на одну строку вниз
		И в таблице  "Список" я перехожу на одну строку вниз
		И в таблице  "Список" я перехожу на одну строку вниз
		И в таблице  "Список" я перехожу на одну строку вниз
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Расходный кассовый ордер (создание) *'

	*Выбираем подотчетное лицо - сотрудника	
		И Пауза 1
		И я нажимаю кнопку выбора у поля с именем "Клиент"
		Тогда открылось окно 'Сотрудники: Сотрудники'
		И в таблице "Дерево" я перехожу к строке:
			| 'Имя'           |
			| 'Администрация' |
		И в таблице "Список" я активизирую поле с именем "Наименование"
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Расходный кассовый ордер (создание) *'

	*Пишем основание - в подотчет	
		И Пауза 1
		И в поле с именем 'Основание' я ввожу текст 'В подотчет для оплаты представительских расходов'
	
	*Заполняем сумму выданную в подотчет
		И Пауза 1
		И в поле с именем 'Сумма1' я ввожу текст '5000,00'
		И я перехожу к следующему реквизиту
	
	*Проводим и закрываем расходный кассовый
		И Пауза 1
		И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
		И я жду закрытия окна 'Расходный кассовый ордер (создание)' в течение 20 секунд
		Тогда открылось окно 'Расходный кассовый ордер'
		И Я закрываю окно 'Расходный кассовый ордер'

	*Возвращаемся к заполнению авансового отчета
		И Пауза 6

	*На закладке "Шапка" есть таблица "Получено", которую можно заполнить автоматически, нажав на кнопку заполнить
		И Пауза 4		
		И Я показываю подсказку 'Заполнение таблицы выданых наличных подотчетному лицу' у элемента "Показать" в браузере		
		И я нажимаю на кнопку с именем 'Показать'

	*Таблица была заполнена расходным кассовым ордером, который мы только что создали.
		И Пауза 1
		
		И я показываю подсказку "Документ выдачи наличных в подотчет" EnjoyHint у области таблицы "ПолученыОрдера" в браузере
		|'rowNumber'|'1'|
		|'rowNumberEnd'|'1'|
		|'shape'|'rect'|
		|'timeout'|'3000'|
		|'noFreeze'|'false'|	
		И Пауза 2
		
	*Программа, так же, показывает итоговую сумму на выбранную дату: а именно остаток или перерасход
		И я показываю подсказку 'Информация о денежных средствах в кассе' EnjoyHint у нескольких элементов в браузере
			|'elem'|'ОстатокПерерасход'|
			|'elem'|'Остаток_'|
			|'shape'|'rect'|
			|'timeout'|'2000'|
			|'noFreeze'|'false'|	
		И Пауза 2

	*На закладке "Таблица" отражаются оправдательные документы, подтверждающие совершение хозяйственной операции.
		И Пауза 1
		И Я показываю подсказку 'Закладка "Таблица"' у элемента "Таблица" в браузере
		И я перехожу к закладке с именем "Таблица"

	*Отразим чек на оплату представительских расходов.
		И Пауза 1

	*Добавляем новую строку.
		И Пауза 1
		И Я показываю подсказку 'Добавить новую строку' у элемента "ТабличнаяЧасть1Добавить" в браузере
		И в таблице "ТабличнаяЧасть1" я добавляю строку
		И я завершаю редактирование строки

	*Поле Док. эС Тэ эР предназначено для ввода оправдательного документа строкой
		И Пауза 1
		И Я показываю подсказку 'Док.стр - оправдательный документ строкой' у ячейки таблицы "ТабличнаяЧасть1" "1" "Док. стр" в браузере
		И в таблице "ТабличнаяЧасть1" я активизирую поле с именем "ТабличнаяЧасть1Док"
		И в таблице "ТабличнаяЧасть1" в поле с именем 'ТабличнаяЧасть1Док' я ввожу текст 'Чек'
		И я перехожу к следующему реквизиту

	*В поле дата указывается дата оправдательного документа
		И Пауза 1
		И Я показываю подсказку 'Дата оправдательного документа' у ячейки таблицы "ТабличнаяЧасть1" "1" "Дата" в браузере
		И в таблице "ТабличнаяЧасть1" в поле с именем 'ТабличнаяЧасть1ДатаДокОсн' я ввожу текст '10012022'
		И я перехожу к следующему реквизиту	
	
	*Поле Назначение" - это комментарий по оправдательному документу
		И Пауза 1
		И Я показываю подсказку 'Комментарий к оправдательному документу' у ячейки таблицы "ТабличнаяЧасть1" "1" "Назначение" в браузере
		И в таблице "ТабличнаяЧасть1" в поле с именем 'ТабличнаяЧасть1Назначение' я ввожу текст 'Оплата представительских расходов'
		И я перехожу к следующему реквизиту

	*Далее выбираем корреспондирующий счет и его аналитики
		И Пауза 1
		И я показываю подсказку "Корр. счет и его аналитики" EnjoyHint у области таблицы "ТабличнаяЧасть1" в браузере
		|'rowNumber'|'1'|
		|'rowNumberEnd'|'1'|
		|'columnNumber'|'6'|
		|'columnNumberEnd'|'8'|
		|'shape'|'rect'|
		|'timeout'|'3000'|
		|'noFreeze'|'false'|
		И Пауза 3
		И в таблице "ТабличнаяЧасть1" из выпадающего списка с именем "ТабличнаяЧасть1Дебет" я выбираю по строке '713.6'
		И я перехожу к следующему реквизиту

	*Выбираем первую аналитику - статью затрат	
		И Пауза 1
		И в таблице "ТабличнаяЧасть1" я нажимаю кнопку выбора у реквизита с именем "ТабличнаяЧасть1СубДебет"
		Тогда открылось окно 'Затраты и расходы'

	*Если подходящей статьи нет, то добавим новую
		И Пауза 1
		И Я показываю подсказку 'Добавить новую статью затрат' у элемента "ФормаСоздать" в браузере
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Затраты и расходы'
		//И я сохраняю скриншот "e:\vanessa\corp\tools\screenshots\create_zatrati.png"
		
	*Заполняем наименование
		И Пауза 1
		//v1---------------------------------
		//И в поле с именем 'Наименование' я ввожу текст 'Представительские расходы'
		//Если значение поля "Наименование" не содержит текст "Представительские расходы" тогда
		//	Тогда в поле с именем 'Наименование' я ввожу текст 'Представительские расходы'
		//v2---------------------------------
		//И я нажимаю на HTML элемент "querySelectElem('#form3_Наименование_i0')" в браузере
		//v3---------------------------------
		Затем клик на картинку "StatiiZatratNaimenovanie" со смещением "55" "0"
		Затем клик на картинку "StatiiZatratNaimenovanie" со смещением "55" "0"		
		И я эмулирую ввод текста "Представительские расходы"
		
	*Если необходимо, чтоб сумма затрат попала в отчет пять че и, тогда выбираем нужную статью из справочника статьи по отчету пять че и	
		И Пауза 1
		Если значение поля "Наименование" не содержит текст "Представительские расходы" тогда
			Тогда в поле с именем 'Наименование' я ввожу текст 'Представительские расходы'
		И я нажимаю кнопку выбора у поля с именем "Статья5С2014"
		Тогда открылось окно 'Статьи по отчету 5-CI'
		И Пауза 5
		И я закрываю окно 'Статьи по отчету 5-CI'
		Тогда открылось окно 'Затраты и расходы *'

	*Сохраняем новую статью затрат и выбираем ее в документе авансовый отчет
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Затраты и расходы *' в течение 20 секунд
		Тогда открылось окно 'Затраты и расходы'
		И в таблице "Список" я перехожу к строке:
		| 'Код' | 'Наименование'              |
		| '7'   | 'Представительские расходы' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Авансовый отчет * от * *'

	*Выбираем вторую аналитику счета семьсот тринадцать и шесть - это Вид деятельности
		И Пауза 1
		И в таблице "ТабличнаяЧасть1" я нажимаю кнопку выбора у реквизита с именем "ТабличнаяЧасть1СубДебет2"
		Тогда открылось окно 'Виды деятельности'
		И в таблице  "Список" я перехожу на одну строку вниз
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Авансовый отчет *'
	//И в таблице "ТабличнаяЧасть1" из выпадающего списка с именем "ТабличнаяЧасть1СубДебет2" я выбираю точное значение 'Коммерческая деятельность'
		И я перехожу к следующему реквизиту
		И я перехожу к следующему реквизиту
		И я перехожу к следующему реквизиту
	
	*В поле Сумма вводится сумма оправдательного документа
		И Пауза 1
		И я показываю подсказку "Сумма оправдательного документа" EnjoyHint у области таблицы "ТабличнаяЧасть1" в браузере
		|'rowNumber'|'1'|
		|'rowNumberEnd'|'1'|
		|'columnNumber'|'11'|
		|'columnNumberEnd'|'11'|
		|'shape'|'rect'|
		|'timeout'|'3000'|
		|'noFreeze'|'false'|
		И Пауза 3
		И в таблице "ТабличнаяЧасть1" в поле с именем 'ТабличнаяЧасть1Сумма' я ввожу текст '2500,00'
		И я перехожу к следующему реквизиту
		И в таблице "ТабличнаяЧасть1" я завершаю редактирование строки

	*Если в 1с введен документ прихода, тогда строка таблицы может быть заполнена автоматически, на основании этого документа.
		И Пауза 1
		И в таблице "ТабличнаяЧасть1" я добавляю строку
		И я завершаю редактирование строки
		
	*Поле "По документу" - предназначено для выбора приходного документа - основания оправдательного документа.
		И Пауза 1
		И Я показываю подсказку 'Комментарий к оправдательному документу' у ячейки таблицы "ТабличнаяЧасть1" "2" "По документу" в браузере
		И в таблице "ТабличнаяЧасть1" я активизирую поле с именем "ТабличнаяЧасть1ПоДокументу"
		И в таблице "ТабличнаяЧасть1" я нажимаю кнопку выбора у реквизита с именем "ТабличнаяЧасть1ПоДокументу"
		Тогда открылось окно 'Авансовый отчет'
		//FormName=ЖурналДокументов.АвансовыйОтчет.Форма.ФормаСпискаУФ
		
	*Из списка выбираем нужный документ или создаем новый
		И Пауза 2	
		И в таблице "Список" я активизирую поле с именем "Номер"
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Авансовый отчет * от * *'
		И в таблице "ТабличнаяЧасть1" я завершаю редактирование строки

	*Строка была заполнена автоматически на основании выбранной приходной налоговой накладной
		И Пауза 1
		И я показываю подсказку "Оправдательный документ на основании прих. налоговой накладной" EnjoyHint у области таблицы "ТабличнаяЧасть1" в браузере
		|'rowNumber'|'2'|
		|'rowNumberEnd'|'2'|
		|'shape'|'rect'|
		|'timeout'|'3000'|
		|'noFreeze'|'false'|	
		И Пауза 2
		
	*Рассмотрим поступление товаро материальных ценностей, купленных подотчетным лицом за наличный расчет
		И Пауза 3
		И в таблице "ТабличнаяЧасть1" я добавляю строку
		И я завершаю редактирование строки

	*Заполняем название оправдательного документа
		И Пауза 1	
		И в таблице "ТабличнаяЧасть1" в поле с именем 'ТабличнаяЧасть1Док' я ввожу текст 'Чек'
		И я перехожу к следующему реквизиту

	*Указываем дату операции	
		И Пауза 1
		И в таблице "ТабличнаяЧасть1" в поле с именем 'ТабличнаяЧасть1ДатаДокОсн' я ввожу текст '20.01.2022'
		И я перехожу к следующему реквизиту

	*Назначение операции	
		И в таблице "ТабличнаяЧасть1" в поле с именем 'ТабличнаяЧасть1Назначение' я ввожу текст 'Покупка материалов'
		И я перехожу к следующему реквизиту

	*Коррекспондирующий счет - двести одинадцать и 2 - вспомогательные материалы	
		И в таблице "ТабличнаяЧасть1" из выпадающего списка с именем "ТабличнаяЧасть1Дебет" я выбираю по строке '211.2'
		И я перехожу к следующему реквизиту

	*Первая аналитика - номенклатура.	
		И Пауза 1
		И в таблице "ТабличнаяЧасть1" я нажимаю кнопку выбора у реквизита с именем "ТабличнаяЧасть1СубДебет"
		Тогда открылось окно 'Номенклатура'
		//FormName=Справочник.Номенклатура.Форма.ФормаВыбораУФ
		И в таблице  "Список" я перехожу на один уровень вниз
		И в таблице  "Список" я перехожу на одну строку вниз
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Авансовый отчет * от * *'
		И в таблице "ТабличнаяЧасть1" из выпадающего списка с именем "ТабличнаяЧасть1СубДебет" я выбираю точное значение 'Шурупы 8х45'
		И я перехожу к следующему реквизиту

	*Вторая аналитика - место хранения - склад	
		И Пауза 1
		И в таблице "ТабличнаяЧасть1" я нажимаю кнопку выбора у реквизита с именем "ТабличнаяЧасть1СубДебет2"
		Тогда открылось окно 'Склады (места хранения)'
		И в таблице  "Список" я перехожу на одну строку вниз
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Авансовый отчет * от * *'
		И в таблице "ТабличнаяЧасть1" из выпадающего списка с именем "ТабличнаяЧасть1СубДебет2" я выбираю точное значение 'Основной'
		И я перехожу к следующему реквизиту

	*Количество купленных материалов	
		И в таблице "ТабличнаяЧасть1" в поле с именем 'ТабличнаяЧасть1Колво' я ввожу текст '100,000'
		И я перехожу к следующему реквизиту
		И я перехожу к следующему реквизиту
	
	*Израсходованная сумма на оплату
		И в таблице "ТабличнаяЧасть1" в поле с именем 'ТабличнаяЧасть1Сумма' я ввожу текст '60,00'
		И я перехожу к следующему реквизиту
		И в таблице "ТабличнаяЧасть1" я завершаю редактирование строки

	*Проведем документ и проверим движения
		И Пауза 1
		И я нажимаю на кнопку с именем 'ФормаПровести'
		Тогда открылось окно 'Авансовый отчет * от *'
		И я нажимаю на кнопку с именем 'ФормаОбщаяКомандаПоказатьЖурналПроводок'
		Тогда открылось окно 'Хозрасчетный'
		//FormName=РегистрБухгалтерии.Хозрасчетный.Форма.ФормаСпискаУФ

	*отражено отнесение представительских расходов на затраты
		И Пауза 2
		И я показываю подсказку "Дт 713.6 - Кт 532.1" EnjoyHint у области таблицы "Хозрасчетный" в браузере
		|'rowNumber'|'1'|
		|'rowNumberEnd'|'1'|
		|'shape'|'rect'|
		|'timeout'|'3000'|
		|'noFreeze'|'false'|	
		И Пауза 3

	*Погашение задолженности перед поставщиком	
		И Пауза 2
		И я показываю подсказку "Дт 521.1 - Кт 532.1" EnjoyHint у области таблицы "Хозрасчетный" в браузере
		|'rowNumber'|'2'|
		|'rowNumberEnd'|'2'|
		|'shape'|'rect'|
		|'timeout'|'3000'|
		|'noFreeze'|'false'|	
		И Пауза 3

	*Приобретение тмц
		И Пауза 2
		И я показываю подсказку "Дт 217.1 - Кт 532.1" EnjoyHint у области таблицы "Хозрасчетный" в браузере
		|'rowNumber'|'3'|
		|'rowNumberEnd'|'3'|
		|'shape'|'rect'|
		|'timeout'|'3000'|
		|'noFreeze'|'false'|	
		И Пауза 3

	*с увеличением задолженности подотчетного лица
		И Пауза 1
		И я показываю подсказку "Дт 217.1 - Кт 532.1" EnjoyHint у области таблицы "Хозрасчетный" в браузере
		|'rowNumber'|'1'|
		|'rowNumberEnd'|'3'|
		|'columnNumber'|'12'|
		|'columnNumberEnd'|'12'|
		|'shape'|'rect'|
		|'timeout'|'3000'|
		|'noFreeze'|'false'|	
		И Пауза 3

	*Распечатаем авансовый отчет
		И Пауза 1
		И я нажимаю на кнопку с именем 'ФормаДокументАвансовыйОтчетПечатьАвансовыйОтчет'
		Тогда открылось окно 'Таблица'
		//FormName=SpreadsheetDocumentForm

		И Пауза 3

	*Передано в подотчет
		И Пауза 1	
		И в табличном документе 'SpreadsheetDocument' я перехожу к ячейке "R9C4"

	*Отнесение представительских расходов
		И Пауза 1
		И в табличном документе 'SpreadsheetDocument' я перехожу к ячейке "R6C6"
		И Пауза 2
		И в табличном документе 'SpreadsheetDocument' я перехожу к ячейке "R6C7"

	*Погашение задолжности перед поставщиком
		И Пауза 1
		И в табличном документе 'SpreadsheetDocument' я перехожу к ячейке "R7C6"
		И Пауза 2
		И в табличном документе 'SpreadsheetDocument' я перехожу к ячейке "R7C7"	

	*Покупка тэ эм цэ
		И Пауза 1
		И в табличном документе 'SpreadsheetDocument' я перехожу к ячейке "R8C6"
		И Пауза 2
		И в табличном документе 'SpreadsheetDocument' я перехожу к ячейке "R8C7"

	*Остаток наличных у подотчетного лица
		И Пауза 1
		И в табличном документе 'SpreadsheetDocument' я перехожу к ячейке "R18C4"
		И Пауза 2
		И Я закрываю окно 'Таблица'

	*На этом заполнение авансового отчета завершено. Можем закрыть документ.
		И Пауза 4
		И Я закрываю окно 'Авансовый отчет * от *'

	*До скорых встреч.
		И Пауза 4

	*Ставьте лайк, колокольчик и подписывайтесь на канал.			
		И Пауза 4
	
		 		