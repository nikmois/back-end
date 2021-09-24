<form method="post" action="">
  <input type="submit" <?php
   echo ($_SESSION['mainMenu']=='users')?'class="selectedMenu"':'';
   ?> value="Users">
  <input type="hidden" name="mainMenu" value="users">
</form><form method="post" action="">
  <input type="submit" <?php
   echo ($_SESSION['mainMenu']=='menu')?'class="selectedMenu"':'';
   ?> value="Menu">
  <input type="hidden" name="mainMenu" value="menu">
</form><form method="post" action="">
  <input type="submit"  <?php
   echo ($_SESSION['mainMenu']=='banner')?'class="selectedMenu"':'';
   ?> value="Banner">
  <input type="hidden" name="mainMenu" value="banner">
</form><form method="post" action="">
  <input type="submit"  <?php
   echo ($_SESSION['mainMenu']=='partners')?'class="selectedMenu"':'';
   ?> value="Partners">
  <input type="hidden" name="mainMenu" value="partners">
</form><form method="post" action="">
  <input type="submit"  <?php
   echo ($_SESSION['mainMenu']=='about')?'class="selectedMenu"':'';
   ?> value="About">
  <input type="hidden" name="mainMenu" value="about">
</form><form method="post" action="">
  <input type="submit"  <?php
   echo ($_SESSION['mainMenu']=='counters')?'class="selectedMenu"':'';
   ?> value="Counters">
  <input type="hidden" name="mainMenu" value="counters">
</form><form method="post" action="">
  <input type="submit"  <?php
   echo ($_SESSION['mainMenu']=='tabs')?'class="selectedMenu"':'';
   ?> value="Tabs">
  <input type="hidden" name="mainMenu" value="tabs">
</form><form method="post" action="">
  <input type="submit"  <?php
   echo ($_SESSION['mainMenu']=='services')?'class="selectedMenu"':'';
   ?> value="Services">
  <input type="hidden" name="mainMenu" value="services">
</form><form method="post" action="">
  <input type="submit"  <?php
   echo ($_SESSION['mainMenu']=='portfolio')?'class="selectedMenu"':'';
   ?> value="Portfolio">
  <input type="hidden" name="mainMenu" value="portfolio">
</form><form method="post" action="">
  <input type="submit"  <?php
   echo ($_SESSION['mainMenu']=='feedbacks')?'class="selectedMenu"':'';
   ?> value="Feedbacks">
  <input type="hidden" name="mainMenu" value="feedbacks">
</form><form method="post" action="">
  <input type="submit"  <?php
   echo ($_SESSION['mainMenu']=='pricing')?'class="selectedMenu"':'';
   ?> value="Pricing">
  <input type="hidden" name="mainMenu" value="pricing">
</form><form method="post" action="">
  <input type="submit"  <?php
   echo ($_SESSION['mainMenu']=='FAQ')?'class="selectedMenu"':'';
   ?> value="FAQ">
  <input type="hidden" name="mainMenu" value="FAQ">
</form><form method="post" action="">
  <input type="submit"  <?php
   echo ($_SESSION['mainMenu']=='team')?'class="selectedMenu"':'';
   ?> value="Team">
  <input type="hidden" name="mainMenu" value="team">
</form><form method="post" action="">
  <input type="submit"  <?php
   echo ($_SESSION['mainMenu']=='contact')?'class="selectedMenu"':'';
   ?> value="Contact">
  <input type="hidden" name="mainMenu" value="contact">
</form><form method="post" action="">
  <input type="submit"  <?php
   echo ($_SESSION['mainMenu']=='footer')?'class="selectedMenu"':'';
   ?> value="Footer">
  <input type="hidden" name="mainMenu" value="footer">
</form>
