<div class="rpress-thumbnail-holder">
  <?php if (has_post_thumbnail( $post->ID ) ): ?>
  <?php $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID, 'full' ), 'single-post-thumbnail' ); ?>
      <img src="<?php echo $image[0] ; ?>"> 
    <?php else :  ?>  
      <img src="<?php echo plugins_url() ;?>/restropress/assets/svg/no_image.png">
    <?php endif; ?>
</div>