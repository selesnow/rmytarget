<p align="center">
<a href="https://selesnow.github.io/"><img src="https://alexeyseleznev.files.wordpress.com/2017/03/as.png" height="80"></a>
</p>

# rmytarget - пакет для работы с API MyTarget на языке R.

## Краткое описание.

Пакет rmytarget помогает получить дата фрейм со списком клиентов агентств из аккаунта MyTarget, получить список и обшие параметры рекламных кампаний по каждому из проектов, а так же получить детальную статистику по кампаниям за каждый день.

## Установка пакета rmytarget.

Установка пакета осуществляется либо из CRAN, либо из репозитория GitHub, для этого сначала требуется установить и подключить пакет devtools.

Установка из CRAN: `install.packages("rmytarget")`

Для установки dev версии пакета из GitHub необходимо предварительно установить пакет `devtools`, и с его помощью уже устанавлиать `rmytarget`:

```r
install.packages("devtools")

library(devtools)

install_github('selesnow/rmytarget')

library(rmytarget)
```

### Ссылки
1. [Документация по работе с пакетом rmytarget](https://selesnow.github.io/rmytarget/).
2. Баг репорты, предложения по доработке и улучшению функционала rmytarget оставлять [тут](https://github.com/selesnow/rmytarget/issues). 
3. [Список релизов](https://github.com/selesnow/rmytarget/releases).
4. [Группа в Вконтакте](https://vk.com/data_club).

### Автор пакета
Алексей Селезнёв
<Br>email: selesnow@gmail.com
<Br>skype: selesnow
<Br>facebook: [facebook.com/selesnow](https://facebook.com/selesnow)
<Br>linkedin: [linkedin.com/in/selesnow](https://linkedin.com/in/selesnow)
<Br>blog: [alexeyseleznev.wordpress.com](https://alexeyseleznev.wordpress.com/)
