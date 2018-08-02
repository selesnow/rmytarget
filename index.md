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
 ul.menu {
  list-style: none; /*убираем маркеры списка*/
  margin: 0; /*убираем отступы*/
  padding-left: 0; /*убираем отступы*/
  margin-top:25px; /*делаем отступ сверху*/
  background:#C0C0C0; /*добавляем фон всему меню (заменив этот параметр, вы поменяете цвет всего меню)*/
  height: 40px; /*задаем высоту*/
}
a.amenu {
  text-decoration: none; /*убираем подчеркивание текста ссылок*/
  background: #C0C0C0; /*добавляем фон к пункту меню (заменив этот параметр, вы поменяете цвет всех пунктов меню)*/
  color: #000000; /*меняем цвет ссылок*/
  padding:0px 10px; /*добавляем отступ*/
  font-family: sans-serif; /*меняем шрифт*/
  font-size: 9pt;
  line-height:40px; /*ровняем меню по вертикали*/
  display: block; 
  border-right: 1px solid #808080; /*добавляем бордюр справа*/
  -moz-transition: all 0.3s 0.01s ease; /*делаем плавный переход*/
  -o-transition: all 0.3s 0.01s ease;
  -webkit-transition: all 0.3s 0.01s ease;
}
a:hover {
  background:#808080;/*добавляем эффект при наведении*/
}
li.menu {
  float:left; /*Размещаем список горизонтально для реализации меню*/
}
</style>

<h2>Menu:</h2>
<center>
<ul class="menu">
  <li class="menu"><a href="https://selesnow.github.io/ryandexdirect" class="amenu">ryandexdirect</a></li>
  <li class="menu"><a href="https://selesnow.github.io/rmytarget" class="amenu">rvkstat</a></li>
  <li class="menu"><a href="https://selesnow.github.io/rfacebookstat" class="amenu">rfacebookstat</a></li>
  <li class="menu"><a href="https://selesnow.github.io/rmytarget" class="amenu">rmytarget</a></li>
  <li class="menu"><a href="https://selesnow.github.io/rmixpanel" class="amenu">rmixpanel</a></li>
  <li class="menu"><a href="https://selesnow.github.io/rgithub" class="amenu">rGitHub</a></li>
  <li class="menu"><a href="https://selesnow.github.io/getproxy" class="amenu">getProxy</a></li>
  <li class="menu"><a href="https://selesnow.github.io/news" class="amenu">NEWS</a></li>
  <li class="menu"><a href="https://selesnow.github.io/library" class="amenu">Статьи</a></li>
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

Установка пакета осуществляется из репозитория GitHub, для этого сначала требуется установить и подключить пакет devtools.

`install.packages("devtools")`

`library(devtools)`

После чего можно устанавливать пакет rmytarget.

`install_github('selesnow/rmytarget')`

`library(rmytarget)`


## Авторизация в API MyTarget.
>На данный момент пакет `rmytarget` находится в ожидании доступа к схеме авторизации *Authorization Code Grant*, после подтверждения доступа к данной схеме авторизация будет происходить следующим образом:

>Далее в рабочей директории будет создан файл хранящий учётные данные, название файла будет начинаться с указаннолого логина и далее *.mytar.Auth.RData*.

>При каждом обращении к API будет проверяться скрок лействия токен, если срок заканчивается менее чем через 30 минут то токен авточески будет обновлён.

Для того что бы работать с API изначально необходимо пройти процедуру аутинтификации и получить токен доступа, в пакете rmytarget для этого существует функция `myTargetAuth`.

В API MyTarget существует две схемы авторазиции, Client Credentials Grant для обычного рекламодателя и для агентства. В зависимости от типа вашего аккаунта вам необходимо получить токен доступа согласно типу вашего аккаунта в MyTarget.
```
myTarAuth(login = "my_test_client")
```


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
Каждый полученный access-токен является действительным в течение суток. На это указывает свойство expires_in в ответе на запрос access-токена.
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
