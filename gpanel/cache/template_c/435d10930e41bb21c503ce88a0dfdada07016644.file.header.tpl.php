<?php /* Smarty version Smarty-3.0.7, created on 2018-01-07 00:57:19
         compiled from "template/header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:8872469365a51625f985c49-26673148%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '435d10930e41bb21c503ce88a0dfdada07016644' => 
    array (
      0 => 'template/header.tpl',
      1 => 1440795692,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8872469365a51625f985c49-26673148',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!DOCTYPE html>
<html>
    <head>
        <title>Game Panel Administracija</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

        <!-- Reset all CSS rule -->
        <link rel="stylesheet" href="template/css/reset.css" />
        
        <!-- Main stylesheed  (EDIT THIS ONE) -->
        <link rel="stylesheet" href="template/css/style.css" />

        
        <!-- jQuery AND jQueryUI -->
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"></script>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>
        <link rel="stylesheet" href="template/css/jqueryui/jqueryui.css" />
        
        <!-- jWysiwyg - https://github.com/akzhan/jwysiwyg/ -->
        <link rel="stylesheet" href="template/js/jwysiwyg/jquery.wysiwyg.old-school.css" />
        <script type="text/javascript" src="template/js/jwysiwyg/jquery.wysiwyg.js"></script>
		
		<script type="text/javascript" src="template/js/etrail.js"></script>

        
        
        <!-- Tooltipsy - http://tooltipsy.com/ -->
        <script type="text/javascript" src="template/js/tooltipsy.min.js"></script>
        
        <!-- iPhone checkboxes - http://awardwinningfjords.com/2009/06/16/iphone-style-checkboxes.html -->
        <script type="text/javascript" src="template/js/iphone-style-checkboxes.js"></script>
        <script type="text/javascript" src="template/js/excanvas.js"></script>
        
        <!-- Load zoombox (lightbox effect) - http://www.grafikart.fr/zoombox -->
        <script type="text/javascript" src="template/js/zoombox/zoombox.js"></script>

        <link rel="stylesheet" href="template/js/zoombox/zoombox.css" />
        
        <!-- Charts - http://www.filamentgroup.com/lab/update_to_jquery_visualize_accessible_charts_with_html5_from_designing_with/ -->
        <script type="text/javascript" src="template/js/visualize.jQuery.js"></script>
        
        <!-- Uniform - http://uniformjs.com/ -->
        <script type="text/javascript" src="template/js/jquery.uniform.min.js"></script>
        <?php echo $_smarty_tpl->getVariable('script')->value;?>

    </head>

    <body class="white" onload="Refresh()">
    
        
        
        <!--              
                HEAD
                        --> 
        <div id="head">
            <div class="left">
                <a href="admin.php?page=profile" class="button profile"><img src="template/img/icons/huser.png" alt="" /></a>
                Zdravo, 
                <a href="admin.php?page=profile"><?php echo $_smarty_tpl->getVariable('admin')->value['fname'];?>
 <?php echo $_smarty_tpl->getVariable('admin')->value['lname'];?>
</a>
                |
                <a href="../logout.php?admin=yes">Logout</a>

            </div>
            <div style="float:right; margin-right: 250px;">
                <form action="" id="search" method="post" class="search placeholder">
                    <label>IP servera ?</label>
                    <input type="text" value="" name="qq" class="text"/>
                    <input type="submit" value="rechercher" class="submit"/>
                </form>
            </div>			
            <div class="right">
                <form action="" id="search" method="post" class="search placeholder">
                    <label>Email Klijenta ?</label>
                    <input type="text" value="" name="q" class="text"/>
                    <input type="submit" value="rechercher" class="submit"/>
                </form>
            </div>
        </div>
                
                
        <!--            
                SIDEBAR
                         --> 
        <div id="sidebar">
            <ul>
                <li class="nosubmenu">
                    <a href="admin.php">
                        <img src="template/img/icons/menu/home.png" alt="" />
                        Početna
                    </a>
                </li>
                 <li><a href="#"><img src="template/img/icons/menu/client.png" alt="" /> Klijenti</a>
                    <ul>                                         
                                                <li><a href="admin.php?page=klijenti&akcija=lista">Lista Klijenata</a></li>
                                                <li><a href="admin.php?page=klijenti&akcija=dodaj">Dodaj Klijenta</a></li>
                    </ul>
                </li>               

 
<li><a href="#"><img src="template/img/icons/menu/server.png" alt="" /> Serveri</a>
                    <ul>                                         
                                                <li><a href="admin.php?page=serveri&akcija=lista">Lista Servera</a></li>
                                                <li><a href="admin.php?page=serveri&akcija=lista&istekli=1">Istekli Serveri</a></li> 
												<li><a href="admin.php?page=serveri&akcija=listaa&free=1">Free serveri</a></li> 
                                                <?php if ($_smarty_tpl->getVariable('admin')->value['status']=="admin"){?><li><a href="admin.php?page=serveri&akcija=dodaj">Dodaj Server</a></li><?php }?> 
                    </ul>
                </li>
 <?php if ($_smarty_tpl->getVariable('admin')->value['status']=="admin"){?>
                <li><a href="#"><img src="template/img/icons/menu/server.png" alt="" /> Mašine</a>
                    <ul>                                         
                                                <li><a href="admin.php?page=box&akcija=lista">Lista Mašina</a></li>
                                                <li><a href="admin.php?page=box&akcija=dodaj">Dodaj Mašinu</a></li>
                    </ul>
                </li> 
                <li><a href="#"><img src="template/img/icons/menu/mod.png" alt="" /> Modovi</a>
                    <ul>                                         
                                                <li><a href="admin.php?page=mod&akcija=lista">Lista Modova</a></li>
                                                <li><a href="admin.php?page=mod&akcija=dodaj">Dodaj Mod</a></li>
                    </ul>
                </li>   
                <li><a href="#"><img src="template/img/icons/menu/news.png" alt="" /> Obavijesti</a>
                    <ul>                                         
                                                <li><a href="admin.php?page=news&akcija=lista">Lista Obavijesti</a></li>
                                                <li><a href="admin.php?page=news&akcija=dodaj">Dodaj Obavijest</a></li>
                    </ul>
                </li>  
<?php }?>                 
                <li><a href="#"><img src="template/img/icons/menu/support.png" alt="" /> Podrška</a>

                    <ul>
                    	<li><a href="admin.php?page=podrska&status=Neodgovoren"><span>Neodgovoreni Tiketi</span></a></li>
                        <li><a href="admin.php?page=podrska&status=Otvoren"><span>Otvoreni Tiketi</span></a></li>
                        <li><a href="admin.php?page=podrska&status=Zatvoren"><span>Zatvoreni Tiketi</span></a></li>
                        <?php if ($_smarty_tpl->getVariable('admin')->value['status']=="admin"){?>
                        <li><a href="admin.php?page=dodaj_radnika"><span>Dodaj Radnika</span></a></li>
                        <li><a href="admin.php?page=lista_radnika"><span>Lista Radnika</span></a></li>
                        <?php }?>
                    </ul>
                </li>
            </ul>


        </div>
<div id="content" style="padding: 0; margin: 28px 40px -40px 280px;">
<br />
<div class="notiff success bloc">
	Od danas se vodi kontrola radnika, tako da ne zabušavajte i aktivirajte se u tiketima.
	<a class="close" href="#"></a>
</div>
</div>