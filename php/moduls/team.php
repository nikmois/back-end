<!-- ======= Team Section ======= -->
<section id="team" class="team section-bg">
  <div class="container" data-aos="fade-up">

    <div class="section-title">
      <h2>Team</h2>
      <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea.</p>
    </div>

    <div class="row">
      <?php
      $team_list=mysqli_query($link, "SELECT * FROM team_member ORDER BY listOrder");
      while($team=mysqli_fetch_assoc($team_list)){
      echo '<div class="col-lg-3 col-md-6 d-flex align-items-stretch">
          <div class="member" data-aos="fade-up" data-aos-delay="'.$team['aos_delay'].'">
            <div class="member-img">
              <img src="assets/img/team/'.$team['photo'].'" class="img-fluid" alt="">
              <div class="social">
                <a href="'.$team['twitter_icon_link'].'"><i class="icofont-twitter"></i></a>
                <a href="'.$team['facebook_icon_link'].'"><i class="icofont-facebook"></i></a>
                <a href="'.$team['instagramm_icon_link'].'"><i class="icofont-instagram"></i></a>
                <a href="'.$team['linkedin_icon_link'].'"><i class="icofont-linkedin"></i></a>
              </div>
            </div>
            <div class="member-info">
              <h4>'.$team['name'].'</h4>
              <span>'.$team['job'].'</span>
            </div>
          </div>
        </div>';
      }
       ?>

    </div>

  </div>
</section><!-- End Team Section -->
