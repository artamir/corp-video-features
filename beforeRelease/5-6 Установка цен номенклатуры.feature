
#language: ru

@tree

Функциональность: Дымовые тесты

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

	И В командном интерфейсе я выбираю 'Главное' 'Фирмы'
	Тогда открылось окно 'Фирмы'
	
	Если в таблице 'Список' есть строка Тогда
		| 'Наименование'      |
		| 'Account Timbal SRL'|

			И в таблице 'Список' я перехожу к строке:
				| 'Наименование' 	   |
				| 'Account Timbal SRL'|                 

			Если элемент формы с именем 'ФормаУстановитьОсновной' доступен Тогда
				И я нажимаю на кнопку с именем 'ФормаУстановитьОсновной'
				Тогда открылось окно '1С:Предприятие'
				И я нажимаю на кнопку с именем 'Button0'
			
	Иначе

		Когда В панели разделов я выбираю 'Главное'
		И В панели функций я выбираю 'Заполнение информационной базы'
		Тогда открылось окно 'Заполнение информационной базы: Заполнение информационной базы'
		И я перехожу к закладке с именем 'ГруппаСправочники'
		И я изменяю флаг с именем 'ЗаполнениеБанки'
		И я нажимаю на кнопку с именем 'ФормаВыполнить'
		И Я закрываю окно 'Заполнение информационной базы: Заполнение информационной базы'

		И В командном интерфейсе я выбираю 'Главное' 'Фирмы'
		Тогда открылось окно 'Фирмы'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Фирмы (создание)'
		И в поле с именем 'Наименование' я ввожу текст 'Account Timbal SRL'
		И я нажимаю кнопку выбора у поля с именем 'ОсновнойВидДеятельности'
		Тогда открылось окно 'Виды деятельности'
		И в таблице 'Список' я перехожу к строке:
			| 'Код' | 'Наименование'              |
			| '1'   | 'Коммерческая деятельность' |
		И в таблице 'Список' я выбираю текущую строку
		Тогда открылось окно 'Фирмы (создание) *'
		И из выпадающего списка с именем 'ВидФирмы' я выбираю точное значение 'Резидент'
		И в поле с именем 'КодНКСС' я ввожу текст '124578'
		И в поле с именем 'КодКОУМ' я ввожу текст '741'
		И в поле с именем 'КодКЭДМ' я ввожу текст '2599'
		И в поле с именем 'ОргПравФорма' я ввожу текст 'SRL'
		И я нажимаю кнопку выбора у поля с именем 'НаименМестн'
		Тогда открылось окно 'Коды Государственной Налоговой Инспекции'
		И в таблице 'Список' я перехожу к строке:
			| 'Код' | 'Наименование'    |
			| '03'  | 'Sector Botanica' |
		И в таблице 'Список' я выбираю текущую строку
		Тогда открылось окно 'Фирмы (создание) *'
		И в поле с именем 'ДатаРегистрации' я ввожу текст '01.01.2000'
		И в поле с именем 'ФормаСобственности' я ввожу текст 'Privata'
		И я нажимаю кнопку выбора у поля с именем 'КодКФС'
		Тогда открылось окно 'Классификатор КФС'
		И я нажимаю на кнопку с именем 'Заполнить'
		И в таблице 'Список' я перехожу к строке:
			| 'Код' | 'Наименование'          |
			| '15'  | 'Частная собственность' |
		И в таблице 'Список' я активизирую поле с именем 'Наименование'
		И в таблице 'Список' я выбираю текущую строку
		Тогда открылось окно 'Фирмы (создание) *'
		И я нажимаю кнопку выбора у поля с именем 'КодКОФП'
		Тогда открылось окно 'Классификатор КОПФ: КОПФ'
		И я нажимаю на кнопку с именем 'ФормаЗаполнить'
		И в таблице 'Список' я перехожу к строке:
			| 'Код' | 'Наименование'                             |
			| '530' | 'Общества с ограниченной ответственностью' |
		И в таблице 'Список' я активизирую поле с именем 'Наименование'
		И в таблице 'Список' я выбираю текущую строку
		Тогда открылось окно 'Фирмы (создание) *'
		И я нажимаю кнопку выбора у поля с именем 'кодКАТЕМ'
		Тогда открылось окно 'Классификатор КАТЕМ: Классификатор КАТЕМ'
		И я нажимаю на кнопку с именем 'ФормаЗаполнить'
		И в таблице 'Список' я перехожу к строке:
			| 'Код'  | 'Наименование'    |
			| '0110' | 'Сектор Ботаника' |
		И в таблице 'Список' я активизирую поле с именем 'Наименование'
		И в таблице 'Список' я выбираю текущую строку
		Тогда открылось окно 'Фирмы (создание) *'
		И я перехожу к закладке с именем 'Реквизиты'
		И я нажимаю кнопку выбора у поля с именем 'ОснКасса'
		Тогда открылось окно 'Склады (места хранения)'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Склады (места хранения) (создание)'
		И в поле с именем 'Родитель' я ввожу текст 'Casa'
		И в поле с именем 'Родитель' я ввожу текст ''
		И в поле с именем 'Наименование' я ввожу текст 'Casa'
		И из выпадающего списка с именем 'ВидСклада' я выбираю точное значение 'Оптовый'
		И я нажимаю кнопку выбора у поля с именем 'ОбщепитПодразделениеОрганизации'
		Тогда открылось окно 'Виды деятельности'
		И в таблице 'Список' я перехожу к строке:
			| 'Код' | 'Наименование'              |
			| '1'   | 'Коммерческая деятельность' |
		И в таблице 'Список' я выбираю текущую строку
		Тогда открылось окно 'Склады (места хранения) (создание) *'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Склады (места хранения) (создание) *' в течение 20 секунд
		Тогда открылось окно 'Склады (места хранения)'
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
		Тогда открылось окно 'Фирмы (создание) *'
		И я нажимаю кнопку выбора у поля с именем 'ОснЕдИзм'
		Тогда открылось окно 'Классификатор единиц измерения'
		Если в таблице 'Список' есть строка Тогда
    		| 'Код' | 'Наименование' |
			| '796' | ' buc. '       |
			
			И в таблице 'Список' я перехожу к строке:
				| 'Код' | 'Наименование' |
				| '796' | ' buc. '       |
			
			И в таблице 'Список' я выбираю текущую строку
		Иначе	
			И я нажимаю на кнопку с именем 'ФормаПодборИзКЕИМ'
			И в табличном документе 'ПолеТабличногоДокумента' я перехожу к ячейке 'R500C3'
			И в табличном документе 'ПолеТабличногоДокумента' я делаю двойной клик на текущей ячейке
			Тогда открылось окно 'Классификатор единиц измерения (создание)'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'Классификатор единиц измерения (создание)' в течение 20 секунд
			И Я закрываю окно ''
			Тогда открылось окно 'Классификатор единиц измерения'
			И я нажимаю на кнопку с именем 'ФормаВыбрать'
			Тогда открылось окно 'Фирмы (создание) *'
			И я нажимаю кнопку выбора у поля с именем 'ОснРасчСчет'
			Тогда открылось окно 'Наши расчетные счета'
			И я нажимаю на кнопку с именем 'ФормаСоздать'
			Тогда открылось окно 'Наши расчетные счета (создание)'
			И в поле с именем 'РасчетныйСчет1' я ввожу текст 'MD124578VI102589562355558'
			И я нажимаю кнопку выбора у поля с именем 'Банк'
			Тогда открылось окно 'Банки'
			И в таблице 'Список' я перехожу к строке:
				| 'Код'          | 'Наименование'           |
				| 'VICBMD2X    ' | 'B.C.'VICTORIABANK'S.A.' |
			И в таблице 'Список' я выбираю текущую строку
			Тогда открылось окно 'Наши расчетные счета (создание) *'
			И я нажимаю кнопку выбора у поля с именем 'Валюта'
			Тогда открылось окно 'Валюты'
			И в таблице 'Список' я перехожу к строке:
				| 'Код' | 'Наименование' |
				| '498' | 'MDL'          |
			И я нажимаю на кнопку с именем 'ФормаВыбрать'
			Тогда открылось окно 'Наши расчетные счета (создание) *'
			И в поле с именем 'Наименование' я ввожу текст 'VICTORIABANK MDL'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'Наши расчетные счета (создание) *' в течение 20 секунд
			Тогда открылось окно 'Наши расчетные счета'
			И я нажимаю на кнопку с именем 'ФормаВыбрать'
			Тогда открылось окно 'Фирмы (создание) *'
			И в поле с именем 'ПределМБП' я ввожу текст '1 000,00'
			И я нажимаю кнопку выбора у поля с именем 'СтавкаНДС'
			Тогда открылось окно 'Ставки НДС'
			И в таблице 'Список' я перехожу к строке:
				| 'Представление' | 'Ставка' |
				| '20 %'          | '20,00'  |
			И я нажимаю на кнопку с именем 'ФормаВыбрать'
			Тогда открылось окно 'Фирмы (создание) *'
			И я перехожу к закладке с именем 'Дополнительно'
			И я нажимаю на кнопку с именем 'ФормаЗаписать'
			Тогда открылось окно 'Account Timbal SRL (Фирмы)'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'Account Timbal SRL (Фирмы)' в течение 20 секунд
			Тогда открылось окно 'Фирмы'
			И я нажимаю на кнопку с именем 'ФормаУстановитьОсновной'
			Тогда открылось окно '1С:Предприятие'
			И я нажимаю на кнопку с именем 'Button0'
			Тогда открылось окно 'Фирмы'
			И Я закрываю окно 'Фирмы'		


