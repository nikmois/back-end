<!-- ======= Counts Section ======= -->
<section id="counts" class="counts">
  <div class="container" data-aos="fade-up">

    <div class="row">
      <?php
      $counters=mysqli_query($link, "SELECT * FROM counts ORDER BY listOrder");
      while($count=mysqli_fetch_assoc($counters)){
      echo '<div class="col-lg-3 col-md-6">
        <div class="count-box">
          <i class="'.$count['icon'].'"></i>
          <span data-toggle="counter-up">'.$count['count'].'</span>
          <p>'.$count['text'].'</p>
        </div>
      </div>';
      }
       ?>



    </div>

  </div>
</section><!-- End Counts Section -->
