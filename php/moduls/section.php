<!-- ======= About Section ======= -->
<section id="about" class="about section-bg">
  <div class="container" data-aos="fade-up">

    <div class="row no-gutters">
      <div class="content col-xl-5 d-flex align-items-stretch">
        <div class="content">
          <h3>Voluptatem dignissimos provident quasi</h3>
          <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in reprehenderit
          </p>
          <a href="#" class="about-btn"><span>About us</span> <i class="bx bx-chevron-right"></i></a>
        </div>
      </div>
      <div class="col-xl-7 d-flex align-items-stretch">
        <div class="icon-boxes d-flex flex-column justify-content-center">
          <div class="row">
            <?php
            $icon_box=mysqli_query($link, "SELECT * FROM icon_box ORDER BY listOrder");
            while($icon=mysqli_fetch_assoc($icon_box)){
            echo '<div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="'.$icon['aos_delay'].'"><i class="'.$icon['icon'].'"></i><h4>'.$icon['title'].'</h4><p>'.$icon['text'].'</p></div>';
            }
             ?>
          </div>
        </div><!-- End .content-->
      </div>
    </div>

  </div>
</section><!-- End About Section -->