Сценарий: Запись нового "документа УстановкаЦенНоменклатуры"

	Дано Я открываю основную форму документа "УстановкаЦенНоменклатуры"
	Если появилось предупреждение тогда                       
		И Я устанавливаю название истории 'Не удалось открыть форму элемента/документа документа'
		Тогда я вызываю исключение "Не удалось открыть форму документа УстановкаЦенНоменклатуры"

	И я запоминаю имя формы в переменную 'ИмяФормы'

	И я запоминаю строку 'Фирма' в переменную 'ИмяПоля'
	И я запоминаю строку 'Account Timbal SRL' в переменную 'ЗначениеПоляДолжноБыть'
	Если элемент формы с именем '$ИмяПоля$' присутствует на форме Тогда
		И я запоминаю значение поля с именем '$ИмяПоля$' как 'ТекЗначениеПоля'
		И я выполняю код встроенного языка
		"""bsl
			Сообщить(ТипЗнч(Контекст.ЗначениеПоляДолжноБыть));
			Сообщить(ТипЗнч(Контекст.ТекЗначениеПоля));
		"""
	
		Если выражение внутреннего языка '$ЗначениеПоляДолжноБыть$ = $ТекЗначениеПоля$' Истинно Тогда
			И Пауза 1
		Иначе
			И Я устанавливаю название истории 'Элемент формы $ИмяПоля$ не равен $ЗначениеПоля$'
			Тогда я вызываю исключение 'Элемент формы $ИмяПоля$ не равен $ЗначениеПоля$'

	Иначе
		И Я устанавливаю название истории 'Элемент $ИмяПоля$ отсуствует на форме'
		Тогда я вызываю исключение 'Элемент $ИмяПоля$ отсуствует на форме'

	Попытка
		И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	Исключение
		И Я устанавливаю название истории 'У документа: кнопка Провести и закрыть недоступна пользователю '
		Тогда я вызываю исключение 'Кнопка "Провести и закрыть" недоступна пользователю $ИмяФормы$'

	Попытка
		И я жду закрытия формы с именем '$ИмяФормы$' в течение 1 секунд
	Исключение
		И я сохраняю текст сообщения в переменную 'ТекстСообщенийПользователю'
		И Я устанавливаю название истории ' У документа: не дождались закрытия формы '
		Тогда я вызываю исключение 'У документа: не дождались закрытия формы. Сообщения: $ТекстСообщенийПользователю$'

	
	И Я устанавливаю название истории 'Запись нового документа'

