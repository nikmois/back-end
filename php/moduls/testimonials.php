<!-- ======= Testimonials Section ======= -->
<section id="testimonials" class="testimonials">
  <div class="container" data-aos="fade-up">
    <div class="section-title">
      <h2>Testimonials</h2>
      <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea.</p>
    </div>
  </div>

  <div class="container-fluid">

    <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="100">
      <div class="col-xl-10">
        <div class="owl-carousel testimonials-carousel">
          <?php
          $testimonials=mysqli_query($link, "SELECT * FROM testimonials_item ORDER BY listOrder");
          while($testi=mysqli_fetch_assoc($testimonials)){
          echo '<div class="testimonial-wrap">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/'.$testi['photo'].'" class="testimonial-img" alt="">
                <h3>'.$testi['name'].'</h3>
                <h4>'.$testi['profession'].'</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  '.$testi['text'].'
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div>';
          }
         ?>

        </div>
      </div>
    </div>

  </div>
</section><!-- End Testimonials Section -->
