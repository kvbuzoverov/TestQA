﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
	И я запоминаю текущее окно как "ЗаголовокОкнаПоступленияТоваров"
	И я вывожу значение переменной "ЗаголовокОкнаПоступленияТоваров"
	Когда открылось окно 'Поступление товаров и услуг * от *'
	И я нажимаю на кнопку с именем 'FormReportDocumentRegistrationsReportRegistrationsReport'
	Тогда открылось окно 'Движения документа'
	И из выпадающего списка с именем "FilterRegister" я выбираю точное значение 'R1001 Закупки'
	И я нажимаю на кнопку с именем 'GenerateReport'
	Тогда табличный документ "ResultTable" равен:
		| '$ЗаголовокОкнаПоступленияТоваров$' | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| 'Движения документа по регистрам'                          | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| 'Регистр  "R1001 Закупки"'                                 | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| ''                                                         | 'Period'              | 'Resources'  | ''      | ''                  | ''             | 'Dimensions'             | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | 'Attributes'        |
		| ''                                                         | ''                    | 'Количество' | 'Сумма' | 'Сумма без налогов' | 'Сумма скидки' | 'Организация'            | 'Структурное подразделение' | 'Вид мультивалютной аналитики' | 'Валюта' | 'Инвойс'                                                   | 'Характеристика'          | 'Ключ строки'                          | 'Отложенный расчет' |
		| ''                                                         | '21.02.2024 16:47:34' | '1'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 001 от 21.02.2024 16:47:34' | 'Услуга'                  | '0b76b3ed-76b3-441f-8614-a93de163b0be' | 'Да'                |
		| ''                                                         | '21.02.2024 16:47:34' | '1'          | '171,8' | '143,17'            | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 001 от 21.02.2024 16:47:34' | 'Услуга'                  | '0b76b3ed-76b3-441f-8614-a93de163b0be' | 'Нет'               |
		| ''                                                         | '21.02.2024 16:47:34' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 001 от 21.02.2024 16:47:34' | 'Услуга'                  | '0b76b3ed-76b3-441f-8614-a93de163b0be' | 'Нет'               |
		| ''                                                         | '21.02.2024 16:47:34' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 001 от 21.02.2024 16:47:34' | 'Услуга'                  | '0b76b3ed-76b3-441f-8614-a93de163b0be' | 'Нет'               |
		| ''                                                         | '21.02.2024 16:47:34' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 001 от 21.02.2024 16:47:34' | 'Услуга'                  | '0b76b3ed-76b3-441f-8614-a93de163b0be' | 'Нет'               |
		| ''                                                         | '21.02.2024 16:47:34' | '2'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 001 от 21.02.2024 16:47:34' | 'Товар без характеристик' | '66040195-2304-4f5f-84a7-c69f4d2ce75f' | 'Да'                |
		| ''                                                         | '21.02.2024 16:47:34' | '2'          | '171,8' | '143,17'            | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 001 от 21.02.2024 16:47:34' | 'Товар без характеристик' | '66040195-2304-4f5f-84a7-c69f4d2ce75f' | 'Нет'               |
		| ''                                                         | '21.02.2024 16:47:34' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 001 от 21.02.2024 16:47:34' | 'Товар без характеристик' | '66040195-2304-4f5f-84a7-c69f4d2ce75f' | 'Нет'               |
		| ''                                                         | '21.02.2024 16:47:34' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 001 от 21.02.2024 16:47:34' | 'Товар без характеристик' | '66040195-2304-4f5f-84a7-c69f4d2ce75f' | 'Нет'               |
		| ''                                                         | '21.02.2024 16:47:34' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 001 от 21.02.2024 16:47:34' | 'Товар без характеристик' | '66040195-2304-4f5f-84a7-c69f4d2ce75f' | 'Нет'               |
	
Сценарий: глобальные переменные
	И я закрываю все окна клиентского приложения
	И я удаляю переменную '$$СсылкаТоварБезХарактеристик$$'
	И я сохраняю навигационную ссылку текущего окна в переменную "$$СсылкаТоварБезХарактеристик$$"
	И я открываю навигационную ссылку "$$СсылкаТоварБезХарактеристик$$"
	
					
		
		
	