<!DOCTYPE html>
<html lang="fr">
  <head>

  <!-- ========== INFO ========== -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><?php echo $title; ?></title>  
    
    <!-- ========== CSS ========== -->
    <link rel="stylesheet" 
      href="<?php echo base_url('assets/css/normalize.css');?>">
    <link rel="stylesheet" 
      href="<?php echo base_url('assets/css/foundation.css');?>">
    <link rel="stylesheet" 
      href="<?php echo base_url('assets/css/design.css');?>"/>
    <link rel="stylesheet" type="text/css" 
      href="<?php echo base_url('assets/img/icon-pack/miu-icons/flaticon.css');?>">

    <!-- ========== JAVASCRIPT ========== -->
    <?php if($moderator || $admin || $redactor) {
      ?><script 
      src="<?php echo base_url('assets/js/ckeditorStaff/ckeditor.js');?>"></script>
      <?php
    } else if($VIP) { 
      ?>
      <script 
        src="<?php echo base_url('assets/js/ckeditorVIP/ckeditor.js');?>"></script>
      <?php } else {?>
      <script 
        src="<?php echo base_url('assets/js/ckeditorUsers/ckeditor.js');?>"></script>
      <?php } ?>
    <script 
      src="<?php echo base_url('assets/js/vendor/modernizr.js');?>"></script>
    
  </head>
  <body>
  