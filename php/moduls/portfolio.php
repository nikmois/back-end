<!-- ======= Portfolio Section ======= -->
<section id="portfolio" class="portfolio">
  <div class="container" data-aos="fade-up">

    <div class="section-title">
      <h2>Portfolio</h2>
      <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea.</p>
    </div>

    <div class="row" data-aos="fade-up" data-aos-delay="100">
      <div class="col-lg-12 d-flex justify-content-center">
        <ul id="portfolio-flters">
          <?php
          $portfolio_filter=mysqli_query($link, "SELECT * FROM portfolio_filters ORDER BY listOrder");
          while($filter=mysqli_fetch_assoc($portfolio_filter)){
          echo '<li data-filter="'.$filter['code'].'" class="'.$filter['class'].'">'.$filter['title'].'</li>';
          }
           ?>
        </ul>
      </div>
    </div>

    <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

      <?php
      $portfolio_items=mysqli_query($link, "SELECT * FROM portfolio_item ORDER BY listOrder");
      while($item=mysqli_fetch_assoc($portfolio_items)){
      echo '<div class="col-lg-4 col-md-6 portfolio-item filter-'.$item['filter'].'">
        <div class="portfolio-wrap">
          <img src="assets/img/portfolio/'.$item['photos'].'" class="img-fluid" alt="">
          <div class="portfolio-info">
            <h4>'.$item['title'].'</h4>
            <p>'.$item['comment'].'</p>
            <div class="portfolio-links">
              <a href="assets/img/portfolio/'.$item['photos'].'" data-gall="portfolioGallery" class="venobox" title="'.$item['title'].'"><i class="bx bx-plus"></i></a>
              <a href="'.$item['projLink'].'" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>
        </div>
      </div>';
      }
       ?>
    </div>

  </div>
</section><!-- End Portfolio Section -->
