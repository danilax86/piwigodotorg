<?php
global $template, $lang_info;

include(PORG_PATH . '/data/testimonials.data.php');

$lang_testimonials = array();
foreach ($testimonials as $testimonial) {
  if ($testimonial['language'] == $lang_info['code']) {
  	$testimonial['content'] = nl2br(trim($testimonial['content']));
    $testimonial['added_on'] = format_date($testimonial['added_on'], array('month', 'year'));
    $lang_testimonials[] = $testimonial;
  }
}

if(count($lang_testimonials)<15){

  $number_of_testimonials_to_add = 15 - count($lang_testimonials);
  $count=0;
  while(count($lang_testimonials)<16){
    if ($testimonials[$count]['language'] != $lang_info['code'] && $testimonials[$count]['language'] == 'en') {
      $testimonials[$count]['content'] = nl2br(trim($testimonials[$count]['content']));
      $testimonials[$count]['added_on'] = format_date($testimonials[$count]['added_on'], array('month', 'year'));
      $lang_testimonials[] = $testimonials[$count];
    }
    $count++;
  }

}

$template->assign('testimonials', $lang_testimonials);
?>