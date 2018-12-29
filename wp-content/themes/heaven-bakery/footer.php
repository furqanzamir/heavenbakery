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
						<ul>
							<li><a href="#"> FACEBOOK</a></li>
							<li><a href="#"> INSTAGRAM</a></li>
							<li><a href="#"> PINTREST</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>


</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
