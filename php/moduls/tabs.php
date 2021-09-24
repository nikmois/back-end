<!-- ======= Tabs Section ======= -->
<section id="tabs" class="tabs">
  <div class="container" data-aos="fade-up">

    <ul class="nav nav-tabs row d-flex">
      <?php
      $buttons=mysqli_query($link, "SELECT * FROM tabs_btn ORDER BY listOrder");
      while($btn=mysqli_fetch_assoc($buttons)){
      echo '<li class="nav-item col-3">
        <a class="'.$btn['class'].'" data-toggle="tab" href="'.$btn['link'].'">
          <i class="'.$btn['icon'].'"></i>
          <h4 class="d-none d-lg-block">'.$btn['text'].'</h4>
        </a>
      </li>';
      }
       ?>
    </ul>

    <div class="tab-content">
      <?php
      $tabs=mysqli_query($link, "SELECT * FROM tabs ORDER BY listOrder");
      while($tab=mysqli_fetch_assoc($tabs)){
      echo '<div class="'.$tab['class'].'" id="'.$tab['tab_id'].'">
        <div class="row">
          <div class="col-lg-6 order-2 order-lg-1 mt-3 mt-lg-0" data-aos="fade-up" data-aos-delay="'.$tab['aos_delay'].'">
            <h3>'.$tab['title'].'</h3>
            '.$tab['text'].'
          </div>
          <div class="col-lg-6 order-1 order-lg-2 text-center" data-aos="fade-up" data-aos-delay="200">
            <img src="assets/img/'.$tab['image'].'" alt="" class="img-fluid">
          </div>
        </div>
      </div>';
      }
      ?>

  </div>
</section><!-- End Tabs Section -->
