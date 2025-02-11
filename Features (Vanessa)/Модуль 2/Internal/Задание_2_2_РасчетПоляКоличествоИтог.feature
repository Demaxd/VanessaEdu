﻿#language: ru

@tree

Функционал: Проверка заполнения итогового количества заказа

Как Менеджер по продажам я хочу
рассчитать итоговое количество позиций в заказе 
чтобы увидеть итоговое число товаров к отгрузке   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения
	И заполнение шапки заказа

Сценарий: Проверка заполнения итогового количества заказа
	
* Заполнение таблицы товаров
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' из выпадающего списка с именем 'ТоварыТовар' я выбираю точное значение "Босоножки"
	И я перехожу к следующему реквизиту
	И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "3 000,00"
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "2"
	И в таблице 'Товары' я завершаю редактирование строки
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' из выпадающего списка с именем 'ТоварыТовар' я выбираю точное значение "Сапоги"
	И я перехожу к следующему реквизиту
	И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "2 000,00"
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "3"
	И в таблице 'Товары' я завершаю редактирование строки
	Тогда таблица 'Товары' стала равной:
		| 'Товар'     | 'Цена'     | 'Количество' | 'Сумма'    |
		| 'Босоножки' | '3 000,00' | '2'          | '6 000,00' |
		| 'Сапоги'    | '2 000,00' | '3'          | '6 000,00' |
	
* Проверка итоговых полей
	И элемент формы с именем 'ТоварыИтогКоличество' стал равен "5"
	И элемент формы с именем 'ТоварыИтогСумма' стал равен "12 000"

* Проверка записи документа
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я запоминаю значение поля "Номер" как "Номер"
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "Заказ * от *" в течение 20 секунд
	Тогда таблица 'Список' содержит строки:
		| 'Номер'   |
		| '$Номер$' |

