﻿#language: ru

@tree

Функционал: Заполнение сведений о контрагентах

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Контекст:
	//Дано я запускаю SikuliX сервер
	И я подготавливаю данные для сценария "Заполнение сведений о контрагентах"
	
	Дано Я подключаю клиент тестирования по имени "Веб"

	Дано я активизирую окно текущего клиента тестирования
	И я закрываю все окна клиентского приложения
	И я активизирую браузер и устанавливаю полноэкранный режим

	
Сценарий: <описание сценария>
	*Заполнение сведений о контрагентах на примере создания и заполнения данных нового контрагента
		И Пауза 7
		
	*Для открытия формы списка справочника "Контрагенты" нужно перейти в раздел "Справочники"
		И Пауза 1
		И я показываю подсказку 'Раздел "Справочники"' EnjoyHint у элемента "Справочники" панели разделов в браузере
			|'shape'|'rect'|
			|'timeout'|'5000'|
			|'noFreeze'|'false'|		
		И Пауза 3
		И В панели разделов я выбираю "Справочники"

	*Затем пункт "Контрагенты" на панели функций
		И Пауза 1
		И я показываю подсказку 'Пункт "Контрагенты"' EnjoyHint у элемента "Контрагенты" панели функций в браузере
			|'shape'|'rect'|
			|'timeout'|'5000'|
			|'noFreeze'|'false'|
		И Пауза 3
		И В панели функций я выбираю "Контрагенты"

	*Откроется форма списка контрагентов. Для удобства, можно создать группы, где в последующем будут располагаться контрагенты.
		И Пауза 1

	*Создадим две группы "Поставщики" и "Покупатели"
		И Пауза 1
		
	*Для этого нажимаем на кнопку "Создать группу"
		И Пауза 1
		И я показываю подсказку 'Кнопка "Создать группу"' EnjoyHint у элемента "ФормаСоздатьГруппу" в браузере
			|'shape'|'rect'|
			|'timeout'|'5000'|
			|'noFreeze'|'false'|
		И Пауза 3		
		И я нажимаю на кнопку с именем 'ФормаСоздатьГруппу'	
		Тогда открылось окно 'Контрагенты (создание группы)'

	*В поле "Наименование" указываем наименование для группы контрагентов - "Поставщики". 	
		И Пауза 1
		И в поле с именем 'Наименование' я ввожу текст 'Поставщики'
	*Нажимаем на кнопку "Записать и закрыть"	
		И Пауза 1
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Контрагенты (создание группы) *' в течение 20 секунд
		Тогда открылось окно 'Контрагенты'	

	*Повторяем проделанные операции для создания группы "Покупатели"
		И Пауза 1
		И я нажимаю на кнопку с именем 'ФормаСоздатьГруппу'
		Тогда открылось окно 'Контрагенты (создание группы)'
		И в поле с именем 'Наименование' я ввожу текст 'Покупатели'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Контрагенты (создание группы) *' в течение 20 секунд
		Тогда открылось окно 'Контрагенты'

	*Откроем группу "Покупатели" и создадим нового контрагента
		И Пауза 1
		И в таблице "Список" я перехожу к строке:
			| 'Код' | 'Наименование' |
			| '2'   | 'Покупатели'   |
		И в таблице "Список" я выбираю текущую строку
		И я показываю подсказку "Кнопка Создать" EnjoyHint у элемента "ФормаСоздать" в браузере
			|'shape'|'rect'|
			|'timeout'|'5000'|
			|'noFreeze'|'false'|
		И Пауза 3		
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Контрагенты (создание)'	

	*Открылась форма создания нового Контрагента
		И Пауза 1	
		Тогда открылось окно 'Контрагенты (создание)'

	*В поле "Наименование" вводим наименование контрагента. В примере - это "ИмяКлиента"
		И Пауза 1
		И в поле с именем 'ПолеВвода3' я ввожу текст 'Demo SRL'
		И я перехожу к следующему реквизиту

	*Как видно, поле "Полное наименование" заполнелось автоматически.
		И Пауза 1
		И я показываю подсказку 'Поле "Полное наименование"' EnjoyHint у элемента "НаименованиеПолное" в браузере
			|'shape'|'rect'|
			|'timeout'|'5000'|
			|'noFreeze'|'false'|
		И Пауза 3			

	*Оно используется в печатных формах.
		И Пауза 1	

	*Заполним фискальный код
		И Пауза 1
		И в поле с именем 'ФискКод' я ввожу текст '1001425675213'
	*Юридический и почтовый адреса	
		И в поле с именем 'ЮрАдрес' я ввожу текст 'mun. Chişinău'
		И в поле с именем 'ПочтАдрес' я ввожу текст 'mun. Chişinău'
	*Телефон
		И в поле с именем 'ПолеВвода4' я ввожу текст '022 55-55-55'
	*Если контрагент является плательщиком НДС, тогда указываем регистрационный номер НДС	
		И в поле с именем 'РегНомНДС' я ввожу текст '0361548'	

	*Выбираем страну из классификатора стран мира.
		И я нажимаю кнопку выбора у поля с именем "Страна"
		Тогда открылось окно 'Классификатор стран мира'
		И в таблице "Список" я активизирую поле с именем "Наименование"
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Контрагенты (создание) *'

	*Указываем, если контрагент является нерезидентом
		И я изменяю флаг с именем 'Флажок1'
		И я изменяю флаг с именем 'Флажок1'	

	*Перейдем к закладке "Расчетные счета"
		И Пауза 1
		И я показываю подсказку 'Закладка "Расчетные счета"' EnjoyHint у элемента "РасчетныеСчетаСтраница" в браузере
			|'shape'|'rect'|
			|'timeout'|'5000'|
			|'noFreeze'|'false'|
		И Пауза 3
		И я перехожу к закладке с именем "РасчетныеСчетаСтраница"
	*На этой закладке находятся расчетные счета контрагента. Их может быть несколько.
		И Пауза 1

	*Создадим и заполним новый расчетный счет.
		И я показываю подсказку 'Кнопка "Создать"' EnjoyHint у элемента "РасчетныеСчетаСоздать" в браузере
			|'shape'|'rect'|
			|'timeout'|'5000'|
			|'noFreeze'|'false'|
		И Пауза 3				
		И в таблице "РасчетныеСчета" я нажимаю на кнопку с именем 'РасчетныеСчетаСоздать'

	*Прежде чем программа разрешит создать новый расчетный счет, нужно согласиться записать контрагента.
		Тогда открылось окно '1С:Предприятие'
		И я нажимаю на кнопку с именем 'Button0'
		Тогда открылось окно 'Demo SRL (Контрагенты)'	

	*После того, как контрагент записан, можно еще раз начать создание нового расчетного счета
		И в таблице "РасчетныеСчета" я нажимаю на кнопку с именем 'РасчетныеСчетаСоздать'
		Тогда открылось окно 'Расчетные счета (создание)'

	*По аналогии с заполнением расчетного счета фирмы, заполним наименование, которое будет отображаться в форме списка, ибан и банк.
		И в поле с именем 'Наименование' я ввожу текст 'Основной, MDL'
		И в поле с именем 'РасчетныйСчет1' я ввожу текст 'MD1005814225145632'
		И из выпадающего списка с именем "Банк" я выбираю по строке 'moldmd2x302'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'	
		И я жду закрытия окна 'Расчетные счета (создание) *' в течение 20 секунд
		Тогда открылось окно 'Demo SRL (Контрагенты)'
	*Для подстановки расчетного счета в документах и печатных формах, нужно сделать расчетный счет основным
		И Пауза 1
		И в таблице "РасчетныеСчета" я активизирую поле с именем "РасчетныеСчетаНаименование"
		И я показываю подсказку 'Кнопка "Сделать основным"' EnjoyHint у элемента "РасчетныеСчетаСделатьОсновным" в браузере
			|'shape'|'rect'|
			|'timeout'|'5000'|
			|'noFreeze'|'false'|
		И Пауза 3				
		И в таблице "РасчетныеСчета" я нажимаю на кнопку с именем 'РасчетныеСчетаСделатьОсновным'
	*Записываем сделанные изменения.
		И Пауза 1
		И я показываю подсказку 'Кнопка "Записать"' EnjoyHint у элемента "ФормаЗаписать" в браузере
			|'shape'|'rect'|
			|'timeout'|'5000'|
			|'noFreeze'|'false'|
		И Пауза 3
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
		И Пауза 1
	
	*В программе предусмотрено ведение учета контрагентов в разрезе договоров.
		И Пауза 1
	*Перейти к списку договоров контрагента можно по гиперссылке "Договора"
		И Пауза 1
		И я показываю подсказку 'Гиперссылка "Договора"' EnjoyHint у элемента "Договора" в браузере
			|'shape'|'rect'|
			|'timeout'|'5000'|
			|'noFreeze'|'false'|
		И Пауза 3		
		
		И В текущем окне я нажимаю кнопку командного интерфейса 'Договора'
	*Создадим и заполним новый договор
		И Пауза 1
		И я показываю подсказку 'Кнопка "Создать"' EnjoyHint у элемента "ФормаСоздать" в браузере
			|'shape'|'rect'|
			|'timeout'|'5000'|
			|'noFreeze'|'false'|
		И Пауза 3	
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Договора (создание)'

	*Зададим наименование. Пусть наименование будет "Основной" 	
		И Пауза 1
		И в поле с именем 'Наименование1' я ввожу текст 'Основной'
	*Укажем дату начала действия договора	
		И Пауза 1
		И в поле с именем 'ПолеВвода8' я ввожу текст '01.01.2022'

	*Нажимаем на кнопку "Записать и закрыть"
		И Пауза 1	
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Договора (создание) *' в течение 20 секунд
	
	*И возвращаемся в форму редактирования контрагента.	
		Тогда открылось окно 'Demo SRL (Контрагенты)'	
		И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'

	*Заполнение контрагента	закончено. Нажимаем на кнопку "Записать и закрыть"
		И Пауза 1
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Demo SRL (Контрагенты)' в течение 20 секунд
	
	*Мы рассмотрели вариант заполнения контрагента с видом Организация.
		И Пауза 1
		
	*Давайте рассмотрим еще один вариант с видом Частное лицо
		И Пауза 1

	*Допустим, в справочник контрагенты нужно ввести частное лицо у которого мы арендуем автомобиль
		И Пауза 1

	*Переходим в группу Поставщики
		Тогда открылось окно 'Контрагенты'
		И в таблице "Дерево" я перехожу к строке:
			| 'Наименование' |
			| 'Поставщики'   |

	*Создаем нового контрагента
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Контрагенты (создание)'		

	*Вводим наименование
		И в поле с именем 'ПолеВвода3' я ввожу текст 'Sirbu Eugeniu'
		И я перехожу к следующему реквизиту	

	*И в поле Вид контрагента выбираем - Частное лицо
		И из выпадающего списка с именем "ПолеВвода2" я выбираю точное значение 'Частное лицо'

	*Появилась новая закладка Паспортные данные.
		И Пауза 1

	*На этой закладке можно заполнить соответствующую информацию о контрагенте
		И я перехожу к закладке с именем "ПаспортныеДанные"

	*Давайте выберем тип документа как идентификационную карточку или булетин
		И я нажимаю кнопку выбора у поля с именем "ТипДокумента"
		Тогда открылось окно 'Тип документа,удостоверяющего личность'
		И в таблице "Список" я перехожу к строке:
			| 'Код' | 'Наименование'                      |
			| '1'   | 'Buletin de identitate al cetat.RM' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Контрагенты (создание) *'

	*Указываем другие паспортные данные
		И в поле с именем 'СерияПаспорта' я ввожу текст 'A'
		И в поле с именем 'НомерПаспорта' я ввожу текст '12345678'					
		И в поле с именем 'ДатаВыдачиПаспорта' я ввожу текст '01.01.2000'
		И в поле с именем 'КемВыданПаспорт' я ввожу текст 'of. 42'

	*Сохраним введенные данные контрагента и закроем карточку
		И Пауза 1
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Контрагенты (создание) *' в течение 20 секунд

	*На этом всё. 
		И Пауза 1

	*До новых встречь, -ставьте лайк, подписывайтесь на канал.
		И Пауза 1
		

