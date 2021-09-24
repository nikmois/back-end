<!-- ======= Frequently Asked Questions Section ======= -->
<section id="faq" class="faq">
  <div class="container" data-aos="fade-up">

    <div class="section-title">
      <h2>Frequently Asked Questions</h2>
    </div>

    <ul class="faq-list" data-aos="fade-up">
      <?php
      $faq_list=mysqli_query($link, "SELECT * FROM faq_list ORDER BY listOrder");
      while($faq=mysqli_fetch_assoc($faq_list)){
      echo '<li>
          <a data-toggle="collapse" class="collapsed" href="#'.$faq['answer_link'].'">'.$faq['question'].' <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-x icon-close"></i></a>
          <div id="'.$faq['answer_link'].'" class="collapse" data-parent=".faq-list">
            <p>
              '.$faq['answer'].'
            </p>
          </div>
        </li>';
      }
       ?>

    </ul>

  </div>
</section><!-- End Frequently Asked Questions Section -->
