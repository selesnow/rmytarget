<head>
<link rel="shortcut icon" type="image/x-icon" href="as.ico">
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-114798296-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'UA-114798296-1');
</script>
 
</head>

<p align="center">
<a href="https://selesnow.github.io/"><img src="https://alexeyseleznev.files.wordpress.com/2017/03/as.png" height="80"></a>
</p>
<style type="text/css">

ul.nm_ul {
  list-style: none; /*убираем маркеры списка*/
  margin: 0; /*убираем отступы*/
  padding-left: 0; /*убираем отступы*/
  margin-top:25px; /*делаем отступ сверху*/
  background:#DCDCDC; /*добавляем фон всему меню*/
  height: 30px; /*задаем высоту*/
}
a.nm_a {
  text-decoration: none; /*убираем подчеркивание текста ссылок*/
  background:#696969; /*добавляем фон к пункту меню*/
  color:#fff; /*меняем цвет ссылок*/
  padding:0px 7px; /*добавляем отступ*/
  font-family: arial; /*меняем шрифт*/
  line-height:30px; /*ровняем меню по вертикали*/
  display: block; 
  border-right: 1px solid #677B27; /*добавляем бордюр справа*/
  -moz-transition: all 0.3s 0.01s ease; /*делаем плавный переход*/
  -o-transition: all 0.3s 0.01s ease;
  -webkit-transition: all 0.3s 0.01s ease;
}
a.nm_a:hover {
  background:#FF8C00;/*добавляем эффект при наведении*/
}
li.nm_li {
  float:left; /*Размещаем список горизонтально для реализации меню*/
  position:relative; /*задаем позицию для позиционирования*/
}
     
    /*Стили для скрытого выпадающего меню*/
    li.nm_li > ul.nm_ul {
        position:absolute;
        top:5px;
        display:none;   
    }
     
    /*Делаем скрытую часть видимой*/
    li.nm_li:hover > ul.nm_ul {
        display:block; 
        width:280px;  /*Задаем ширину выпадающего меню*/      
    }
   li.nm_li:hover > ul.nm_ul > li.nm_li {
        float:none; /*Убираем горизонтальное позиционирование*/
    }
</style>

<h2>Menu:</h2>
<center>
<ul class="nm_ul">
    <li class="nm_li"><a href="/" class="nm_a">Main</a></li>
    <li class="nm_li"><a href="/" class="nm_a">R Packages</a>
        <ul class="nm_ul">
            <li class="nm_li"><a href="/ryandexdirect" class="nm_a">ryandexdirect</a></li>
            <li class="nm_li"><a href="/rym" class="nm_a">rym</a></li>
            <li class="nm_li"><a href="/rfacebookstat" class="nm_a">rfacebookstat</a></li>
			<li class="nm_li"><a href="/rvkstat" class="nm_a">rvkstat</a></li>
			<li class="nm_li"><a href="/rmytarget" class="nm_a">rmytarget</a></li>
			<li class="nm_li"><a href="/rmixpanel" class="nm_a">rmixpanel</a></li>
			<li class="nm_li"><a href="/rGitHub" class="nm_a">rGitHub</a></li>
			<li class="nm_li"><a href="/getProxy" class="nm_a">getProxy</a></li>
        </ul>
    </li>
	<li class="nm_li"><a href="#" class="nm_a">Онлайн Книги</a>
	    <ul class="nm_ul">
            <li class="nm_li"><a href="https://r-for-marketing.netpeak.net/" class="nm_a">Язык R в Интернет Маркетинге</a></li>
            <li class="nm_li"><a href="https://netpeak.net/files/whitepapers/10-fishek-web-analitiki.pdf" class="nm_a">10 фишек Google Analytics</a></li>
        </ul>
	</li>
	<li class="nm_li"><a href="#" class="nm_a">Онлайн Курсы</a>
	    <ul class="nm_ul">
            <li class="nm_li"><a href="https://learn.needfordata.ru/r" class="nm_a">Язык R в Интернет Маркетинге</a></li>
        </ul>
    </li>
    <li class="nm_li"><a href="/library" class="nm_a">Статьи</a></li>
    <li class="nm_li"><a href="https://alexeyseleznev.wordpress.com/" class="nm_a">Блог</a></li>
    <li class="nm_li"><a href="/news" class="nm_a">Новости</a></li>
    <li class="nm_li"><a href="/publications" class="nm_a">Архив</a></li>
