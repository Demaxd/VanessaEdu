﻿#language: ru

@tree

Функционал: проверка добавления картинок в справочник Номенклатура

Как Менеджер я хочу
добавить картинки к номенклатуре
чтобы можно было посмотреть, как выглядит товар 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _0601 подготовительный (добавление картинок)
	Когда экспорт основных данных
	Когда экспорт настроек картинок

Сценарий: _0602 проверка добавления картинки
	И я делаю клик по элементу клиента тестирования '+' 'UIA_EditControlTypeId (0xC354)' UI Automation
