<?php
$device_type = get_device();

echo '<pre>'; print_r(get_device()); echo '</pre>';

$template->assign(array(
  'device_type' => $device_type
)
);

?>