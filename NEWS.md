# rmytarget 2.1.3

## Документация
* В пакет добавлены две виньетки:
	* rmytarget-auth - Авторизация в MyTarget
	* rmytarget-intro - Введение в работу с пакетом rmytarget
* В пакет добавлен русскоязычный README

## Исправление ошибок
* Исправлена ошибка в функции `myTarGetStats`, которая возникала при запросе статистики в целом за выбранный период без разбивки по датам, т.е. при использовании `stat_type = "summary"`.