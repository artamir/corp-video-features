#language: ru

Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала> 
Чтобы <бизнес-эффект> 

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: <описание сценария> 
          И пауза 1
          * что бы пройти к документу 'Счет на оплату',в панель действия находим подсистему'Продажи'

	И В командном интерфейсе я выбираю 'Продажи' 'Расход'
	Тогда открылось окно 'Расход'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'ВидыРасходных'
	И в таблице "Список" я перехожу к строке:
		| 'Ссылка'         |
		| 'Счет на оплату' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Расход: Счет на оплату             от  * 11:07:26. ' 
	      И пауза 1 
	      * Нумерация счетов на оплату ведется автоматически
	      	И я перехожу к следующему реквизиту
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'MDL'
	      И пауза 1
	      * Выбираем валюту выбытия ТМЦ. По умолчанию проставлено молдавский лей
	Тогда открылось окно 'Расход: Счет на оплату             от  * 11:07:26.  *' 
	      И пауза 1 
	      * Проставляем дату документа  
	      *	Проставляем счет покупателя.По умолчанию 221.1 «Счета внутри страны»     
	//И из выпадающего списка с именем "СубкПокупателя1" я выбираю точное значение 'Panda SRL'
	И я нажимаю кнопку выбора у поля с именем "СубкПокупателя1"
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я перехожу к строке:
		| 'Код' | 'Наименование' | 'Фискальный код' |
		| '3'   | 'Panda SRL'    | '1002541855900'  |
	И в таблице "Список" я активизирую поле с именем "Наименование"
	И в таблице "Список" я выбираю текущую строку
	И пауза 1
	      * Если ведется аналитика в разрезе договоров,  в следующем окошке выбираем договор
	И в таблице "ТМЦ" я нажимаю на кнопку с именем 'ТМЦДобавить'
	И в таблице "ТМЦ" я активизирую поле с именем "ТМЦТМЦ1"
	И в таблице "ТМЦ" я нажимаю кнопку выбора у реквизита с именем "ТМЦТМЦ1"
	Тогда открылось окно 'Номенклатура'
	И в таблице "Список" я перехожу к строке:
		| 'Код'      | 'Наименование' | 'Остаток' | 'Себестоимость' |
		| '00000007' | 'Товары'       | '"'       | '"'             |
	И в таблице "Список" я активизирую поле с именем "Артикул"
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Список" я активизирую поле с именем "Наименование"
	И в таблице "Список" я выбираю текущую строку
//	Тогда открылось окно 'Расход: Счет на оплату             от  * 11:07:26.  *'
	И в таблице "ТМЦ" я активизирую поле с именем "ТМЦТМЦ2"
	И в таблице "ТМЦ" из выпадающего списка с именем "ТМЦТМЦ2" я выбираю точное значение 'Depozit'
	И я перехожу к следующему реквизиту
	И в таблице "ТМЦ" я нажимаю кнопку выбора у реквизита с именем "ТМЦТМЦ3"
	И в таблице "ТМЦ" я активизирую поле с именем "ТМЦКоличество"
	И в таблице "ТМЦ" в поле с именем 'ТМЦКоличество' я ввожу текст '1,000'
	И я перехожу к следующему реквизиту
	И в таблице "ТМЦ" я активизирую поле с именем "ТМЦСумЛей"
	И в таблице "ТМЦ" в поле с именем 'ТМЦСумЛей' я ввожу текст '6 500,00'
	И я перехожу к следующему реквизиту
	И в таблице "ТМЦ" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	//Тогда открылось окно 'Расход: Счет на оплату             от  * 11:07:26. '
	И я нажимаю на кнопку с именем 'ФормаПровести'
	И я нажимаю на кнопку с именем 'ФормаОбщаяКомандаПоказатьЖурналПроводок' 
	    И пауза 1  
	    *Документ не формирует проводки
	Тогда открылось окно 'Хозрасчетный'
	И Я закрываю окно 'Хозрасчетный'
	    И пауза 1
	    *Получение печатной копии документа осуществляется нажатием на кнопку "Печать"
	Тогда открылось окно 'Расход: Счет на оплату             от  * 11:07:26. '
	И я нажимаю на кнопку с именем 'ФормаДокументРасхНалоговаяНакладнаяПечатьСчетНаОплату'
	Тогда открылось окно 'Таблица'
	И Я закрываю окно 'Таблица'
	Тогда открылось окно 'Расход: Счет на оплату             от  * 11:07:26. '
	И Я закрываю окно 'Расход: Счет на оплату             от  * 11:07:26. '

