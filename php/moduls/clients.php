<!-- ======= Clients Section ======= -->
    <section id="clients" class="clients">
      <div class="container-fluid" data-aos="zoom-in">
        <div class="row justify-content-center">
          <div class="col-xl-10">
            <div class="owl-carousel clients-carousel">
			<?php
			$clientTable=mysqli_query($link, "SELECT * FROM clients ORDER BY listOrder");
			while($oneClient=mysqli_fetch_assoc($clientTable)){
				echo '<img src="assets/img/clients/'.$oneClient['logoPic'].'" alt="">';
			}
			?>

			<?php /*
              <img src="assets/img/clients/client-1.png" alt="">
              <img src="assets/img/clients/client-2.png" alt="">
              <img src="assets/img/clients/client-3.png" alt="">
              <img src="assets/img/clients/client-4.png" alt="">
              <img src="assets/img/clients/client-5.png" alt="">
              <img src="assets/img/clients/client-6.png" alt="">
              <img src="assets/img/clients/client-7.png" alt="">
              <img src="assets/img/clients/client-8.png" alt="">
			  */ ?>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Clients Section -->
