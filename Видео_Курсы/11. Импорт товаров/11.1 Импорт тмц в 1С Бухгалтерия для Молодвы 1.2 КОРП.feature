﻿#language: ru

@tree

Функционал: 11.1 Импорт тмц в 1С Бухгалтерия для Молодвы 1.2 КОРП

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Контекст:

	И я запоминаю строку "11.1 Импорт тмц в 1С Бухгалтерия для Молодвы 1.2 КОРП" в переменную "ИмяСценария"

	И я подготавливаю данные для сценария "$ИмяСценария$"

	И я создаю данные которых не хватает для сценария "$ИмяСценария$"

	//Дано Я подключаю клиент тестирования по имени "Веб"
	Дано Я подключаю клиент тестирования по имени "Этот клиент"
	
	Дано я активизирую окно текущего клиента тестирования
	И я закрываю все окна клиентского приложения
	И я активизирую браузер и устанавливаю полноэкранный режим
	
	И Пауза 10	

Сценарий: 11.1 Импорт тмц в 1С Бухгалтерия для Молодвы 1.2 КОРП
		
	*Документ "Приходная Налоговая Накладная" предназначен для ввода приобретенных товаро-материальных ценностях, услуг или затрат
		И Пауза 1

	*Открыть форму списка всех Приходных документов можно в разделе 'Покупки'
		И Пауза 4
		И Я перехожу в раздел "Покупки" с подсказкой 'Раздел "Покупки"'  EnjoyHint в браузере

	*Далее - sil<[50]>пункт 'Приход'
		И Пауза 1
		И Я перехожу в функцию "Приход" с подсказкой "Список приходных документов" EnjoyHint в браузере
		Тогда открылось окно 'Приход'

	*Создаем новый документ
		И Пауза 1	
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Приход: Приходная налоговая накладная *'
	
	*Изначально датой документа является рабочая дата
		И пауза 1
		И Я показываю подсказку 'Дата документа' у элемента "ДатаДок" в браузере

	*Устанавливаем дату таможенной декларации
		И Пауза 1
		И в поле с именем 'ДатаДок' я ввожу текст '15062022'
		И я перехожу к следующему реквизиту	
		Тогда открылось окно 'Приход: Приходная налоговая накладная *'

	*Для того, чтоб ввести проформу-инвойс, необходимо установить вид операции - приходная ТТН	
		И из выпадающего списка с именем "ВидОперации" я выбираю точное значение 'Приходная ТТН'
		Тогда открылось окно 'Приход: Приходная ТТН *'

	*Выбираем валюту инвойса - например USD	
		И я нажимаю кнопку выбора у поля с именем "Валюта"
		Тогда открылось окно 'Валюты'
		И в таблице "Список" я перехожу к строке:
			| 'Код' | 'Наименование' |
			| '840' | 'USD'          |
		И в таблице "Список" я выбираю текущую строку

	*Курс валюты устанавливается на дату декларации
		И Пауза 1
		И Я показываю подсказку 'Курс валюты документа на дату документа' у элемента "Курс" в браузере

	*В программе предусмотрена возможность автоматической загрузки курсов валют.
		И Пауза 1

	*Рассмотрим загрузку курсов USD. Для этого переходим в раздел "Денежные средства"
		И Пауза 4
		И Я перехожу в раздел "Денежные средства" с подсказкой 'Раздел "Денежные средства"'  EnjoyHint в браузере
		//SectionPanel=Денежные средства
		//FunctionsMenu=Загрузка курсов валют
		//И В командном интерфейсе я выбираю 'Денежные средства' 'Загрузка курсов валют'

	*Далее в сервисе - загрузка курсов валют
		И Пауза 1
		И Я перехожу в функцию "Загрузка курсов валют" с подсказкой "Загрузка курсов валют" EnjoyHint в браузере
		Тогда открылось окно 'Загрузка курсов валют'

	*Кнопка заполнить - заполняет табличную часть валютами
		И Пауза 1
		И Я показываю подсказку 'Заполнение табличной части' у элемента "ФормаЗаполнить" в браузере	
		И я нажимаю на кнопку с именем 'ФормаЗаполнить'

	*Устанавливаем флаги возле валют, курсы которых собираемся загрузить.	
		И Пауза 1

	*Для установки и снятия флагов можно воспользоваться кнопками.
		И Пауза 1
		И Я показываю подсказку 'Установить все флаги' у элемента "ФормаУстановитьФлажки" в браузере		
		//И я нажимаю на кнопку с именем 'ФормаУстановитьФлажки'
		И Я показываю подсказку 'Снять все флаги' у элемента "ФормаСнятьФлажки" в браузере
		//И я нажимаю на кнопку с именем 'ФормаСнятьФлажки'

	*Устанавливаем флаг возле валюты USD
		И Пауза 1
		И в таблице "СписокЗагружаемыхВалют" я перехожу к строке:
			| 'Валюта' |  'Код валюты' |
			| 'USD'    |  '840'        |
		И в таблице "СписокЗагружаемыхВалют" я устанавливаю флаг с именем 'СписокЗагружаемыхВалютПометка'
		И в таблице "СписокЗагружаемыхВалют" я завершаю редактирование строки

	*Выбираем период для загрузки
		И Пауза 1
		И в поле с именем 'НачПериода' я ввожу текст '15062022'
		И я перехожу к следующему реквизиту
		И в поле с именем 'КонПериода' я ввожу текст '15062022'

	*Загружаем курсы валют за выбранный период с сайта нац банка	
		И я нажимаю на кнопку с именем 'ФормаОсновныеДействияФормыВыполнить'
		И Пауза 3

	*Курсы загружены	
		И Пауза 1
		И Я закрываю окно 'Загрузка курсов валют'
		Тогда открылось окно 'Приход: Приходная ТТН *'

	*В документе нужно еще раз выбрать валюту, чтоб обновился ее курс
		И Пауза 1
		И из выпадающего списка с именем "Валюта" я выбираю точное значение 'USD'

	*Для счета поставщика должен быть выбран валютный счет. например пятьсот двадцать один два - "Коммерческие обязательства из-за рубежа"
		И Пауза 1
		И Я показываю подсказку 'Счет поставщика' у элемента "СчетПоставщика" в браузере	
		И из выпадающего списка с именем "СчетПоставщика" я выбираю по строке '521.2'
		И я перехожу к следующему реквизиту
		
	*Согласно первой аналитике счета пятьсот двадцать один два - выбираем поставщика из справочника контрагенты
		И Пауза 3
		И Я показываю подсказку 'Поставщик' у элемента "СубкПоставщика1" в браузере	
		И я нажимаю кнопку выбора у поля с именем "СубкПоставщика1"
		Тогда открылось окно 'Контрагенты'

	*Если это новый контрагент, с которым мы сотрудничаем, то его нужно создать
		И Пауза 1
		
	*Для удбства создадим группу - поставщики импорт
		И Пауза 1	
		//FormName=Справочник.Контрагенты.Форма.ФормаВыбораУФ
		И я нажимаю на кнопку с именем 'ФормаСоздатьГруппу'
		Тогда открылось окно 'Контрагенты (создание группы)'
		//FormName=Справочник.Контрагенты.Форма.ФормаГруппыУФ
		И в поле с именем 'Наименование' я ввожу текст 'Поставщики импорт'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Контрагенты (создание группы) *' в течение 20 секунд
		Тогда открылось окно 'Контрагенты'
		//FormName=Справочник.Контрагенты.Форма.ФормаВыбораУФ
		И в таблице "Список" я активизирую поле с именем "Наименование"
		И в таблице "Список" я выбираю текущую строку
		
	*Создадим нового контрагента - тотул пентру ущь сэ рэ ле
		И Пауза 1	
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Контрагенты (создание)'
		//FormName=Справочник.Контрагенты.Форма.ФормаЭлементаУФ
		И в поле с именем 'ПолеВвода3' я ввожу текст 'Totul pentru usi'
		И я перехожу к следующему реквизиту
		И в поле с именем 'НаименованиеПолное' я ввожу текст 'Totul pentru usi SRL'
		И в поле с именем 'ФискКод' я ввожу текст '123456'
		И в поле с именем 'ЮрАдрес' я ввожу текст 'Romania'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Контрагенты (создание) *' в течение 20 секунд
		Тогда открылось окно 'Контрагенты'
		//FormName=Справочник.Контрагенты.Форма.ФормаВыбораУФ

	*Выбираем в документ созданного контрагента	
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Приход: Приходная ТТН             от  * 0:00:00.  *'
		
	*Создадим новый договор с этим контрагентом на поставку фурнитуры
		И Пауза 1
		И Я показываю подсказку 'Договор с поставщиком' у элемента "СубкПоставщика2" в браузере		
		
		И я нажимаю кнопку выбора у поля с именем "СубкПоставщика2"
		Тогда открылось окно 'Договора'
		//FormName=Справочник.Договора.Форма.ФормаВыбораУФ
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Договора (создание)'
		//FormName=Справочник.Договора.Форма.ФормаЭлементаУФ
		И в поле с именем 'Наименование1' я ввожу текст 'На поставку фурнитуры'
		И в поле с именем 'ПолеВвода8' я ввожу текст '01.06.2022'
		И я перехожу к следующему реквизиту
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Договора (создание) *' в течение 20 секунд
		Тогда открылось окно 'Договора'
		//FormName=Справочник.Договора.Форма.ФормаВыбораУФ
		
	*Выбираем созданный договор в документ
		И Пауза 1	
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Приход: Приходная ТТН *'


	*На закладке номенклатура заполним тмц, указанные в инвойсе	
		И в таблице "ТМЦ" я нажимаю на кнопку с именем 'ТМЦДобавить'
		И в таблице "ТМЦ" я активизирую поле с именем "ТМЦТМЦ1"
	
	*Выбираем номенклатуру
		И Пауза 1
		И в таблице "ТМЦ" я нажимаю кнопку выбора у реквизита с именем "ТМЦТМЦ1"
		Тогда открылось окно 'Номенклатура'
		//FormName=Справочник.Номенклатура.Форма.ФормаВыбораУФ
		И в таблице "Список" я перехожу к строке:
			| 'Код'      | 'Наименование' | 'Остаток' | 'Себестоимость' |
			| '00000007' | 'Товары'       | '"'       | '"'             |
		И в таблице "Список" я выбираю текущую строку
