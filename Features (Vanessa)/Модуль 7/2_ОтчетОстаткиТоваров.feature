﻿#language: ru

@tree

Функционал: Проверка отчета Остатки товаров

Как Тестировищик я хочу
проверить формирование отчета Остатки товаров
чтобы улучшить свои навыки     

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: подготовка данных
	Когда загрузка поступлений товаров

Сценарий: проведение документа
	И я выполняю код встроенного языка на сервере
	"""bsl
		Документы.ПриходТовара.НайтиПоНомеру("000000051").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);
	"""

Сценарий: проверка отчета Остатки товаров
	Дано Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах?vrn=Основной"
	Когда открылось окно "Остатки товаров"
	И я нажимаю кнопку выбора у поля с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Значение'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование" |
		| "000000040" | "Sony К3456P"  |
	И в таблице 'Список' я выбираю текущую строку
	И я устанавливаю флаг с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Использование'
	Тогда открылось окно "Остатки товаров"
	И из выпадающего списка с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Значение' я выбираю точное значение "Средний"
	И я устанавливаю флаг с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент2Использование'
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И я жду когда в табличном документе "Результат" заполнится ячейка "R6C2" в течение 20 секунд
	 // не конкретизируем число, т.к. может меняться при оформлении реализациий/поступлений в дальнейшем	
	И в табличном документе "Результат" ячейка с адресом "R6C3" равна "**,**" по шаблону