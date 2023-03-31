Экспортный сценарий

#language: ru
@ExportScenarios

@tree

Функционал: Тестирование создание заказа

Сценарий: Создание заказа проверка 
* Создание документ заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказ'
	Тогда открылось окно 'Заказ (создание)'
* Заполнение шапки документа	
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Продукты"'
* Заполнение таблицы товары
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Колбаса'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '15,00'
	И в таблице "Товары" я завершаю редактирование строки
* Проведение документа	
	И я нажимаю на кнопку с именем 'ФормаПровести'
* Проверка 
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '1'

	



Тест экспортного сценария

#language: ru

@tree

Функционал: Тест экспортного сценария

 

Сценарий: Тест сценария
И Создание заказа проверка 