//		И я нажимаю на кнопку с именем 'ФормаСоздатьГруппу'
//		Тогда открылось окно 'Номенклатура (создание группы)'
//		//FormName=Справочник.Номенклатура.ФормаГруппы
//		И Я закрываю окно 'Номенклатура (создание группы)'
//		Тогда открылось окно 'Номенклатура'
//		//FormName=Справочник.Номенклатура.Форма.ФормаВыбораУФ
//		И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюСоздатьГруппу' на элементе формы с именем "Список"
//		Тогда открылось окно 'Номенклатура (создание группы)'
//		И Я закрываю окно 'Номенклатура (создание группы)'
//		Тогда открылось окно 'Номенклатура'
//		//FormName=Справочник.Номенклатура.Форма.ФормаВыбораУФ
	*Если поступила новая номенклатурная позиция, тогда нужно ее создать
		И Пауза 1

	*Создадим новую номенклатуру
		И Пауза 1
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Номенклатура (создание)'
		//FormName=Справочник.Номенклатура.Форма.ФормаЭлементаУФ
		И в поле с именем 'Наименование' я ввожу текст 'Дверной замок Kale Kilit 2001 A 3M/C 3M'
		И я перехожу к следующему реквизиту
		И я перехожу к следующему реквизиту
		И в поле с именем 'Артикул' я ввожу текст '2001 A 3M/C 3M'
		И из выпадающего списка с именем "БазоваяЕдиницаИзмерения" я выбираю точное значение ' buc. '
		
	*В карточке новой номенклатуры выбираем ставку НДС, по которой эта номенклатура будет реализована 	
		И Пауза 1
		И из выпадающего списка с именем "НДС" я выбираю точное значение '20 %'

	*Сохраняем новую номенклатурную позицию и выбираем в документе
		И Пауза 1
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Номенклатура (создание) *' в течение 20 секунд
		Тогда открылось окно 'Номенклатура'
		//FormName=Справочник.Номенклатура.Форма.ФормаВыбораУФ
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Приход: Приходная ТТН *'
		И в таблице "ТМЦ" из выпадающего списка с именем "ТМЦТМЦ1" я выбираю точное значение 'Дверной замок Kale Kilit 2001 A 3M/C 3M'
		
	*Затем нужно выбрать место хранения, куда будет оприходована номенклатура	
		И я перехожу к следующему реквизиту
		И в таблице "ТМЦ" я нажимаю кнопку выбора у реквизита с именем "ТМЦТМЦ2"
		Тогда открылось окно 'Склады (места хранения)'
		//FormName=Справочник.Склады.Форма.ФормаВыбораУФ
		И в таблице  "Список" я перехожу на одну строку вниз
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Приход: Приходная ТТН *'
		И в таблице "ТМЦ" из выпадающего списка с именем "ТМЦТМЦ2" я выбираю точное значение 'Основной'
	
		И я перехожу к следующему реквизиту
		И я перехожу к следующему реквизиту

	*Указываем количество по инвойсу
		И в таблице "ТМЦ" в поле с именем 'ТМЦКоличество' я ввожу текст '25,000'
		И я перехожу к следующему реквизиту
		И я перехожу к следующему реквизиту

	*Сумму позиции в валюте	инвойста
		И в таблице "ТМЦ" в поле с именем 'ТМЦСумВал' я ввожу текст '375,00'
		И я перехожу к следующему реквизиту
		И я перехожу к следующему реквизиту

	*Ставку ндс выбираем Освобожденные поставки (импорт)
		И Пауза 1	
		И в таблице "ТМЦ" я нажимаю кнопку выбора у реквизита с именем "ТМЦСтНДС"
		Тогда открылось окно 'Ставки НДС'
		//FormName=Справочник.СтавкиНДС.Форма.ФормаВыбораУФ
		И в таблице "Список" я перехожу к строке:
			| 'Представление'                   |
			| 'Освобожденные поставки (импорт)' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Приход: Приходная ТТН *'
		И я перехожу к следующему реквизиту
		И я перехожу к следующему реквизиту
		И я перехожу к следующему реквизиту

	*Заполняем группу импорта. По этим группам будет происходить распределение дополнительных расходов.
		И Пауза 1
		И в таблице "ТМЦ" я нажимаю кнопку выбора у реквизита с именем "ТМЦИмпорт"
		Тогда открылось окно 'Импорт'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Импорт (создание)'
		//FormName=Справочник.Импорт.Форма.ФормаЭлементаУФ
		И в поле с именем 'Наименование' я ввожу текст '90258040000'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Импорт (создание) *' в течение 20 секунд
		Тогда открылось окно 'Импорт'
		//FormName=Справочник.Импорт.Форма.ФормаВыбораУФ
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Приход: Приходная ТТН *'
		И в таблице "ТМЦ" я завершаю редактирование строки

	*Заполним остальные импортируемые тмц
		И Пауза 1
		И в таблице "ТМЦ" я добавляю строку
		И в таблице "ТМЦ" я активизирую поле с именем "ТМЦСчетТМЦ"
		И в таблице "ТМЦ" из выпадающего списка с именем "ТМЦСчетТМЦ" я выбираю по строке '2171'
		И я перехожу к следующему реквизиту
		И в таблице "ТМЦ" я нажимаю кнопку выбора у реквизита с именем "ТМЦТМЦ1"
		Тогда открылось окно 'Номенклатура'
		И в таблице  "Список" я перехожу на одну строку вниз
		И в таблице  "Список" я перехожу на одну строку вниз
		И в таблице  "Список" я перехожу на один уровень вниз
		И в таблице  "Список" я перехожу на одну строку вниз
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Приход: Приходная ТТН             от  * 0:00:00.  *'
		И в таблице "ТМЦ" из выпадающего списка с именем "ТМЦТМЦ1" я выбираю точное значение 'Дверной замок Kale Kilit 153 NP 25mm'
		И я перехожу к следующему реквизиту
		И в таблице "ТМЦ" я нажимаю кнопку выбора у реквизита с именем "ТМЦТМЦ2"
		Тогда открылось окно 'Склады (места хранения)'
		И в таблице  "Список" я перехожу на одну строку вниз
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Приход: Приходная ТТН             от  * 0:00:00.  *'
		И в таблице "ТМЦ" из выпадающего списка с именем "ТМЦТМЦ2" я выбираю точное значение 'Основной'
		И я перехожу к следующему реквизиту
		И в таблице "ТМЦ" я нажимаю кнопку выбора у реквизита с именем "ТМЦТМЦ3"
		И я перехожу к следующему реквизиту
		И в таблице "ТМЦ" в поле с именем 'ТМЦКоличество' я ввожу текст '10,000'
		И я перехожу к следующему реквизиту
		И я перехожу к следующему реквизиту
		И в таблице "ТМЦ" в поле с именем 'ТМЦСумВал' я ввожу текст '50,00'
		И я перехожу к следующему реквизиту
		И я перехожу к следующему реквизиту
		И в таблице "ТМЦ" из выпадающего списка с именем "ТМЦСтНДС" я выбираю точное значение 'Освобожденные поставки (импорт)'
		И я перехожу к следующему реквизиту
		И в таблице "ТМЦ" я активизирую поле с именем "ТМЦИмпорт"
		И в таблице "ТМЦ" я нажимаю кнопку выбора у реквизита с именем "ТМЦИмпорт"
		Тогда открылось окно 'Импорт'
		И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '90258040000'  |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Приход: Приходная ТТН *'
		И в таблице "ТМЦ" я завершаю редактирование строки

		И в таблице "ТМЦ" я добавляю строку
		И в таблице "ТМЦ" я активизирую поле с именем "ТМЦСчетТМЦ"
		И в таблице "ТМЦ" из выпадающего списка с именем "ТМЦСчетТМЦ" я выбираю по строке '2171'
		И я перехожу к следующему реквизиту
		И в таблице "ТМЦ" из выпадающего списка с именем "ТМЦТМЦ1" я выбираю по строке 'Дверная ручка Kedr 081 SN/CP'
		И я перехожу к следующему реквизиту
		И в таблице "ТМЦ" из выпадающего списка с именем "ТМЦТМЦ2" я выбираю по строке 'Основной'
		И я перехожу к следующему реквизиту
		И я перехожу к следующему реквизиту
		И в таблице "ТМЦ" в поле с именем 'ТМЦКоличество' я ввожу текст '50,000'
		И я перехожу к следующему реквизиту
		И я перехожу к следующему реквизиту
		И в таблице "ТМЦ" в поле с именем 'ТМЦСумВал' я ввожу текст '200,00'
		И я перехожу к следующему реквизиту
		И я перехожу к следующему реквизиту
		И в таблице "ТМЦ" из выпадающего списка с именем "ТМЦСтНДС" я выбираю точное значение 'Освобожденные поставки (импорт)'
		И я перехожу к следующему реквизиту

		И в таблице "ТМЦ" я активизирую поле с именем "ТМЦИмпорт"
		И в таблице "ТМЦ" я нажимаю кнопку выбора у реквизита с именем "ТМЦИмпорт"
		Тогда открылось окно 'Импорт'
		И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '87042299000'  |
		И в таблице "Список" я выбираю текущую строку
		И в таблице "ТМЦ" я завершаю редактирование строки




