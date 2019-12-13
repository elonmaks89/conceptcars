<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ConceptCars</title>
    <link rel="stylesheet" type="text/css" href="/static/reg_style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body style="font-family: Candara">
<div id="container">
    <div id="header">

        <nav id="nav">
            <a id="headerlogo" href="/">ConceptCars</a>
            <ul>
                <li><a href="/">Главная</a></li>
                <li><a href="/">Меню</a>
                    <ul>
                        <li><a href="/">О сайте</a></li>
                        <li><a href="/hello">Объявления</a></li>
                    </ul>
                </li>
                <li><a href="https:/mail.ru">Контакты</a>
                    <ul>
                        <li><a href="https://google.com">Инфо</a></li>
                        <li><a href="/user">Список пользователей</a>
                            <ul>
                                <li><a href="/user/profile">Настройка профиля</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="headerbutton">
            <div id="searchbut">
                <form action="/login" method="post">

                    <input type="hidden" name="_csrf" value="${_csrf.token}" />
                    <div class="search" >



                        <input id="header_search_query" type="search" name="filter" value="${filter?ifExists}" placeholder="Поиск по сайту..." class="">

                        <span id="s1"><button type="submit" name="filter" class="fa fa-search"></button></span>


                    </div>

                </form>
            </div>


            <a href="/registration" id="headerlink2" >Регистрация</a>
        </div>
    </div>
    <div id="section">
        <li>Каждый концепт-кар является своего рода произведением искусства.</li>
        <li>Внешний вид должен доставлять эстетическое удовольствие и передавать дух марки.</li>
        <li>Концепт-кары часто предлагают революционные решения в дизайне или устройстве двигателя.</li>
        <li>В некоторых используют нетрадиционные, экзотические или дорогие материалы,</li>
        <li>начиная от бумаги до углеродного волокна и необычных сплавов.</li>
        <li>Другие имеют необыкновенный экстерьер, например, дверь в стиле "крыло чайки",</li>
        <li>3 или 6 (или более) колес, необычные возможности, которых нет на серийных автомобилях.</li>
        <li>Из-за многих непрактичных или невыгодных находок концепт-кары часто так и остаются</li>
        <li>макетами или даже компьютерными чертежами.</li>
    </div>
    <div id="aside">
        <li>Другие, более жизнеспособные модели, могут стать полностью функциональными,</li>
        <li>с двигателем, трансмиссией и т. д. Большинство концептов так и не превращается</li>
        <li>в конечный продукт. Недействующие макеты, как правило, сделаны из воска ,</li>
        <li>глины , металла, стекловолокна, пластика или различных сочетаний всего вышеперечисленного.</li>
        <li>Как только необходимость в концепте отпадает, он уничтожается.</li>
        <li>Но многие сохраняются - или в музее компании, или спрятаны в хранилище.</li>
        <li>Один неиспользуемый, но работоспособный концепт, хранившийся в Северном Голливуде,</li>
        <li>штат Калифорния, Lincoln Futura (1954), стал автомобилем Бэтмена в одноименном</li>
        <li>фильме компании ABC в 1966 году.</li>
    </div>
    <div id="content">
        <h2>Регистрация</h2>

        <div id="form">

            <form action="/registration" method="post">

                <label>Имя пользователя :</label>
                <p><input type="text" name="username" value="<#if user??>${user.username}</#if>"
                          ${(usernameError??)?string('is-invalid', '')}
                          placeholder="Имя пользователя" />
                    <#if usernameError??>
                        <b id="form_err">${usernameError}</b>
                    </#if>
                </p>

                <label>Пароль :</label>
                <p>
                    <input type="password" name="password"
                           ${(passwordError??)?string('is-invalid', '')}
                           placeholder="Введите пароль" />
                    <#if passwordError??>
                        <b id="form_err">${passwordError}</b>
                    </#if>
                </p>


                <label>Пароль :</label>
                <p>
                    <input type="password" name="password2"
                            ${(password2Error??)?string('is-invalid', '')}
                           placeholder="Повторите пароль" />
                    <#if password2Error??>
                        <b id="form_err">${password2Error}</b>
                    </#if>
                </p>



                <label>Email :</label>
                <p>
                    <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                           ${(emailError??)?string('is-invalid', '')}
                           placeholder="some@some.com" />
                    <#if emailError??>
                        <b id="form_err">${emailError}</b>
                    </#if>
                </p>


                <div>
                    <div class="g-recaptcha" data-sitekey="6Lck2aQUAAAAALDGDBYU2oZCXvfFePS1QSw1xcI9"></div>
                    <#if captchaError??>
                        <div role="alert">
                            <b id="form_err">${captchaError}</b>
                        </div>
                    </#if>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <a href="/registration">Добавить нового пользователя</a>
                <button type="submit">Создать</button>


                <p><a href="/login" id="linkbutt">Войти</a>
                    <a href="/registration" id="linkbutt">Регистрация</a></p>

                <input type="hidden" name="_csrf" value="${_csrf.token}" />
            </form>

        </div>


    </div>
    <div id="footer">
        <div id="dark">
            <div class="foot-inner">
                <table cellpadding="0" cellspacing="0" border="0" width="100%" class="fzagl" height="45">
                    <tr>
                        <td width="270">СВЯЖИТЕСЬ С НАМИ</td>
                        <td width="840">УСЛУГИ</td>
                        <td width="130">СЕРВИС И ПОДДЕРЖКА</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="foot-inner">
            <table cellpadding="0" cellspacing="0" border="0" width="100%" class="fmain">
                <tr>
                    <td width="160"><p><span class="size11">E-mail:</span> <a href="https://mail.ru" class="slip10">ramazanov_max@mail.ru</a></p></td>

                    <td width="170">
                        <ul>
                            <li><a href="/">О сайте</a>
                            <li><a href="/hello">Объявления</a>
                        </ul>
                    </td>
                    <td class="ftestim"><p class="size11 ital">"Сайт для размещения объявлений для тех, кто хочет купить/продать машину стиля концепт-кар<br> <span>ramazanov_max@mail.ru"</span></p></td>
                    <td width="170">
                        <ul>
                            <li><a href="https://mail.ru">Контакты</a>
                        </ul>
                    </td>
                </tr>
            </table>
        </div>
        <b><p style="margin-top: 40px">&copy; Максат Рамазанов</p></b>
    </div>
</div>
</body>
</html>