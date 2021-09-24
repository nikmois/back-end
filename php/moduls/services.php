<!-- ======= Services Section ======= -->
<section id="services" class="services section-bg ">
  <div class="container" data-aos="fade-up">

    <div class="section-title">
      <h2>Services</h2>
      <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea.</p>
    </div>
    <div class="row">
    <?php
    $service_box=mysqli_query($link, "SELECT * FROM services ORDER BY listOrder");
    while($service=mysqli_fetch_assoc($service_box)){
    echo '<div class="col-md-6 mt-4 mt-md-0">
      <div class="icon-box" data-aos="fade-up" data-aos-delay="'.$service['aos_delay'].'">
        <i class="'.$service['class'].'"></i>
        <h4><a href="'.$service['link'].'">'.$service['title'].'</a></h4>
        <p>'.$service['text'].'</p>
      </div>
    </div>';
    }
     ?>
    </div>

  </div>
</section><!-- End Services Section -->
