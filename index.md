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

## Авторизация в API MyTarget.
Авторизация в API через `rmytarget` осуществляется по схеме авторизации *Authorization Code Grant*, подробнее о способах авторизации можно узнать в [официальной справке API MyTarget](https://target.my.com/adv/api-marketing/doc/authorization).

Пройти авторизации можно с помощью функции `myTarAuth`:
```r
myTarAuth(login = "my_test_client")
```

Далее в рабочей директории будет создан файл хранящий учётные данные, название файла будет начинаться с указаннолого логина и далее *.mytar.Auth.RData*.

При каждом обращении к API будет проверяться скрок действия токен, если срок заканчивается менее чем через 30 минут то токен авточески будет обновлён.

На самом деле проходить авторизацию отдельно через функцию `myTargetAuth` необзательно, т.к. при запуске любой из доступных в пакете функций процесс авторизации будет запущен автоматически.

Так же `rmytarget` поддерживает и другие схемы авторизации.  В зависимости от типа вашего аккаунта вам необходимо получить токен доступа согласно типу вашего аккаунта в MyTarget. Пройти авторизацию для обычного клиентского аккаунта так ж можно по сехеме Client Credentials Grant для обычного рекламодателя и для агентства.

Получение токена для обычного рекламного аккаунта.
```r
myTargetAuth <- myTarAuth(grant_type = "client_credentials",
                          client_id = "XXXXXXXXXX",
                          client_secret = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")		
```

Аргументы:
grant_type - Тип вашего аккаунта, в данном случае обычный клиентский аккаунт.
client_id - ID выдаётся вам при подтверждение доступа к API MyTarget.
client_secret - Выдаётся вам при подтверждение доступа к API MyTarget вместе с Client ID.

Получение токена для агентского аккаунта.
```r
myTargetAuth <- myTarAuth(grant_type = "agency_client_credentials",
                          client_id = "XXXXXXXXXX",
                          client_secret = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                          agency_client_name = "xxxxxxxxx@agency_client")
```

Вариант grant_type=agency_client_credentials не является стандартным для OAuth2. Он реализован для того, чтобы агентства могли создавать access-токены для своих клиентов напрямую. Помимо параметров client_id, client_secret нужно передавать agency_client_name.
Для получения информации по агентскому аккаунту, например поучить список клиентов агентсва необходимо следовать первой описанной схеме с grant_type = "client_credentials" и получить токен агентского аккаунта.

##Обновление токена доступа
При авторизации по схеме Authorization Code Grant, которая установлена в `rmytarget` по умолчанию, обновлять токены вам не потребуются, во первых потому, что вы получаете бессрочный токен, а во вторых при работе по этой схеме пакет при необходимости сам будет обновлять токеню

При работе со схемамы авторизации Client Credentials Grant и Agency Credentials Grant. Каждый полученный access-токен является действительным в течение суток. На это указывает свойство expires_in в ответе на запрос access-токена.
Для обновления токета в пакете rmytarget есть функция `myTarRefreshToken`

```r
myTargetAuth <- myTarRefreshToken(old_auth = myTargetAuth,
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

`myTargetClients <- myTarGetClientList(myTargetAuth)`

Аргументы функции:
auth - Объект R с авторизационными данными, полученный с помощью функции myTarAuth


Более подробную информацию по списку клиентов можно получить по [ссылке](https://target.my.com/doc/api/detailed/#resource_agency_clients)


## Получение списка рекламных кампаний.

Функция доступна для рекламных аккаунтов в которых есть рекламные кампании, для того что бы получить список рекламных кампаний клиента агентства вам необходимо получить для этого клиента токен, указав имя клента в аргументе agency_client_name функции myTarAuth.

`myTargetCampaign <- myTarGetCampaignList(myTargetAuth)`

Аргументы функции:
auth - Объект R с авторизационными данными, полученный с помощью функции myTarAuth

Более полная информация находится в официальной документации к API по [ссылке](https://target.my.com/doc/api/detailed/#resource_campaigns)

## Получение общей статистики по всем рекламным кампаниям аккаунта.
Функция доступна для рекламных аккаунтов в которых есть рекламные кампании.

```r
myTargetSummary <- myTarGetTotalStats(date_from = "2016-08-01",
                                      date_to = "2016-08-10",
                                      auth = myTargetAuth)
```
Функция возвращает data frame со статистикой по рекламным кампаниям в разрезе дат.

Структура полученного data frame.
<table>
    <tr>
        <td><center>Поле</center></td><td><center>Тип данных</center></td><td><center>Описание</center></td>
    </tr>
    <tr>
        <td><center>Date</center></td><td><center>Date</center></td><td><center>Дата</center></td>
    </tr>
    <tr>
        <td><center>CampaignName</center></td><td><center>Character</center></td><td><center>Название рекламной кампании</center></td>
    </tr>
    <tr>
        <td><center>CampaignID</center></td><td><center>Character</center></td><td><center>ID рекламной кампании</center></td>
    </tr>
    <tr>    
        <td><center>Reach</center></td><td><center>integer</center></td><td><center>Охват, количество уникальных пользователей которым были показаны объявления за всё время ведения рекламной кампании</center></td>
    </tr>
     <tr>
        <td><center>CTR</center></td><td><center>Numeric</center></td><td><center>Кликабельность объявлений</center></td>
    </tr>
    <tr>
        <td><center>Cost</center></td><td><center>Numeric</center></td><td><center>Сумма списаний по рекламной кампании в рублях</center></td>
    </tr>
    <tr>
        <td><center>Impressions</center></td><td><center>integer</center></td><td><center>Количество показов</center></td>
    </tr>
    <tr>
        <td><center>Clicks</center></td><td><center>integer</center></td><td><center>Количество кликов</center></td>
    </tr>
    <tr>
        <td><center>UniquesIncrement</center></td><td><center>integer</center></td><td><center>Прирост новых уникальных пользователей увидивших объявления впервые</center></td>
    </tr>
</table> 

---

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