</ul>
</center>
<Br>
<h2>Search:</h2>
<script>
  (function() {
    var cx = '002735389418227325972:fdikniadyig';
    var gcse = document.createElement('script');
    gcse.type = 'text/javascript';
    gcse.async = true;
    gcse.src = 'https://cse.google.com/cse.js?cx=' + cx;
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(gcse, s);
  })();
</script>
<gcse:search></gcse:search>
<Br>

# rmytarget - пакет для работы с API MyTarget на языке R.
## Ссылки
* [Документация](https://selesnow.github.io/rmytarget/)
* [Отчёт об ошибках и доработках](https://github.com/selesnow/rmytarget/issues)
* [Список релизов](https://github.com/selesnow/rmytarget/releases)
* [Группа в Вконтакте](https://vk.com/data_club)
* [RDocumentation](https://www.rdocumentation.org/packages/rmytarget/)

## CRAN
[![Rdoc](http://www.rdocumentation.org/badges/version/rmytarget)](http://www.rdocumentation.org/packages/rmytarget)

## Содержание README:

* [Установка пакета rmytarget](https://github.com/selesnow/rmytarget#Краткое-описание)
- [Пример кода для получения данных из API MyTarget с использованием rmytarget](#пример-кода-для-загрузки-данных-из-api-mytarget)
- [Авторизация в API MyTarget](https://github.com/selesnow/rmytarget#Авторизация-в-api-mytarget)
- [Обновление токена доступа после истечение срока действия](https://github.com/selesnow/rmytarget/blob/master/README.md#Обновление-токена-доступа)
- [Получение списка клиентов для агентского аккаунта](https://github.com/selesnow/rmytarget#Получение-списка-клиентов-для-агентского-аккаунта)
- [Получение списка рекламных кампаний](https://github.com/selesnow/rmytarget#Получение-списка-рекламных-кампаний)
- [Получение общей статистики по всем рекламным кампаниям аккаунта](https://github.com/selesnow/rmytarget#Получение-общей-статистики-по-всем-рекламным-кампаниям-аккаунта)

## Краткое описание.

Пакет rmytarget помогает получить дата фрейм со списком клиентов агентств из аккаунта MyTarget, получить список и обшие параметры рекламных кампаний по каждому из проектов, а так же получить детальную статистику по кампаниям за каждый день.


## Установка пакета rmytarget.

Установка пакета осуществляется либо из CRAN, либо из репозитория GitHub, для этого сначала требуется установить и подключить пакет devtools.

Установка из CRAN: `install.packages("rmytarget")`

Для установка dev версии из GitHub предварительно вам необходимо установить пакет `devtools`, и уже с его помощью устанавлиать `rmytarget`:

```r
install.packages("devtools")
library(devtools)

# После чего можно устанавливать пакет rmytarget.
install_github('selesnow/rmytarget')
library(rmytarget)
```

## Пример кода для загрузки данных из API MyTarget

### Работа с обычным рекламным аккаунтом, даже если вы имете к нему доступ через агентский аккаунт
```r
library(rmytarget)

# ================
# пример работы с клиентским аккаунтом
# авторизация
# если вы работаете через агенский аккаунт то в браузере выберите пункт 
# предоставить доступ к аккаунту клиента или менеджера

myTarAuth(login = "seleznev", token_path = "tokens")

# загрузка списка рекламных кампаний и объявлений
campaing <- myTarGetCampaignList(login = "seleznev", token_path = "tokens")
ads      <- myTarGetAdList(login = "seleznev", token_path = "tokens")

# загрузка статистики по рекламным кампанийм
camp_data    <- myTarGetStats(date_from   = Sys.Date() - 7,
                              date_to     = Sys.Date(),
                              object_type = "campaigns",
                              object_id   = campaing$id,
                              stat_type   = "day",
                              login       = "seleznev", 
                              token_path  = "tokens")

# загрузка списка метрик входящих в группы "base", "tps", "viral" по объявлениям
custom_data <- myTarGetStats(date_from   = Sys.Date() - 7,
                             date_to     = Sys.Date(),
                             object_type = "banners",
                             metrics     = c("base", "tps", "viral"),
                             stat_type   = "day",
                             login       = "seleznev", 
                             token_path  = "tokens")

# загрузка всех возможных метрик с группировкой по рекламным кампаниям
all_data <- myTarGetStats(date_from   = Sys.Date() - 7,
                          date_to     = Sys.Date(),
                          object_type = "campaigns",
                          metrics     = "all",
                          login       = "seleznev", 
                          token_path  = "tokens")
```

### Работа с агентским аккаунтом
```r
library(rmytarget)

# авторизация
# в браузере необходимо выбрать пункт предоставить доступ к аккаунту "логин агенсткого аккаунта"
myTarAuth(login = "agency", token_path = "tokens")

# загрузка списка клиентов
clients <- myTarGetClientList(login = "agency",
                              token_path = "tokens")

# загрузка статистики с группировкой по клиентам агентского аккаунта
client_stat <-  myTarGetStats(date_from   = Sys.Date() - 7,
                              date_to     = Sys.Date(),
                              object_id   = clients$id,
                              object_type = "users",
                              metrics     = "all",
                              login       = "agency",
			      token_path = "tokens")
```

## Авторизация в API MyTarget.
Авторизация в API через `rmytarget` осуществляется по схеме авторизации *Authorization Code Grant*, подробнее о способах авторизации можно узнать в [официальной справке API MyTarget](https://target.my.com/adv/api-marketing/doc/authorization).

Пройти авторизации можно с помощью функции `myTarAuth`:
```r
myTarAuth(login = "my_test_client")
```

После запуска функции откроется окно браузера, в котором вам необходимо подтвердить разрешение на оступ к вашим данным для пакета rmytarget. Если вы работаете через **агентский** аккаунт, то в открывшемся окне у вас будет возможность выбора, сгенерировать токен для вашего агентского акккаунта, или же получить токен для работы с одним прикреплённых к нему клиентских аккаунтов.

Для работы с агентским аккаунтом выберите верхний пункт.

![генерация токена для агентского аккаунта](https://img.netpeak.ua/alsey/154523525673_kiss_31kb.png)

В таком случае вы сможете запрашивать список киентов агентского аккаунта, или получить статистику сгруппированную по клиетским аккаунтам. Но такой токен не позволяет запрашивать например список объявлений, или рекламных кампаний из подчинённых, клиентских аккаунтов.

Если же вам необходимо получить какие либо данные из подчинённого клиентского аккаунта то при авторизации через браузер выберите пункт "Предоставить доступ к аккаунту клиента или менеджера".

![Генерация токена для работы с клеинтским аккаунтом](https://img.netpeak.ua/alsey/154523530679_kiss_35kb.png)

Далее в рабочей директории будет создан файл хранящий учётные данные, название файла будет начинаться с указаннолого логина и далее *.mytar.Auth.RData*.

При каждом обращении к API будет проверяться скрок действия токен, если срок заканчивается менее чем через 30 минут то токен авточески будет обновлён.

На самом деле проходить авторизацию отдельно через функцию `myTargetAuth` необзательно, т.к. при запуске любой из доступных в пакете функций процесс авторизации будет запущен автоматически.

Так же `rmytarget` поддерживает и другие схемы авторизации.  В зависимости от типа вашего аккаунта вам необходимо получить токен доступа согласно типу вашего аккаунта в MyTarget. Пройти авторизацию для обычного клиентского аккаунта так ж можно по сехеме Client Credentials Grant для обычного рекламодателя и для агентства.

Получение токена для обычного рекламного аккаунта.
```r
myTargetAuth <- myTarAuth(grant_type = "client_credentials",
                          client_id = "XXXXXXXXXX",
                          client_secret = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
			  code_grant = FALSE)		
```

Аргументы:
grant_type - Тип вашего аккаунта, в данном случае обычный клиентский аккаунт.
client_id - ID выдаётся вам при подтверждение доступа к API MyTarget.
client_secret - Выдаётся вам при подтверждение доступа к API MyTarget вместе с Client ID.

Получение токена для агентского аккаунта.
```r
myTarGetAuth <- myTarAuth(grant_type = "agency_client_credentials",
                          client_id = "XXXXXXXXXX",
                          client_secret = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                          agency_client_name = "xxxxxxxxx@agency_client",
			  code_grant = FALSE)
```

Вариант grant_type=agency_client_credentials не является стандартным для OAuth2. Он реализован для того, чтобы агентства могли создавать access-токены для своих клиентов напрямую. Помимо параметров client_id, client_secret нужно передавать agency_client_name.
Для получения информации по агентскому аккаунту, например поучить список клиентов агентсва необходимо следовать первой описанной схеме с grant_type = "client_credentials" и получить токен агентского аккаунта.

##Обновление токена доступа
При авторизации по схеме Authorization Code Grant, которая установлена в `rmytarget` по умолчанию, обновлять токены вам не потребуются, во первых потому, что вы получаете бессрочный токен, а во вторых при работе по этой схеме пакет при необходимости сам будет обновлять токеню

При работе со схемамы авторизации Client Credentials Grant и Agency Credentials Grant. Каждый полученный access-токен является действительным в течение суток. На это указывает свойство expires_in в ответе на запрос access-токена.
Для обновления токета в пакете rmytarget есть функция `myTarRefreshToken`

```r
myTarGetAuth <- myTarRefreshToken(old_auth = myTargetAuth,
                                  client_id = "xxxxxxxxx",
                                  client_secret = "xxxxxxxxxxxxxxxxxxxxxxxxxxx...")
```
Аргументы функции:
old_auth - R объект с учётными данными полученный с помощью функции myTarAuth.
client_id - ID выдаётся вам при подтверждение доступа к API MyTarget.
client_secret - Выдаётся вам при подтверждение доступа к API MyTarget вместе с Client ID.

Подробную информацию о схеме аутинтификации в API вы можете получить по [ссылке](https://target.my.com/adv/api-marketing/doc/authorization).

## Получение списка клиентов для агентского аккаунта.
Эта функция доступна только для агентских аккаунтов, и соответсвенно для токенов выданных агентским аккаунтам.

`myTarGetClients <- myTarGetClientList(login = "agency_login")`

Аргументы функции:
auth - Необязательный аргумент, объект R с авторизационными данными, полученный с помощью функции myTarAuth
login - Логин, в принципе используется только для работы с файлом в котором храняться учётные данные
token_path - Путь к папке, в котором изначально будет сохранеён файл для хранения учётных данных, а в дальнейшем для загрузки учётных данных, по умолчанию рабочая директория

Более подробную информацию по списку клиентов можно получить по [ссылке](https://target.my.com/doc/api/detailed/#resource_agency_clients)


## Получение списка рекламных кампаний.

Функция доступна для рекламных аккаунтов в которых есть рекламные кампании, для того что бы получить список рекламных кампаний клиента агентства вам необходимо получить для этого клиента токен, указав имя клента в аргументе agency_client_name функции myTarAuth.

`Campaign <- myTarGetCampaignList(login = "your_login")`

Аргументы функции:
auth - Необязательный аргумент, объект R с авторизационными данными, полученный с помощью функции myTarAuth
login - Логин, в принципе используется только для работы с файлом в котором храняться учётные данные
token_path - Путь к папке, в котором изначально будет сохранеён файл для хранения учётных данных, а в дальнейшем для загрузки учётных данных, по умолчанию рабочая директория
request_speed - Необязательный аргумент, служит для регулировки паузы между запросами к API, что бы избежать ошибки `Too Many Requests (RFC 6585) (HTTP 429)`, т.е. при работе с большим аккаунтом может потребоваться увеличить паузы между запросами, если столкнулись с такой ошибкой установите значение "slow", при работе с аккаунтами в которых небольшое количетсво рекламных кампаний можно устанавливать значение "fast".

Более полная информация находится в официальной документации к API по [ссылке](https://target.my.com/doc/api/detailed/#resource_campaigns)


## Получение списка объявлений.

Для загрузки списка объявлений используйте функцию `myTarGetAdList`.

`Ads <- myTarGetAdList(login = "your_login")`

Аргументы функции:
auth - Необязательный аргумент, объект R с авторизационными данными, полученный с помощью функции myTarAuth
login - Логин, в принципе используется только для работы с файлом в котором храняться учётные данные
token_path - Путь к папке, в котором изначально будет сохранеён файл для хранения учётных данных, а в дальнейшем для загрузки учётных данных, по умолчанию рабочая директория
request_speed - Необязательный аргумент, служит для регулировки паузы между запросами к API, что бы избежать ошибки `Too Many Requests (RFC 6585) (HTTP 429)`, т.е. при работе с большим аккаунтом может потребоваться увеличить паузы между запросами, если столкнулись с такой ошибкой установите значение "slow", при работе с аккаунтами в которых небольшое количетсво рекламных кампаний можно устанавливать значение "fast".

## Получение статистики по рекламным аккаунтам и объявлениям.
Для загрузки статистики необходимо использовать функцию `myTarGetStats`. Примеры её использования приведены в начале документации.

Аргументы функции:
- date_from - Дата начала отчётного периода
- date_to - Дата звершения отчётоного периода
- object_type - Тип объекта по которому будут группироваться полученные данные, возможные значения banners, campaings и users. Группировка users доступна только при работе с агентскими аккаунтами, и предназначена для загрузки статистики в разрезе клиентов агентского аккаунта. 
- object_id - Необязательный аргумент, ID объектов по которым вы хотите получить статистику, зависит от значения установленного в аргумент object_type. По умолчанию запрашивается статистика по всем объектам указанного в аргументе object_type типа.
- stat_type - Временная группировка данных, по умолчанию "day", так же можно загружать статистику за весь период указав значение "summary".
- metrics - Вектор, содержащий названия групп метрик которые вы хотите получить, по умолчанию принимает значение base, но так же вам доступны такие группы: base, events, video, viral, uniques, tps. Для загрузки всех метрик укажите значение "all". Подробное описание метрик входящих в каждую группу доступно по [ссылке](https://target.my.com/adv/api-marketing/doc/stat-v2), или чуть ниже в этой документации.
- auth - Необяхательный аргумент, объект который можно получить с помощью функции myTarAuth.
- token_path - Путь к папке в которой хранится файл с учётными данными, файл создаётся при первом обращении к API MyTarget в случае запуска любой из функций пакета, далее учётые данные подтягиваются по значению аргумента login. **Будьтк внимательны, т.к. API MyTagrteg позволяет запрашивать не более 5 токен для одного аккаунта**.

### Группы метрик которые можно задавать в аргументе metrics:
<details><summary><b>base</b> - базовые метрики:</summary>

<ul>
<li>shows - количество показов;</li>
<li>clicks - количество кликов;</li>
<li>goals - количество достижений целей (цели Top@Mail.ru для сайтов и установок для мобильных приложений);</li>
<li>spent - списания;</li>
<li>cpm - среднее списание за 1000 просмотров;</li>
<li>cpc - среднее списание за 1 клик;</li>
<li>cpa - среднее списание за достижение 1 цели;</li>
<li>ctr - процентное отношение количества кликов к количеству просмотров;</li>
<li>cr - процентное отношение количества достижений целей к количеству кликов.</li>
</ul>
	
</details>

<details><summary><b>events</b> - метрики для рекламируемых сообщений в ленте социальных сетей:</summary>

<ul>
<li>opening_app - количество открытий рекламируемого приложения соцсетей;</li>
<li>opening_post - количество открытий рекламируемого сообщения в ленте соцсетей;</li>
<li>moving_into_group - количество переходов на страницу группы из рекламируемого сообщения;</li>
<li>clicks_on_external_url - количество кликов по внешней ссылке в рекламируемом сообщении;</li>
<li>launching_video - количество запусков видео в рекламируемом сообщении;</li>
<li>comments - количество оставленных комментариев в рекламируемом сообщении;</li>
<li>joinings - количество присоединений к группе через рекламируемое сообщение;</li>
<li>likes - количество лайков рекламируемого сообщения;</li>
<li>shares - количество действий "Поделиться" для рекламируемого сообщения;</li>
<li>votings - количество действий голосования в рекламируемом сообщении.</li>
</ul>

</details>

<details><summary><b>uniques</b> - метрики по количеству уникальных пользователей:</summary>

<ul>
<li>opening_app - количество открытий рекламируемого приложения соцсетей;</li>
<li>opening_post - количество открытий рекламируемого сообщения в ленте соцсетей;</li>
<li>moving_into_group - количество переходов на страницу группы из рекламируемого сообщения;</li>
<li>clicks_on_external_url - количество кликов по внешней ссылке в рекламируемом сообщении;</li>
<li>launching_video - количество запусков видео в рекламируемом сообщении;</li>
<li>comments - количество оставленных комментариев в рекламируемом сообщении;</li>
<li>joinings - количество присоединений к группе через рекламируемое сообщение;</li>
<li>likes - количество лайков рекламируемого сообщения;</li>
<li>shares - количество действий "Поделиться" для рекламируемого сообщения;</li>
<li>votings - количество действий голосования в рекламируемом сообщении.</li>
</ul>

</details>

<details><summary><b>video</b> - метрики для видеорекламы:</summary>

<ul>
<li>started - количество стартов воспроизведения видео;</li>
<li>paused - количество пауз воспроизведения видео;</li>
<li>resumed_after_pause - количество воспроизведения видео после паузы;</li>
<li>fullscreen_on - количество включений полноэкранного режима воспроизведения видео;</li>
<li>fullscreen_off - количество выключений полноэкранного режима воспроизведения видео;</li>
<li>sound_turned_off - количество выключений звука видео;</li>
<li>sound_turned_on - количество включений звука видео;</li>
<li>viewed_10_seconds - количество просмотров первых 10 секунд видео;</li>
<li>viewed_25_percent - количество просмотров первых 25% длительности видео;</li>
<li>viewed_50_percent - количество просмотров первых 50% длительности видео;</li>
<li>viewed_75_percent - количество просмотров первых 75% длительности видео;</li>
<li>viewed_100_percent - количество просмотров 100% длительности видео;</li>
<li>viewed_10_seconds_rate - процент просмотров с достижением первых 10 секунд видео;</li>
<li>viewed_25_percent_rate - процент просмотров с достижением первых 25% длительности видео;</li>
<li>viewed_50_percent_rate - процент просмотров с достижением первых 50% длительности видео;</li>
<li>viewed_75_percent_rate - процент просмотров с достижением первых 75% длительности видео;</li>
<li>viewed_100_percent_rate - процент просмотров с достижением 100% длительности видео;</li>
<li>depth_of_view - средняя глубина просмотра видео (в процентах);</li>
<li>view_10_seconds_cost - средняя стоимость просмотра первых 10 секунд видео;</li>
<li>viewed_25_percent_cost - средняя стоимость просмотра первых 25% длительности видео;</li>
<li>viewed_50_percent_cost - средняя стоимость просмотра первых 50% длительности видео;</li>
<li>viewed_75_percent_cost - средняя стоимость просмотра первых 75% длительности видео;</li>
<li>viewed_100_percent_cost - средняя стоимость просмотра 100% длительности видео.</li>
</ul>

</details>

<details><summary><b>viral</b> - метрики виральных событий:</summary>

<ul>
<li>impressions - количество показов расшаренного рекламного сообщения в социальных сетях;</li>
<li>reach - количество уникальных пользователей, увидивших расшаренное рекламное сообщение за указанный период;</li>
<li>total - общее количество уникальных пользователей, увидевших расшаренное рекламное сообщение за всё время;</li>
<li>increment - количество новых уникальных пользователей, увидевших расшаренное рекламное сообщение за указанный период;</li>
<li>frequency - средняя частота показа расшаренного рекламного сообщения одному уникальному пользователю;</li>
<li>opening_app - количество открытий рекламируемого приложения из расшаренного рекламного сообщения;</li>
<li>opening_post - количество открытий расшаренного рекламируемого сообщения в ленте соцсетей;</li>
<li>moving_into_group - количество переходов на страницу группы из расшаренного рекламируемого сообщения;</li>
<li>clicks_on_external_url - количество кликов по внешней ссылке в расшаренном рекламируемом сообщении;</li>
<li>launching_video - количество запусков видео в расшаренном рекламируемом сообщении;</li>
<li>comments - количество оставленных комментариев в расшаренном рекламируемом сообщении;</li>
<li>joinings - количество присоединений к группе через расшаренное рекламируемое сообщение;</li>
<li>likes - количество лайков расшаренного рекламируемого сообщения;</li>
<li>shares - количество действий "Поделиться" для расшаренного рекламируемого сообщения;</li>
<li>votings - количество действий голосования в расшаренном рекламируемом сообщении.</li>
</ul>

</details>

<details><summary><b>carousel</b> - статистика по отдельным слайдам рекламной карусели (N - от 1 до количества слайдов):</summary>

<ul>
<li>slide_N_shows - количество показов слайда N;</li>
<li>slide_N_clicks - количество кликов по слайду N;</li>
<li>slide_N_ctr - процентное отношение количества кликов к количеству просмотров по слайду N;</li>
</ul>

</details>

<details><summary><b>tps</b> - статистика по дополнительным списаниям:</summary>

<ul>
<li>tps - дополнительные списания за использование сервиса moat;</li>
<li>tpd - дополнительные списания за использование сторонних данных (от dmp). </li>
</ul>

</details>

<details><summary><b>moat</b> - статистика по данным сервиса moat:</summary>

<ul>
<li>impressions - количество показов;</li>
<li>in_view - количество видимых показов;</li>
<li>never_focused - количество показов в неактивной вкладке;</li>
<li>never_visible - количество показов вне зоны видимости;</li>
<li>never_50_perc_visible - количество показов с зоной видимости объявления менее 50%;</li>
<li>never_1_sec_visible - количество показов с длительностью видимости менее 1 секунды;</li>
<li>human_impressions - количество верифицированных показов;</li>
<li>impressions_analyzed - количество анализируемых показов;</li>
<li>in_view_percent - процент видимых показов;</li>
<li>human_and_viewable_perc - процент верифицированных показов;</li>
<li>never_focused_percent - процент показов в неактивной вкладке;</li>
<li>never_visible_percent - процент показов вне зоны видимости;</li>
<li>never_50_perc_visible_percent - процент оказов с зоной видимости объявления менее 50%;</li>
<li>never_1_sec_visible_percent - процент показов с длительностью видимости менее 1 секунды;</li>
<li>in_view_diff_percent - разница в количестве видимых показов;</li>
<li>active_in_view_time - среднее время нахождения объявления в зоне видимости;</li>
<li>attention_quality - уровень вовленчения;</li>
</ul>

</details>

## *Автор пакета: Алексей Селезнёв, Head of Analytics Dept. at Netpeak*
<table>
    <tr>
      <td>
      <img align="right" src="https://lh3.googleusercontent.com/R-0jgJSxIIhpag2L6YCIhJVIcIWx6-Jt5UCTRJjWzJewo47u2QBnik5CRF2dNB79jmsN_BFRjVOAYfvCqFcn3UNS_thGbbxF-99c9lwBWWlFI7JCWE43K5Yk9HnIW8i8YpTDx3l28IuYswaI-qc9QosHT1lPCsVilTfXTyV2empF4S74daOJ6x5QHYRWumT_2MhUS0hPqUsKVtOoveqDnGf3cF_VsN-RfOAwG9uCeGOgNRgv_fhSr41rw4LBND4gf05nO8zMp4TZMrrcUjKvvx6qNgYDor5LFOHiRmfKISYRVkWYe4wLyGO1FgkgTDjg0300lcur2t3txVwZUgROLZdaxOLx4owa8Rc8B8VKwd3vHxjov_aVfNPT4xf9jSFBBEOI-mfYpa55ejKDw-rqTQ6miFRFWpp_hjrk9KbGyB-Z6iZvYL-2dZ6mzgpUfs2I0tEAGsV07yTzboJ0RNCByC2-U-ZVjWdp2_9Au3FFoUcdQUAmPYOVqOv4r3oLbkkJKLj2A5jp7vf4IAoExLIfJuqEf7XN7fFcv4geib029qJjBt28wnqSO6TKEwB2fesR3uPHvGB6_6NHD70UDH-aCRCK4UBeoajtU0Y8Ks8Vwxo0oZBwmoEu8gudTFBF6mDT7GjLoGLDeNxE-TG7OtWUdxsJk7yzXGW3hE-VxsMD9g=s351-no?w=100" height="150">
      </td>
      <td>
        <b>Контакты</b>
        <br>email: selesnow@gmail.com
        <br>skype: selesnow
        <br>telegram: @AlexeySeleznev
      </td>
    </tr>
    <tr>
     <table>
    <tr>
      <td>
        <a href="https://facebook.com/selesnow/">Facebook</a>
      </td>
      <td>
        <a href="https://vk.com/selesnow">Vkontakte</a>
      </td>
      <td>
        <a href="https://linkedin.com/in/selesnow">Linkedin</a>
      </td>
      <td>
        <a href="https://alexeyseleznev.wordpress.com/">Blog</a>
      </td>
      <td>
        <a href="https://github.com/selesnow/">GitHub</a>
      </td>
      <td>
        <a href="https://stepik.org/users/792428">Stepic</a>
      </td>
    </tr>
</table>
    </tr>
</table>
