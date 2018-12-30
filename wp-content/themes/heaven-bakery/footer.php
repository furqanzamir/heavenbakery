<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Heaven_Bakery
 */

?>

	</div><!-- #content -->
	<?php if (is_page( array( 'home', 'about-us' ) ) ) { ?>
		<div class="heaven-bakery-section">
			<div class="getintouch">
			  <div class="container">  
			         <h3>Talk To Us</h3>
			         <h2>Get in touch for details and inquiry.</h2>
			         <p>We are quick to respond and always here to help you out.</p>
			         <a href="#" class="btn btnprim">CONTACT US</a>
			  </div>
			</div>
		</div>
	<?php }?>
	

	<footer>
	<div class="container">
			<div class="row">
				<div class="col-lg-6 col-sm-6">
					<div class="footer-link">
						<?php
							wp_nav_menu( array(
								'theme_location' => 'Main menu',
								'menu_id'        => 'primary-menu',
								
							) );
						  ?>
					</div>
				</div>
				<div class="col-lg-6 col-sm-6">
					<div class="footer-socail-link">
						<ul>
							<li><p><a href="#">Austin, TX, United States, +1 512-491-8456</a></p></li>
						</ul>
						<?php
							wp_nav_menu( array(
								'theme_location' => 'sociallink',
								'container'       => false,
								
							) );
						  ?>
						
					</div>
				</div>
			</div>
		</div>
	</footer>


</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
