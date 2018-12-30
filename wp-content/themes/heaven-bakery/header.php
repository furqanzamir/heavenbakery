<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Heaven_Bakery
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="site">
	  <header>
    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-sm-6">
            <div class="button_container" id="toggle">
              <span class="top"></span>
              <span class="middle"></span>
              <span class="bottom"></span>
            </div>
            <div class="menutxt">Menu</div>
        </div>
        <a href="#" class="logo"><?php the_custom_logo(); ?></a>
        <div class="col-lg-6 col-sm-6 mainmenu">
          <div class="heaven-menu">
            <ul>
              <li><a href="#"><i class="fa fa-search" aria-hidden="true"></i> SEARCH</a></li>
              <li><a href="#">MY ACCOUNT</a></li>
              <li><a href="#"><i class="fa fa-shopping-bag" aria-hidden="true"></i> 0</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </header>
  <div class="overlay" id="overlay">
    <nav class="overlay-menu">
      <div class="prim-head">MENU</div>
      <div class="prim-subhead">Austin, TX, United States, +1 512-491-8456</div>
      <?php
		wp_nav_menu( array(
			'theme_location' => 'Main menu',
			'menu_id'        => 'primary-menu',
			
		) );
	  ?>
     <!--  <ul>
        <li><a href="#">SHOP</a></li>
        <li><a href="#">ABOUT US</a></li>
        <li><a href="#">CUSTOM CAKES</a></li>
        <li><a href="#">DEALS</a></li>
        <li><a href="#">CONTACT</a></li>
      </ul> -->
      <div class="heaven-sociallink">
        <?php
          wp_nav_menu( array(
            'theme_location' => 'sociallink',
            'container'       => false,
            
          ) );
        ?>
        <p>COPYRIGHT © 2016 LEVAIN BAKERY. ALL RIGHTS RESERVED.</p>
      </div>
    </nav>
  </div>

	<?php if(is_page('home')){ ?>
    <div class="heaven-slider">
      <div class="owl-carousel owl-theme">
          <div class="item"><img src="http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-slider.png" class="img-fluid"></div>
          <div class="item"><img src="http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-slider.png" class="img-fluid"></div>
          <div class="item"><img src="http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-slider.png" class="img-fluid"></div>
          <div class="item"><img src="http://localhost/heavenbakery/wp-content/themes/heaven-bakery/images/heaven-slider.png" class="img-fluid"></div>
      </div>
      <a href="#" class="pagearrow"><i class="fa fa-angle-down" aria-hidden="true"></i></a>
    </div>

  <?php } ?>
		
			
	<div id="content" class="site-content">
