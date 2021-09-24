<!-- ======= Pricing Section ======= -->
<section id="pricing" class="pricing section-bg">
  <div class="container" data-aos="fade-up">

    <div class="section-title">
      <h2>Pricing</h2>
      <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea.</p>
    </div>

    <div class="row">
      <?php
      $pricing_box=mysqli_query($link, "SELECT * FROM pricing_box ORDER BY listOrder");
      while($price=mysqli_fetch_assoc($pricing_box)){
      echo '<div class="col-lg-4 col-md-6 mt-4 mt-md-0">
        <div class="'.$price['class'].'" data-aos="fade-up" data-aos-delay="'.$price['aos_delay'].'">
          <h3>'.$price['header'].'</h3>
          <h4><sup>$</sup>'.$price['price'].'<span> / month</span></h4>
          <ul>
            '.$price['text'].'
          </ul>
          <div class="btn-wrap">
            <a href="'.$price['buttonlink'].'" class="btn-buy">Buy Now</a>
          </div>
        </div>
      </div>';
      }
       ?>

    </div>

  </div>
</section><!-- End Pricing Section -->
