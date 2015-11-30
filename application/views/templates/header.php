<!DOCTYPE html>
<html lang="fr">
  <head>

  <!-- ========== INFO ========== -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/ico" href="<?php echo base_url('assets/img/icone.ico');?>" />
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
    <?php if(isset($headerScripts)): ?>  
      <?php foreach($headerScripts as $script): ?>
      <script type="text/javascript" src="<?php echo $script; ?>"></script>
      <?php endforeach; ?>
    <?php endif; ?>
    
  
    <script 
      src="<?php echo base_url('assets/js/vendor/modernizr.js');?>"></script>
    
  </head>
  <body>
  