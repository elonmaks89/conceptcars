<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>ConceptCars</title>
  <link rel="stylesheet" type="text/css" href="/static/login_style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
   <h2>Вход и регистрация пользователя</h2>

          <#assign
          known = Session.SPRING_SECURITY_CONTEXT??
          >

          <#if known>
              <#assign
              user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
              name = user.getUsername()
              isAdmin = user.isAdmin()
              >
          <#else>
              <#assign
              name = "unknown"
              isAdmin = false
              >
          </#if>


    <div id="form">

    <form action="/login" method="post">

        <p><input type="text" name="username" placeholder="Введите логин" /></p>
        <p><input type="password" name="password" placeholder="Введите пароль" /></p>

        <button type="submit">Войти</button >
        <a href="/registration" id="linkbutt">Регистрация</a>

        <input type="hidden" name="_csrf" value="${_csrf.token}" />
    </form>

    </div>
    <ul>
        <li>Концепт-кар (англ. concept — идея, car — автомобиль) — прототип будущего автомобиля,</li>
        <li>предназначенный для демонстрации нового стиля, нового дизайна и технологии.</li>
        <li>Их часто выставляют на автошоу для проверки реакции зрителей,</li>
        <li>а уже по ней определяется будущее тех или иных решений. Создание первого</li>
        <li>концепт-кара приписывается дизайнеру General Motors Харли Эрлу (англ. Harley Earl).</li>
        <li>Buick Y-Job (1938) – первый концепт-кар</li>
        <li>Концепт-кары практически никогда не идут в производство,</li>
        <li>а способствуют созданию и поддержанию образа той или иной марки,</li>
        <li>подготавливают общественное мнение к радикальным изменениям в дизайне</li>
        <li>или технической составляющей, устанавливают своего рода задел для стимулирования</li>
        <li>будущих исследований и разработок.</li>
    </ul>

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