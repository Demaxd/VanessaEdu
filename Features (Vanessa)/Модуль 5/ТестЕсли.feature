﻿#language: ru

@tree

Функционал: Тест конструкции Если

Как Тестировщик я хочу
проверить работу конструкции Если
чтобы улучить свои навыки   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Тест конструкции Если 
* Элемент видимость
	Если элемент формы с именем 'Company' присутствует на форме Тогда
		И я нажимаю кнопку выбора у поля с именем 'Company'
	И я нажимаю кнопку выбора у поля 'Вид цены'	
* Макеты
	Если Табличный документ "Result" равен макету "Закупки1" Тогда
	ИначеЕсли Табличный документ "Result" равен макету "Закупки2" Тогда
	Иначе
		Тогда я вызываю исключение "Макет не совпал"
* Проверка разного окружения 
	Если это Linux Тогда
	Если это web клиент Тогда
* Стабилизация тестов
	Если появилось окно с заголовком "Соглашение (создание)" в течение 10 секунд Тогда
		И я закрываю окно "Соглашение (создание)"	
* При создании первоночальных настроек
	Если в таблице "List" нет строк Тогда
		| 'Контрагент'  |
		| 'Контрагент1' |	
		И я нажимаю на кнопку 'Создать'
* Разные				
	Если я нажимаю кнопку выбора у поля с именем 'Company' Тогда
		И я закрываю текущее окно
 