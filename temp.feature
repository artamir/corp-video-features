﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: <описание сценария>
	//Затем клик на картинку "PKOPodrazdelKassa"	со смещением "0" "0"
	//Затем клик на картинку "PKOPodrazdelKassa"	со смещением "100" "0"
	//Затем клик на картинку "PKOPodrazdelKassa"	со смещением "0" "0"
	//Затем клик на картинку "PKOPodrazdelKassa"	со смещением "0" "100"
	//Затем клик на картинку "PKOPodrazdelKassa"	со смещением "0" "0"
	И Пауза 3
	И Я показываю подсказку 'Пункт "Приходный кассовый ордер"' у картинки "PKO" в браузере
	//И я устанавливаю настройку Vanessa Automation "ПорогПоискаКартинки" "0.9"		
	Затем клик на картинку "PKOPodrazdelKassa"	со смещением "0" "-20"
	//Затем клик на картинку "PKOPodrazdelKassa"	со смещением "0" "-20"
	И Пауза 5
	