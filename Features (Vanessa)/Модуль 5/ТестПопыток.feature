﻿#language: ru

@tree


Функционал: Тест попыток

Как Тестировщик я хочу
проверить работу попыток
чтобы улучить свои навыки   

Переменные:

Сценарий: Тест исключений
	И в поле с именем 'ПроверитьГод' я ввожу текст "2024"
	И Я запоминаю в переменную "Соединение" значение "Нет"
	И я делаю 2 раз
		Попытка
			И я нажимаю на кнопку с именем 'ФормаПолучитьДанные'
			И элемент формы с именем 'ГодВысокосный' стал равен "Да"
			И Я запоминаю в переменную "Соединение" значение "Да"
			Тогда я прерываю цикл
		Исключение
			И Пауза 10
	Если переменная "Соединение" имеет значение "Нет" Тогда
		Затем я останавливаю выполнение сценария "Skipped"
	И В командном интерфейсе я выбираю "Склад" "Склады"
	
*Пробуем подлючить другой сеанс 
	Попытка
		Когда Я подключаю клиент тестирования "ИмяКлиента1Тестирования" из таблицы клиентов тестирования
	Исключение	
		И я регистрирую ошибку "Описание ошибки 1" по данным исключения
	
	И Пауза 1
	
	Попытка
		Когда Я подключаю клиент тестирования "ИмяКлиента2Тестирования" из таблицы клиентов тестирования
	Исключение	
		И я регистрирую ошибку "Описание ошибки 2" по данным исключения
				
			