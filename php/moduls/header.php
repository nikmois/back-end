<header id="header" class="fixed-top">
  <div class="container-fluid">
    <div class="row justify-content-center">
      <div class="col-xl-10 d-flex align-items-center">
        <h1 class="logo mr-auto"><a href="index.html">Podarok<span>.</span></a></h1>

        <nav class="nav-menu d-none d-lg-block">
          <ul>

<?php
$Menu=mysqli_query($link, "SELECT * FROM menu ORDER BY listOrder");
//применяет SQL запрос к базе данных. создаем таблицу с копией информации из базы
while($Row=mysqli_fetch_assoc($Menu)){
//выдергивает по одной строке из таблицы, по названию
echo '<li class="'.$Row['class'].'"><a href="'.$Row['code'].'">'.$Row['title'].'</a></li>';
}
 ?>


            <li class="drop-down"><a href="">Language</a>
              <ul>
                <?php
                $langMenu=mysqli_query($link, "SELECT * FROM kta20v_languages ORDER BY listOrder");
                while($langRow=mysqli_fetch_assoc($langMenu)){
                echo '<li><a href="'.$langRow['code'].'">'.$langRow['title'].'</a></li>';
                }
                 ?>
              </ul>

          </ul>
        </nav>

        <a href="#about" class="get-started-btn scrollto">Get Started</a>
      </div>
    </div>

  </div>
</header><!-- End Header -->
