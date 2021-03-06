<?php
/**
 * Template part for displaying page content in page.php
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Heaven_Bakery
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<?php if (is_page('shop')) {
	  ?>
		<img src="<?php echo get_template_directory_uri(); ?>/images/custom-cake-heaven.jpg" class="img-fluid">
	<?php } ?>
	<?php if(is_page('checkout')){
		?>
		<div class="container">
	<?php } ?>
		<?php //the_title(); ?>

	<?php heaven_bakery_post_thumbnail(); ?>

		<?php
		the_content();

		wp_link_pages( array(
			'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'heaven-bakery' ),
			'after'  => '</div>',
		) );
		?>

	<?php if ( get_edit_post_link() ) : ?>
		<footer class="entry-footer">
			<?php
			edit_post_link(
				sprintf(
					wp_kses(
						/* translators: %s: Name of current post. Only visible to screen readers */
						__( 'Edit <span class="screen-reader-text">%s</span>', 'heaven-bakery' ),
						array(
							'span' => array(
								'class' => array(),
							),
						)
					),
					get_the_title()
				),
				'<span class="edit-link">',
				'</span>'
			);
			?>
		</footer><!-- .entry-footer -->
	<?php endif; ?>
	<?php if(is_page('checkout')){
		?>
		</div>
	<?php } ?>
</article><!-- #post-<?php the_ID(); ?> -->
