<?php  return array (
  'resourceClass' => 'modDocument',
  'resource' => 
  array (
    'id' => 1,
    'type' => 'document',
    'contentType' => 'text/html',
    'pagetitle' => 'Главная',
    'longtitle' => '',
    'description' => '',
    'alias' => 'index',
    'link_attributes' => '',
    'published' => 1,
    'pub_date' => 0,
    'unpub_date' => 0,
    'parent' => 0,
    'isfolder' => 0,
    'introtext' => '',
    'content' => '<!DOCTYPE HTML>
<html>
<head>
<title>СНТО</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/slick-theme.css">
<link rel="stylesheet" href="css/slick.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<meta name="keywords" content="">
<meta name="description" content="">
</head>
<body>
  

<!----ХЭДЕР ПОДГРУЖАЕТСЯ ЧАНКОМ "Header"------>
            [[$Header]]
    
    <main>
        <div class="container">
            <div class="row">
                <!-- Вывод главной новости-->
                [[!getPage?
                                &element=`getResources`
                                &parents=`5` 
                                &tpl=`firstArticle` 
                                &limit=`1`
                                &includeTVs=`1`]]
                <div class="col-md-3 col-sm-3 col-md-12 main_news_right">
                    
              
                   <h3>НОВОСТИ НЕДЕЛИ</h3>
                    <div class="row">
           
                                [[!getPage?
&element=`getResources`
&parents=`5` 
&tpl=`articleTpl` 
&limit=`4`
&includeTVs=`1`]]
                    </div>
                </div>
            </div>
            
            <!--Блоки с навигацией -->
            
            <div class="row nav_main_razdel">
                <div class="col-md-3 col-sm-3 col-xs-4  navigate_razdel">
                    <a href="index.php?id=14"><img src="img/snto_nav.jpg"></a>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-4 col-md-offset-1 navigate_razdel">
                   <a href="index.php/index.php?id=5"><img src="img/sobytya.jpg"></a>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-4 col-md-offset-1 navigate_razdel">
                    <a href="index.php/index.php?id=16"><img src="img/procet_nav.jpg"></a>
                </div>
            </div>
            
            <div class="row news_block_two">
                <div class="col-md-3 col-sm-3">
                    <div class="row otstup_row">
                        
[[!getPage?
&element=`getResources`
&parents=`5` 
&tpl=`LeftNewsBar` 
&limit=`3`
&sortby=`RAND()`]]
                    </div>
                </div>
                [[!getPage?
                                &element=`getResources`
                                &parents=`5` 
                                &tpl=`rndNews` 
                                &limit=`1`
                                &sortby=`RAND()`
                                &includeTVs=`1`]]
            </div>
            
            <!-- Проеткты -->
            <div class="row news_block_three">
                
[[!getPage?
&element=`getResources`
&parents=`16` 
&tpl=`ProjectMainPage` 
&limit=`2`
&includeTVs=`1`]]   
              
            </div>
            
            <!-- слайдер -->
            [[$partners]]
 
            </div>
            
            <div class="col-md-12 form">
                <form method="post" action="">
                    <div class="row">
                        <div class="col-md-11 col-md-offset-1 col-sm-offset-1">
                            <h4>ПОЛУЧАЙТЕ НОВОСТИ НА ПОЧТУ</h4>
                        </div>
                        <div class="col-md-7 col-sm-7 col-md-offset-1 col-sm-offset-1">
                            <input type="text" name="mail" placeholder="ВВЕДИТЕ ВАШ E-MAIL">
                        </div>
                        <div class="col-md-3 col-sm-3">
                            <input type="submit" name="add" value="ПОДПИСАТЬСЯ">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </main>
    
    <footer>
            <div class="container">
                <div class="row footer otstup_row">
                <div class="col-md-9">
                    <h4>Студенческое научно-техническое общество <br><br><br><br> Тел. +7 495 223-05-23 <br>доб. 1155</h4>    
                </div>
                <div class="col-md-3">
                    <ul>
                        <li><a href=""><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-envelope-square" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                    </ul>    
                </div>
                </div>
                <div class="row">
                <div class="col-md-12 text-center">
                    <h4>© Московский политех 2017</h4>
                </div>
            </div>
        </div>
    </footer>
    
 <script src="js/jquery-3.1.1.js" type="text/javascript"></script>   
 <script src="js/slick.js" type="text/javascript"></script>   
 <script src="js/slider.js" type="text/javascript"></script>   
 <script src="js/slick.min.js" type="text/javascript"></script>   
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>
</body>
</html>',
    'richtext' => 1,
    'template' => 0,
    'menuindex' => 0,
    'searchable' => 1,
    'cacheable' => 1,
    'createdby' => 1,
    'createdon' => 1493717518,
    'editedby' => 1,
    'editedon' => 1496693636,
    'deleted' => 0,
    'deletedon' => 0,
    'deletedby' => 0,
    'publishedon' => 0,
    'publishedby' => 0,
    'menutitle' => '',
    'donthit' => 0,
    'privateweb' => 0,
    'privatemgr' => 0,
    'content_dispo' => 0,
    'hidemenu' => 0,
    'class_key' => 'modDocument',
    'context_key' => 'web',
    'content_type' => 1,
    'uri' => '',
    'uri_override' => 0,
    'hide_children_in_tree' => 0,
    'show_in_tree' => 1,
    'properties' => NULL,
    '_content' => '<!DOCTYPE HTML>
<html>
<head>
<title>СНТО</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/slick-theme.css">
<link rel="stylesheet" href="css/slick.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<meta name="keywords" content="">
<meta name="description" content="">
</head>
<body>
  

<!----ХЭДЕР ПОДГРУЖАЕТСЯ ЧАНКОМ "Header"------>
            <header>
        <div class="container">
            <div class="row social_button">
                <div class="col-md-12 col-sm-12">
                    <ul>
                        <li><a href=""><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-envelope-square" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                        <li class="social_button_person"><a href="/modx/www/manager"><i class="fa fa-user-circle" aria-hidden="true"></i>
</a></li>
                    </ul>
                </div>
            </div> 
<nav class="navbar navbar-default menu_top">
      <!-- Бренд и переключатель, который вызывает меню на мобильных устройствах -->
                  <div class="navbar-header">
                    <!-- Кнопка с полосочками, которая открывает меню на мобильных устройствах -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu" aria-expanded="false">
                      <span class="sr-only">Toggle navigation</span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    </button>
                    <!-- Бренд или логотип фирмы (обычно содержит ссылку на главную страницу) -->
                    <a href="index.php" class="navbar-brand"><img src="img/logo.png"></a>
                  </div>
                  <!-- Содержимое меню (коллекция навигационных ссылок, формы и др.) -->
                  <div class="collapse navbar-collapse" id="main-menu" >
                      <!-- Список ссылок, расположенных слева -->
                    <ul class="nav navbar-nav navbar-right">
                      <!--Элемент с классом active отображает ссылку подсвеченной -->
                      <li><a href="index.php?id=14">ОБ СНТО</a></li>
                    <li><a href="index.php?id=2">СНТК</a></li>
                      <li><a href="index.php?id=5">НОВОСТИ</a></li>
                      <li><a href="index.php?id=16">ПРОЕКТЫ</a></li>
                    </ul>
                  </div>
            </nav>
    </div>
    </header>
    
    <main>
        <div class="container">
            <div class="row">
                <!-- Вывод главной новости-->
                [[!getPage?
                                &element=`getResources`
                                &parents=`5` 
                                &tpl=`firstArticle` 
                                &limit=`1`
                                &includeTVs=`1`]]
                <div class="col-md-3 col-sm-3 col-md-12 main_news_right">
                    
              
                   <h3>НОВОСТИ НЕДЕЛИ</h3>
                    <div class="row">
           
                                [[!getPage?
&element=`getResources`
&parents=`5` 
&tpl=`articleTpl` 
&limit=`4`
&includeTVs=`1`]]
                    </div>
                </div>
            </div>
            
            <!--Блоки с навигацией -->
            
            <div class="row nav_main_razdel">
                <div class="col-md-3 col-sm-3 col-xs-4  navigate_razdel">
                    <a href="index.php?id=14"><img src="img/snto_nav.jpg"></a>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-4 col-md-offset-1 navigate_razdel">
                   <a href="index.php/index.php?id=5"><img src="img/sobytya.jpg"></a>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-4 col-md-offset-1 navigate_razdel">
                    <a href="index.php/index.php?id=16"><img src="img/procet_nav.jpg"></a>
                </div>
            </div>
            
            <div class="row news_block_two">
                <div class="col-md-3 col-sm-3">
                    <div class="row otstup_row">
                        
[[!getPage?
&element=`getResources`
&parents=`5` 
&tpl=`LeftNewsBar` 
&limit=`3`
&sortby=`RAND()`]]
                    </div>
                </div>
                [[!getPage?
                                &element=`getResources`
                                &parents=`5` 
                                &tpl=`rndNews` 
                                &limit=`1`
                                &sortby=`RAND()`
                                &includeTVs=`1`]]
            </div>
            
            <!-- Проеткты -->
            <div class="row news_block_three">
                
[[!getPage?
&element=`getResources`
&parents=`16` 
&tpl=`ProjectMainPage` 
&limit=`2`
&includeTVs=`1`]]   
              
            </div>
            
            <!-- слайдер -->
             <div class="row partneri">
                <div class="col-md-12 text-center">
                    <h2>Партнеры</h2>
                </div>
                <div class="col-md-12">
                    <!-- слайдер -->
                   <div class="row slider">
                       <section class="center slider">

<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/01_SchulerGroup_Logo.jpg"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/gk_logo_h_rus.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/holmash.jpg"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_bazalt-proj.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_cummins.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_dd.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_Eksmo.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/Logo_EuroChemRUS.jpg"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_fgup_nami.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_Kia_Motors.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_kodeks.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_prosvesh.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo-lift.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo-rossiyskaya-gazeta.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/prepreg_logo.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/santekh.jpeg"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/sapfir_small.png"></a>
</div>

</section>
</div>
</div>
 
            </div>
            
            <div class="col-md-12 form">
                <form method="post" action="">
                    <div class="row">
                        <div class="col-md-11 col-md-offset-1 col-sm-offset-1">
                            <h4>ПОЛУЧАЙТЕ НОВОСТИ НА ПОЧТУ</h4>
                        </div>
                        <div class="col-md-7 col-sm-7 col-md-offset-1 col-sm-offset-1">
                            <input type="text" name="mail" placeholder="ВВЕДИТЕ ВАШ E-MAIL">
                        </div>
                        <div class="col-md-3 col-sm-3">
                            <input type="submit" name="add" value="ПОДПИСАТЬСЯ">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </main>
    
    <footer>
            <div class="container">
                <div class="row footer otstup_row">
                <div class="col-md-9">
                    <h4>Студенческое научно-техническое общество <br><br><br><br> Тел. +7 495 223-05-23 <br>доб. 1155</h4>    
                </div>
                <div class="col-md-3">
                    <ul>
                        <li><a href=""><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-envelope-square" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                    </ul>    
                </div>
                </div>
                <div class="row">
                <div class="col-md-12 text-center">
                    <h4>© Московский политех 2017</h4>
                </div>
            </div>
        </div>
    </footer>
    
 <script src="js/jquery-3.1.1.js" type="text/javascript"></script>   
 <script src="js/slick.js" type="text/javascript"></script>   
 <script src="js/slider.js" type="text/javascript"></script>   
 <script src="js/slick.min.js" type="text/javascript"></script>   
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>
</body>
</html>',
    '_isForward' => false,
  ),
  'contentType' => 
  array (
    'id' => 1,
    'name' => 'HTML',
    'description' => 'HTML content',
    'mime_type' => 'text/html',
    'file_extensions' => '.html',
    'headers' => NULL,
    'binary' => 0,
  ),
  'policyCache' => 
  array (
  ),
  'elementCache' => 
  array (
    '[[$Header]]' => '<header>
        <div class="container">
            <div class="row social_button">
                <div class="col-md-12 col-sm-12">
                    <ul>
                        <li><a href=""><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-envelope-square" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                        <li class="social_button_person"><a href="/modx/www/manager"><i class="fa fa-user-circle" aria-hidden="true"></i>
</a></li>
                    </ul>
                </div>
            </div> 
<nav class="navbar navbar-default menu_top">
      <!-- Бренд и переключатель, который вызывает меню на мобильных устройствах -->
                  <div class="navbar-header">
                    <!-- Кнопка с полосочками, которая открывает меню на мобильных устройствах -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu" aria-expanded="false">
                      <span class="sr-only">Toggle navigation</span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    </button>
                    <!-- Бренд или логотип фирмы (обычно содержит ссылку на главную страницу) -->
                    <a href="index.php" class="navbar-brand"><img src="img/logo.png"></a>
                  </div>
                  <!-- Содержимое меню (коллекция навигационных ссылок, формы и др.) -->
                  <div class="collapse navbar-collapse" id="main-menu" >
                      <!-- Список ссылок, расположенных слева -->
                    <ul class="nav navbar-nav navbar-right">
                      <!--Элемент с классом active отображает ссылку подсвеченной -->
                      <li><a href="index.php?id=14">ОБ СНТО</a></li>
                    <li><a href="index.php?id=2">СНТК</a></li>
                      <li><a href="index.php?id=5">НОВОСТИ</a></li>
                      <li><a href="index.php?id=16">ПРОЕКТЫ</a></li>
                    </ul>
                  </div>
            </nav>
    </div>
    </header>',
    '[[$partners]]' => ' <div class="row partneri">
                <div class="col-md-12 text-center">
                    <h2>Партнеры</h2>
                </div>
                <div class="col-md-12">
                    <!-- слайдер -->
                   <div class="row slider">
                       <section class="center slider">

<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/01_SchulerGroup_Logo.jpg"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/gk_logo_h_rus.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/holmash.jpg"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_bazalt-proj.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_cummins.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_dd.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_Eksmo.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/Logo_EuroChemRUS.jpg"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_fgup_nami.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_Kia_Motors.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_kodeks.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_prosvesh.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo-lift.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo-rossiyskaya-gazeta.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/prepreg_logo.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/santekh.jpeg"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/sapfir_small.png"></a>
</div>

</section>
</div>
</div>',
    '[[~7]]' => 'index.php?id=7',
    '[[$?namespace=``&limit=`1`&offset=`0`&page=`1`&pageVarKey=`page`&totalVar=`total`&pageLimit=`5`&elementClass=`modSnippet`&pageNavVar=`page.nav`&pageNavTpl=`<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageNavOuterTpl=`[[+first]][[+prev]][[+pages]][[+next]][[+last]]`&pageActiveTpl=`<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageFirstTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>`&pageLastTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>`&pagePrevTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>`&pageNextTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>`&cache=``&cache_key=`resource`&cache_handler=`xPDOFileCache`&cache_expires=`0`&pageNavScheme=``&element=`getResources`&parents=`5`&tpl=`firstArticle`&includeTVs=`1`&total=`4`&pageOneLimit=`1`&actualLimit=`1`&toPlaceholder=``&qs=`fb8875d92fe85e2e22ea48d0d3591d25`&pageCount=`4`&href=`index.php?id=1`&pageNo=`1`]]' => '<li[[+activeClasses]]><a class="active"[[+title]] href="index.php?id=1">1</a></li>',
    '[[$?namespace=``&limit=`1`&offset=`0`&page=`1`&pageVarKey=`page`&totalVar=`total`&pageLimit=`5`&elementClass=`modSnippet`&pageNavVar=`page.nav`&pageNavTpl=`<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageNavOuterTpl=`[[+first]][[+prev]][[+pages]][[+next]][[+last]]`&pageActiveTpl=`<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageFirstTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>`&pageLastTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>`&pagePrevTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>`&pageNextTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>`&cache=``&cache_key=`resource`&cache_handler=`xPDOFileCache`&cache_expires=`0`&pageNavScheme=``&element=`getResources`&parents=`5`&tpl=`firstArticle`&includeTVs=`1`&total=`4`&pageOneLimit=`1`&actualLimit=`1`&toPlaceholder=``&qs=`8bcfe79f1df22263df95df92ba2e3f48`&pageCount=`4`&href=`index.php?id=1&amp;page=2`&pageNo=`2`]]' => '<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">2</a></li>',
    '[[$?namespace=``&limit=`1`&offset=`0`&page=`1`&pageVarKey=`page`&totalVar=`total`&pageLimit=`5`&elementClass=`modSnippet`&pageNavVar=`page.nav`&pageNavTpl=`<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageNavOuterTpl=`[[+first]][[+prev]][[+pages]][[+next]][[+last]]`&pageActiveTpl=`<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageFirstTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>`&pageLastTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>`&pagePrevTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>`&pageNextTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>`&cache=``&cache_key=`resource`&cache_handler=`xPDOFileCache`&cache_expires=`0`&pageNavScheme=``&element=`getResources`&parents=`5`&tpl=`firstArticle`&includeTVs=`1`&total=`4`&pageOneLimit=`1`&actualLimit=`1`&toPlaceholder=``&qs=`0e8a85d06b3663c9267c635c2078a8a6`&pageCount=`4`&href=`index.php?id=1&amp;page=3`&pageNo=`3`]]' => '<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=3">3</a></li>',
    '[[$?namespace=``&limit=`1`&offset=`0`&page=`1`&pageVarKey=`page`&totalVar=`total`&pageLimit=`5`&elementClass=`modSnippet`&pageNavVar=`page.nav`&pageNavTpl=`<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageNavOuterTpl=`[[+first]][[+prev]][[+pages]][[+next]][[+last]]`&pageActiveTpl=`<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageFirstTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>`&pageLastTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>`&pagePrevTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>`&pageNextTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>`&cache=``&cache_key=`resource`&cache_handler=`xPDOFileCache`&cache_expires=`0`&pageNavScheme=``&element=`getResources`&parents=`5`&tpl=`firstArticle`&includeTVs=`1`&total=`4`&pageOneLimit=`1`&actualLimit=`1`&toPlaceholder=``&qs=`b59ccf071ee95566873061ce7cf0cd72`&pageCount=`4`&href=`index.php?id=1&amp;page=4`&pageNo=`4`]]' => '<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=4">4</a></li>',
    '[[$?namespace=``&limit=`1`&offset=`0`&page=`1`&pageVarKey=`page`&totalVar=`total`&pageLimit=`5`&elementClass=`modSnippet`&pageNavVar=`page.nav`&pageNavTpl=`<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageNavOuterTpl=`[[+first]][[+prev]][[+pages]][[+next]][[+last]]`&pageActiveTpl=`<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageFirstTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>`&pageLastTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>`&pagePrevTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>`&pageNextTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>`&cache=``&cache_key=`resource`&cache_handler=`xPDOFileCache`&cache_expires=`0`&pageNavScheme=``&element=`getResources`&parents=`5`&tpl=`firstArticle`&includeTVs=`1`&total=`4`&pageOneLimit=`1`&actualLimit=`1`&toPlaceholder=``&qs=`425bf767bb0d808aaa69eb595777413c`&pageCount=`4`&href=`index.php?id=1&amp;page=2`&pageNo=`2`]]' => '<li class="control"><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">&gt;&gt;</a></li>',
    '[[$?namespace=``&limit=`1`&offset=`0`&page=`1`&pageVarKey=`page`&totalVar=`total`&pageLimit=`5`&elementClass=`modSnippet`&pageNavVar=`page.nav`&pageNavTpl=`<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageNavOuterTpl=`[[+first]][[+prev]][[+pages]][[+next]][[+last]]`&pageActiveTpl=`<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageFirstTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>`&pageLastTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>`&pagePrevTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>`&pageNextTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>`&cache=``&cache_key=`resource`&cache_handler=`xPDOFileCache`&cache_expires=`0`&pageNavScheme=``&element=`getResources`&parents=`5`&tpl=`firstArticle`&includeTVs=`1`&total=`4`&pageOneLimit=`1`&actualLimit=`1`&toPlaceholder=``&qs=`6950756eae439edb3737b1350b150e6d`&pageCount=`4`&href=`index.php?id=1&amp;page=4`&pageNo=`4`]]' => '<li class="control"><a[[+classes]][[+title]] href="index.php?id=1&amp;page=4">Last</a></li>',
    '[[$?namespace=``&limit=`1`&offset=`0`&page=`1`&pageVarKey=`page`&totalVar=`total`&pageLimit=`5`&elementClass=`modSnippet`&pageNavVar=`page.nav`&pageNavTpl=`<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageNavOuterTpl=`[[+first]][[+prev]][[+pages]][[+next]][[+last]]`&pageActiveTpl=`<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageFirstTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>`&pageLastTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>`&pagePrevTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>`&pageNextTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>`&cache=``&cache_key=`resource`&cache_handler=`xPDOFileCache`&cache_expires=`0`&pageNavScheme=``&element=`getResources`&parents=`5`&tpl=`firstArticle`&includeTVs=`1`&total=`4`&pageOneLimit=`1`&actualLimit=`1`&toPlaceholder=``&qs=`6c3c3516497758f8a727781999ac81a9`&pageCount=`4`&pages=`<li[[+activeClasses]]><a class="active"[[+title]] href="index.php?id=1">1</a></li>
<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">2</a></li>
<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=3">3</a></li>
<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=4">4</a></li>`&next=`<li class="control"><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">&gt;&gt;</a></li>`&last=`<li class="control"><a[[+classes]][[+title]] href="index.php?id=1&amp;page=4">Last</a></li>`]]' => '[[+first]][[+prev]]<li[[+activeClasses]]><a class="active"[[+title]] href="index.php?id=1">1</a></li>
<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">2</a></li>
<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=3">3</a></li>
<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=4">4</a></li><li class="control"><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">&gt;&gt;</a></li><li class="control"><a[[+classes]][[+title]] href="index.php?id=1&amp;page=4">Last</a></li>',
    '[[~8]]' => 'index.php?id=8',
    '[[~9]]' => 'index.php?id=9',
    '[[~6]]' => 'index.php?id=6',
    '[[$?namespace=``&limit=`3`&offset=`0`&page=`1`&pageVarKey=`page`&totalVar=`total`&pageLimit=`5`&elementClass=`modSnippet`&pageNavVar=`page.nav`&pageNavTpl=`<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageNavOuterTpl=`[[+first]][[+prev]][[+pages]][[+next]][[+last]]`&pageActiveTpl=`<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageFirstTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>`&pageLastTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>`&pagePrevTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>`&pageNextTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>`&cache=``&cache_key=`resource`&cache_handler=`xPDOFileCache`&cache_expires=`0`&pageNavScheme=``&element=`getResources`&parents=`5`&tpl=`LeftNewsBar`&sortby=`RAND()`&total=`4`&pageOneLimit=`3`&actualLimit=`3`&toPlaceholder=``&qs=`f9ec520046af104dfdb81ec786e72419`&pageCount=`2`&href=`index.php?id=1`&pageNo=`1`]]' => '<li[[+activeClasses]]><a class="active"[[+title]] href="index.php?id=1">1</a></li>',
    '[[$?namespace=``&limit=`3`&offset=`0`&page=`1`&pageVarKey=`page`&totalVar=`total`&pageLimit=`5`&elementClass=`modSnippet`&pageNavVar=`page.nav`&pageNavTpl=`<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageNavOuterTpl=`[[+first]][[+prev]][[+pages]][[+next]][[+last]]`&pageActiveTpl=`<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageFirstTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>`&pageLastTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>`&pagePrevTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>`&pageNextTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>`&cache=``&cache_key=`resource`&cache_handler=`xPDOFileCache`&cache_expires=`0`&pageNavScheme=``&element=`getResources`&parents=`5`&tpl=`LeftNewsBar`&sortby=`RAND()`&total=`4`&pageOneLimit=`3`&actualLimit=`3`&toPlaceholder=``&qs=`c2d4f2a42a634ac000d9cc45c3cddc89`&pageCount=`2`&href=`index.php?id=1&amp;page=2`&pageNo=`2`]]' => '<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">2</a></li>',
    '[[$?namespace=``&limit=`3`&offset=`0`&page=`1`&pageVarKey=`page`&totalVar=`total`&pageLimit=`5`&elementClass=`modSnippet`&pageNavVar=`page.nav`&pageNavTpl=`<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageNavOuterTpl=`[[+first]][[+prev]][[+pages]][[+next]][[+last]]`&pageActiveTpl=`<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageFirstTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>`&pageLastTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>`&pagePrevTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>`&pageNextTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>`&cache=``&cache_key=`resource`&cache_handler=`xPDOFileCache`&cache_expires=`0`&pageNavScheme=``&element=`getResources`&parents=`5`&tpl=`LeftNewsBar`&sortby=`RAND()`&total=`4`&pageOneLimit=`3`&actualLimit=`3`&toPlaceholder=``&qs=`2138af89397ce07b41bf032f737e62b3`&pageCount=`2`&href=`index.php?id=1&amp;page=2`&pageNo=`2`]]' => '<li class="control"><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">&gt;&gt;</a></li>',
    '[[$?namespace=``&limit=`3`&offset=`0`&page=`1`&pageVarKey=`page`&totalVar=`total`&pageLimit=`5`&elementClass=`modSnippet`&pageNavVar=`page.nav`&pageNavTpl=`<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageNavOuterTpl=`[[+first]][[+prev]][[+pages]][[+next]][[+last]]`&pageActiveTpl=`<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageFirstTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>`&pageLastTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>`&pagePrevTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>`&pageNextTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>`&cache=``&cache_key=`resource`&cache_handler=`xPDOFileCache`&cache_expires=`0`&pageNavScheme=``&element=`getResources`&parents=`5`&tpl=`LeftNewsBar`&sortby=`RAND()`&total=`4`&pageOneLimit=`3`&actualLimit=`3`&toPlaceholder=``&qs=`cc607ef2d757571735cbbd3b08d9038d`&pageCount=`2`&href=`index.php?id=1&amp;page=2`&pageNo=`2`]]' => '<li class="control"><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">Last</a></li>',
    '[[$?namespace=``&limit=`3`&offset=`0`&page=`1`&pageVarKey=`page`&totalVar=`total`&pageLimit=`5`&elementClass=`modSnippet`&pageNavVar=`page.nav`&pageNavTpl=`<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageNavOuterTpl=`[[+first]][[+prev]][[+pages]][[+next]][[+last]]`&pageActiveTpl=`<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageFirstTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>`&pageLastTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>`&pagePrevTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>`&pageNextTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>`&cache=``&cache_key=`resource`&cache_handler=`xPDOFileCache`&cache_expires=`0`&pageNavScheme=``&element=`getResources`&parents=`5`&tpl=`LeftNewsBar`&sortby=`RAND()`&total=`4`&pageOneLimit=`3`&actualLimit=`3`&toPlaceholder=``&qs=`b464df5ae29f929393c8ca9bf8412ef4`&pageCount=`2`&pages=`<li[[+activeClasses]]><a class="active"[[+title]] href="index.php?id=1">1</a></li>
<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">2</a></li>`&next=`<li class="control"><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">&gt;&gt;</a></li>`&last=`<li class="control"><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">Last</a></li>`]]' => '[[+first]][[+prev]]<li[[+activeClasses]]><a class="active"[[+title]] href="index.php?id=1">1</a></li>
<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">2</a></li><li class="control"><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">&gt;&gt;</a></li><li class="control"><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">Last</a></li>',
    '[[$?namespace=``&limit=`1`&offset=`0`&page=`1`&pageVarKey=`page`&totalVar=`total`&pageLimit=`5`&elementClass=`modSnippet`&pageNavVar=`page.nav`&pageNavTpl=`<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageNavOuterTpl=`[[+first]][[+prev]][[+pages]][[+next]][[+last]]`&pageActiveTpl=`<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageFirstTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>`&pageLastTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>`&pagePrevTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>`&pageNextTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>`&cache=``&cache_key=`resource`&cache_handler=`xPDOFileCache`&cache_expires=`0`&pageNavScheme=``&element=`getResources`&parents=`5`&tpl=`rndNews`&sortby=`RAND()`&includeTVs=`1`&total=`4`&pageOneLimit=`1`&actualLimit=`1`&toPlaceholder=``&qs=`7afc4f9b670ed2fbeff986663576ff53`&pageCount=`4`&href=`index.php?id=1`&pageNo=`1`]]' => '<li[[+activeClasses]]><a class="active"[[+title]] href="index.php?id=1">1</a></li>',
    '[[$?namespace=``&limit=`1`&offset=`0`&page=`1`&pageVarKey=`page`&totalVar=`total`&pageLimit=`5`&elementClass=`modSnippet`&pageNavVar=`page.nav`&pageNavTpl=`<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageNavOuterTpl=`[[+first]][[+prev]][[+pages]][[+next]][[+last]]`&pageActiveTpl=`<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageFirstTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>`&pageLastTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>`&pagePrevTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>`&pageNextTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>`&cache=``&cache_key=`resource`&cache_handler=`xPDOFileCache`&cache_expires=`0`&pageNavScheme=``&element=`getResources`&parents=`5`&tpl=`rndNews`&sortby=`RAND()`&includeTVs=`1`&total=`4`&pageOneLimit=`1`&actualLimit=`1`&toPlaceholder=``&qs=`03c91ea3fc491b5da8f8b7d74ecf42fa`&pageCount=`4`&href=`index.php?id=1&amp;page=2`&pageNo=`2`]]' => '<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">2</a></li>',
    '[[$?namespace=``&limit=`1`&offset=`0`&page=`1`&pageVarKey=`page`&totalVar=`total`&pageLimit=`5`&elementClass=`modSnippet`&pageNavVar=`page.nav`&pageNavTpl=`<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageNavOuterTpl=`[[+first]][[+prev]][[+pages]][[+next]][[+last]]`&pageActiveTpl=`<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageFirstTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>`&pageLastTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>`&pagePrevTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>`&pageNextTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>`&cache=``&cache_key=`resource`&cache_handler=`xPDOFileCache`&cache_expires=`0`&pageNavScheme=``&element=`getResources`&parents=`5`&tpl=`rndNews`&sortby=`RAND()`&includeTVs=`1`&total=`4`&pageOneLimit=`1`&actualLimit=`1`&toPlaceholder=``&qs=`5ccb15e7a17b87d2f29890e3633be231`&pageCount=`4`&href=`index.php?id=1&amp;page=3`&pageNo=`3`]]' => '<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=3">3</a></li>',
    '[[$?namespace=``&limit=`1`&offset=`0`&page=`1`&pageVarKey=`page`&totalVar=`total`&pageLimit=`5`&elementClass=`modSnippet`&pageNavVar=`page.nav`&pageNavTpl=`<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageNavOuterTpl=`[[+first]][[+prev]][[+pages]][[+next]][[+last]]`&pageActiveTpl=`<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageFirstTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>`&pageLastTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>`&pagePrevTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>`&pageNextTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>`&cache=``&cache_key=`resource`&cache_handler=`xPDOFileCache`&cache_expires=`0`&pageNavScheme=``&element=`getResources`&parents=`5`&tpl=`rndNews`&sortby=`RAND()`&includeTVs=`1`&total=`4`&pageOneLimit=`1`&actualLimit=`1`&toPlaceholder=``&qs=`3febd606b20e3457622586e2984c2217`&pageCount=`4`&href=`index.php?id=1&amp;page=4`&pageNo=`4`]]' => '<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=4">4</a></li>',
    '[[$?namespace=``&limit=`1`&offset=`0`&page=`1`&pageVarKey=`page`&totalVar=`total`&pageLimit=`5`&elementClass=`modSnippet`&pageNavVar=`page.nav`&pageNavTpl=`<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageNavOuterTpl=`[[+first]][[+prev]][[+pages]][[+next]][[+last]]`&pageActiveTpl=`<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageFirstTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>`&pageLastTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>`&pagePrevTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>`&pageNextTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>`&cache=``&cache_key=`resource`&cache_handler=`xPDOFileCache`&cache_expires=`0`&pageNavScheme=``&element=`getResources`&parents=`5`&tpl=`rndNews`&sortby=`RAND()`&includeTVs=`1`&total=`4`&pageOneLimit=`1`&actualLimit=`1`&toPlaceholder=``&qs=`acee9e9b2717bd43bbc630e9b1514263`&pageCount=`4`&href=`index.php?id=1&amp;page=2`&pageNo=`2`]]' => '<li class="control"><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">&gt;&gt;</a></li>',
    '[[$?namespace=``&limit=`1`&offset=`0`&page=`1`&pageVarKey=`page`&totalVar=`total`&pageLimit=`5`&elementClass=`modSnippet`&pageNavVar=`page.nav`&pageNavTpl=`<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageNavOuterTpl=`[[+first]][[+prev]][[+pages]][[+next]][[+last]]`&pageActiveTpl=`<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageFirstTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>`&pageLastTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>`&pagePrevTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>`&pageNextTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>`&cache=``&cache_key=`resource`&cache_handler=`xPDOFileCache`&cache_expires=`0`&pageNavScheme=``&element=`getResources`&parents=`5`&tpl=`rndNews`&sortby=`RAND()`&includeTVs=`1`&total=`4`&pageOneLimit=`1`&actualLimit=`1`&toPlaceholder=``&qs=`507c7d195bccbef72f8fccefc8d8eb71`&pageCount=`4`&href=`index.php?id=1&amp;page=4`&pageNo=`4`]]' => '<li class="control"><a[[+classes]][[+title]] href="index.php?id=1&amp;page=4">Last</a></li>',
    '[[$?namespace=``&limit=`1`&offset=`0`&page=`1`&pageVarKey=`page`&totalVar=`total`&pageLimit=`5`&elementClass=`modSnippet`&pageNavVar=`page.nav`&pageNavTpl=`<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageNavOuterTpl=`[[+first]][[+prev]][[+pages]][[+next]][[+last]]`&pageActiveTpl=`<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>`&pageFirstTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>`&pageLastTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>`&pagePrevTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>`&pageNextTpl=`<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>`&cache=``&cache_key=`resource`&cache_handler=`xPDOFileCache`&cache_expires=`0`&pageNavScheme=``&element=`getResources`&parents=`5`&tpl=`rndNews`&sortby=`RAND()`&includeTVs=`1`&total=`4`&pageOneLimit=`1`&actualLimit=`1`&toPlaceholder=``&qs=`3b4045f576b3f81d52f71e6b77101231`&pageCount=`4`&pages=`<li[[+activeClasses]]><a class="active"[[+title]] href="index.php?id=1">1</a></li>
<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">2</a></li>
<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=3">3</a></li>
<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=4">4</a></li>`&next=`<li class="control"><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">&gt;&gt;</a></li>`&last=`<li class="control"><a[[+classes]][[+title]] href="index.php?id=1&amp;page=4">Last</a></li>`]]' => '[[+first]][[+prev]]<li[[+activeClasses]]><a class="active"[[+title]] href="index.php?id=1">1</a></li>
<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">2</a></li>
<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=3">3</a></li>
<li[[+classes]]><a[[+classes]][[+title]] href="index.php?id=1&amp;page=4">4</a></li><li class="control"><a[[+classes]][[+title]] href="index.php?id=1&amp;page=2">&gt;&gt;</a></li><li class="control"><a[[+classes]][[+title]] href="index.php?id=1&amp;page=4">Last</a></li>',
    '[[~20]]' => 'index.php?id=20',
    '[[~19]]' => 'index.php?id=19',
  ),
  'sourceCache' => 
  array (
    'modChunk' => 
    array (
      'Header' => 
      array (
        'fields' => 
        array (
          'id' => 7,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'Header',
          'description' => 'Хедер',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => '<header>
        <div class="container">
            <div class="row social_button">
                <div class="col-md-12 col-sm-12">
                    <ul>
                        <li><a href=""><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-envelope-square" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                        <li class="social_button_person"><a href="/modx/www/manager"><i class="fa fa-user-circle" aria-hidden="true"></i>
</a></li>
                    </ul>
                </div>
            </div> 
<nav class="navbar navbar-default menu_top">
      <!-- Бренд и переключатель, который вызывает меню на мобильных устройствах -->
                  <div class="navbar-header">
                    <!-- Кнопка с полосочками, которая открывает меню на мобильных устройствах -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu" aria-expanded="false">
                      <span class="sr-only">Toggle navigation</span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    </button>
                    <!-- Бренд или логотип фирмы (обычно содержит ссылку на главную страницу) -->
                    <a href="index.php" class="navbar-brand"><img src="img/logo.png"></a>
                  </div>
                  <!-- Содержимое меню (коллекция навигационных ссылок, формы и др.) -->
                  <div class="collapse navbar-collapse" id="main-menu" >
                      <!-- Список ссылок, расположенных слева -->
                    <ul class="nav navbar-nav navbar-right">
                      <!--Элемент с классом active отображает ссылку подсвеченной -->
                      <li><a href="index.php?id=14">ОБ СНТО</a></li>
                    <li><a href="index.php?id=2">СНТК</a></li>
                      <li><a href="index.php?id=5">НОВОСТИ</a></li>
                      <li><a href="index.php?id=16">ПРОЕКТЫ</a></li>
                    </ul>
                  </div>
            </nav>
    </div>
    </header>',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '<header>
        <div class="container">
            <div class="row social_button">
                <div class="col-md-12 col-sm-12">
                    <ul>
                        <li><a href=""><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-envelope-square" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                        <li><a href=""><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                        <li class="social_button_person"><a href="/modx/www/manager"><i class="fa fa-user-circle" aria-hidden="true"></i>
</a></li>
                    </ul>
                </div>
            </div> 
<nav class="navbar navbar-default menu_top">
      <!-- Бренд и переключатель, который вызывает меню на мобильных устройствах -->
                  <div class="navbar-header">
                    <!-- Кнопка с полосочками, которая открывает меню на мобильных устройствах -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu" aria-expanded="false">
                      <span class="sr-only">Toggle navigation</span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    </button>
                    <!-- Бренд или логотип фирмы (обычно содержит ссылку на главную страницу) -->
                    <a href="index.php" class="navbar-brand"><img src="img/logo.png"></a>
                  </div>
                  <!-- Содержимое меню (коллекция навигационных ссылок, формы и др.) -->
                  <div class="collapse navbar-collapse" id="main-menu" >
                      <!-- Список ссылок, расположенных слева -->
                    <ul class="nav navbar-nav navbar-right">
                      <!--Элемент с классом active отображает ссылку подсвеченной -->
                      <li><a href="index.php?id=14">ОБ СНТО</a></li>
                    <li><a href="index.php?id=2">СНТК</a></li>
                      <li><a href="index.php?id=5">НОВОСТИ</a></li>
                      <li><a href="index.php?id=16">ПРОЕКТЫ</a></li>
                    </ul>
                  </div>
            </nav>
    </div>
    </header>',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'sources.modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
      'partners' => 
      array (
        'fields' => 
        array (
          'id' => 4,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'partners',
          'description' => 'Партнеры ',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => ' <div class="row partneri">
                <div class="col-md-12 text-center">
                    <h2>Партнеры</h2>
                </div>
                <div class="col-md-12">
                    <!-- слайдер -->
                   <div class="row slider">
                       <section class="center slider">

<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/01_SchulerGroup_Logo.jpg"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/gk_logo_h_rus.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/holmash.jpg"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_bazalt-proj.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_cummins.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_dd.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_Eksmo.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/Logo_EuroChemRUS.jpg"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_fgup_nami.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_Kia_Motors.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_kodeks.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_prosvesh.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo-lift.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo-rossiyskaya-gazeta.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/prepreg_logo.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/santekh.jpeg"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/sapfir_small.png"></a>
</div>

</section>
</div>
</div>',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => ' <div class="row partneri">
                <div class="col-md-12 text-center">
                    <h2>Партнеры</h2>
                </div>
                <div class="col-md-12">
                    <!-- слайдер -->
                   <div class="row slider">
                       <section class="center slider">

<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/01_SchulerGroup_Logo.jpg"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/gk_logo_h_rus.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/holmash.jpg"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_bazalt-proj.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_cummins.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_dd.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_Eksmo.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/Logo_EuroChemRUS.jpg"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_fgup_nami.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_Kia_Motors.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_kodeks.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo_prosvesh.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo-lift.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/logo-rossiyskaya-gazeta.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/prepreg_logo.png"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/santekh.jpeg"></a>
</div>
<div>
    <a href="https://www.schulergroup.com/minor/ru/"><img src="img/partners/sapfir_small.png"></a>
</div>

</section>
</div>
</div>',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'sources.modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
    ),
    'modSnippet' => 
    array (
      'getPage' => 
      array (
        'fields' => 
        array (
          'id' => 1,
          'source' => 0,
          'property_preprocess' => false,
          'name' => 'getPage',
          'description' => '<b>1.2.4-pl</b> A generic wrapper snippet for returning paged results and navigation from snippets that return limitable collections.',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => '/**
 * @package getpage
 */
$output = \'\';

$properties =& $scriptProperties;
$properties[\'page\'] = (isset($_GET[$properties[\'pageVarKey\']]) && ($page = intval($_GET[$properties[\'pageVarKey\']]))) ? $page : null;
if ($properties[\'page\'] === null) {
    $properties[\'page\'] = (isset($_REQUEST[$properties[\'pageVarKey\']]) && ($page = intval($_REQUEST[$properties[\'pageVarKey\']]))) ? $page : 1;
}
$properties[\'limit\'] = (isset($_GET[\'limit\'])) ? intval($_GET[\'limit\']) : null;
if ($properties[\'limit\'] === null) {
    $properties[\'limit\'] = (isset($_REQUEST[\'limit\'])) ? intval($_REQUEST[\'limit\']) : intval($limit);
}
$properties[\'offset\'] = (!empty($properties[\'limit\']) && !empty($properties[\'page\'])) ? ($properties[\'limit\'] * ($properties[\'page\'] - 1)) : 0;
$properties[\'totalVar\'] = empty($totalVar) ? "total" : $totalVar;
$properties[$properties[\'totalVar\']] = !empty($properties[$properties[\'totalVar\']]) && $total = intval($properties[$properties[\'totalVar\']]) ? $total : 0;
$properties[\'pageOneLimit\'] = (!empty($pageOneLimit) && $pageOneLimit = intval($pageOneLimit)) ? $pageOneLimit : $properties[\'limit\'];
$properties[\'actualLimit\'] = $properties[\'limit\'];
$properties[\'pageLimit\'] = isset($pageLimit) && is_numeric($pageLimit) ? intval($pageLimit) : 5;
$properties[\'element\'] = empty($element) ? \'\' : $element;
$properties[\'elementClass\'] = empty($elementClass) ? \'modChunk\' : $elementClass;
$properties[\'pageNavVar\'] = empty($pageNavVar) ? \'page.nav\' : $pageNavVar;
$properties[\'pageNavTpl\'] = !isset($pageNavTpl) ? "<li[[+classes]]><a[[+classes]][[+title]] href=\\"[[+href]]\\">[[+pageNo]]</a></li>" : $pageNavTpl;
$properties[\'pageNavOuterTpl\'] = !isset($pageNavOuterTpl) ? "[[+first]][[+prev]][[+pages]][[+next]][[+last]]" : $pageNavOuterTpl;
$properties[\'pageActiveTpl\'] = !isset($pageActiveTpl) ? "<li[[+activeClasses:default=` class=\\"active\\"`]]><a[[+activeClasses:default=` class=\\"active\\"`]][[+title]] href=\\"[[+href]]\\">[[+pageNo]]</a></li>" : $pageActiveTpl;
$properties[\'pageFirstTpl\'] = !isset($pageFirstTpl) ? "<li class=\\"control\\"><a[[+title]] href=\\"[[+href]]\\">First</a></li>" : $pageFirstTpl;
$properties[\'pageLastTpl\'] = !isset($pageLastTpl) ? "<li class=\\"control\\"><a[[+title]] href=\\"[[+href]]\\">Last</a></li>" : $pageLastTpl;
$properties[\'pagePrevTpl\'] = !isset($pagePrevTpl) ? "<li class=\\"control\\"><a[[+title]] href=\\"[[+href]]\\">&lt;&lt;</a></li>" : $pagePrevTpl;
$properties[\'pageNextTpl\'] = !isset($pageNextTpl) ? "<li class=\\"control\\"><a[[+title]] href=\\"[[+href]]\\">&gt;&gt;</a></li>" : $pageNextTpl;
$properties[\'toPlaceholder\'] = !empty($toPlaceholder) ? $toPlaceholder : \'\';
$properties[\'cache\'] = isset($cache) ? (boolean) $cache : (boolean) $modx->getOption(\'cache_resource\', null, false);
if (empty($cache_key)) $properties[xPDO::OPT_CACHE_KEY] = $modx->getOption(\'cache_resource_key\', null, \'resource\');
if (empty($cache_handler)) $properties[xPDO::OPT_CACHE_HANDLER] = $modx->getOption(\'cache_resource_handler\', null, \'xPDOFileCache\');
if (empty($cache_expires)) $properties[xPDO::OPT_CACHE_EXPIRES] = (integer) $modx->getOption(\'cache_resource_expires\', null, 0);

if ($properties[\'page\'] == 1 && $properties[\'pageOneLimit\'] !== $properties[\'actualLimit\']) {
    $properties[\'limit\'] = $properties[\'pageOneLimit\'];
}

if ($properties[\'cache\']) {
    $properties[\'cachePageKey\'] = $modx->resource->getCacheKey() . \'/\' . $properties[\'page\'] . \'/\' . md5(http_build_query($modx->request->getParameters()) . http_build_query($scriptProperties));
    $properties[\'cacheOptions\'] = array(
        xPDO::OPT_CACHE_KEY => $properties[xPDO::OPT_CACHE_KEY],
        xPDO::OPT_CACHE_HANDLER => $properties[xPDO::OPT_CACHE_HANDLER],
        xPDO::OPT_CACHE_EXPIRES => $properties[xPDO::OPT_CACHE_EXPIRES],
    );
}
$cached = false;
if ($properties[\'cache\']) {
    if ($modx->getCacheManager()) {
        $cached = $modx->cacheManager->get($properties[\'cachePageKey\'], $properties[\'cacheOptions\']);
    }
}
if (empty($cached) || !isset($cached[\'properties\']) || !isset($cached[\'output\'])) {
    $elementObj = $modx->getObject($properties[\'elementClass\'], array(\'name\' => $properties[\'element\']));
    if ($elementObj) {
        $elementObj->setCacheable(false);
        if (!empty($properties[\'toPlaceholder\'])) {
            $elementObj->process($properties);
            $output = $modx->getPlaceholder($properties[\'toPlaceholder\']);
        } else {
            $output = $elementObj->process($properties);
        }
    }

    include_once $modx->getOption(\'getpage.core_path\',$properties,$modx->getOption(\'core_path\', $properties, MODX_CORE_PATH) . \'components/getpage/\').\'include.getpage.php\';

    $qs = $modx->request->getParameters();
    $properties[\'qs\'] =& $qs;

    $totalSet = $modx->getPlaceholder($properties[\'totalVar\']);
    $properties[$properties[\'totalVar\']] = (($totalSet = intval($totalSet)) ? $totalSet : $properties[$properties[\'totalVar\']]);
    if (!empty($properties[$properties[\'totalVar\']]) && !empty($properties[\'actualLimit\'])) {
        if ($properties[\'pageOneLimit\'] !== $properties[\'actualLimit\']) {
            $adjustedTotal = $properties[$properties[\'totalVar\']] - $properties[\'pageOneLimit\'];
            $properties[\'pageCount\'] = $adjustedTotal > 0 ? ceil($adjustedTotal / $properties[\'actualLimit\']) + 1 : 1;
        } else {
            $properties[\'pageCount\'] = ceil($properties[$properties[\'totalVar\']] / $properties[\'actualLimit\']);
        }
    } else {
        $properties[\'pageCount\'] = 1;
    }
    if (empty($properties[$properties[\'totalVar\']]) || empty($properties[\'actualLimit\']) || $properties[$properties[\'totalVar\']] <= $properties[\'actualLimit\'] || ($properties[\'page\'] == 1 && $properties[$properties[\'totalVar\']] <= $properties[\'pageOneLimit\'])) {
        $properties[\'page\'] = 1;
    } else {
        $pageNav = getpage_buildControls($modx, $properties);
        $properties[$properties[\'pageNavVar\']] = $modx->newObject(\'modChunk\')->process(array_merge($properties, $pageNav), $properties[\'pageNavOuterTpl\']);
        if ($properties[\'page\'] > 1) {
            $qs[$properties[\'pageVarKey\']] = $properties[\'page\'];
        }
    }

    $properties[\'firstItem\'] = $properties[\'offset\'] + 1;
    $properties[\'lastItem\'] = ($properties[\'offset\'] + $properties[\'limit\']) < $totalSet ? ($properties[\'offset\'] + $properties[\'limit\']) : $totalSet;

    $properties[\'pageUrl\'] = $modx->makeUrl($modx->resource->get(\'id\'), \'\', $qs);
    if ($properties[\'cache\'] && $modx->getCacheManager()) {
        $cached = array(\'properties\' => $properties, \'output\' => $output);
        $modx->cacheManager->set($properties[\'cachePageKey\'], $cached, $properties[xPDO::OPT_CACHE_EXPIRES], $properties[\'cacheOptions\']);
    }
} else {
    $properties = $cached[\'properties\'];
    $output = $cached[\'output\'];
}
$modx->setPlaceholders($properties, $properties[\'namespace\']);
if (!empty($properties[\'toPlaceholder\'])) {
    $modx->setPlaceholder($properties[\'toPlaceholder\'], $output);
    $output = \'\';
}

return $output;',
          'locked' => false,
          'properties' => 
          array (
            'namespace' => 
            array (
              'name' => 'namespace',
              'desc' => 'An execution namespace that serves as a prefix for placeholders set by a specific instance of the getPage snippet.',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'An execution namespace that serves as a prefix for placeholders set by a specific instance of the getPage snippet.',
              'area_trans' => '',
            ),
            'limit' => 
            array (
              'name' => 'limit',
              'desc' => 'The result limit per page; can be overridden in the $_REQUEST.',
              'type' => 'textfield',
              'options' => '',
              'value' => '10',
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'The result limit per page; can be overridden in the $_REQUEST.',
              'area_trans' => '',
            ),
            'offset' => 
            array (
              'name' => 'offset',
              'desc' => 'The offset, or record position to start at within the collection for rendering results for the current page; should be calculated based on page variable set in pageVarKey.',
              'type' => 'textfield',
              'options' => '',
              'value' => '0',
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'The offset, or record position to start at within the collection for rendering results for the current page; should be calculated based on page variable set in pageVarKey.',
              'area_trans' => '',
            ),
            'page' => 
            array (
              'name' => 'page',
              'desc' => 'The page to display; this is determined based on the value indicated by the page variable set in pageVarKey, typically in the $_REQUEST.',
              'type' => 'textfield',
              'options' => '',
              'value' => '0',
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'The page to display; this is determined based on the value indicated by the page variable set in pageVarKey, typically in the $_REQUEST.',
              'area_trans' => '',
            ),
            'pageVarKey' => 
            array (
              'name' => 'pageVarKey',
              'desc' => 'The key of a property that indicates the current page.',
              'type' => 'textfield',
              'options' => '',
              'value' => 'page',
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'The key of a property that indicates the current page.',
              'area_trans' => '',
            ),
            'totalVar' => 
            array (
              'name' => 'totalVar',
              'desc' => 'The key of a placeholder that must contain the total records in the limitable collection being paged.',
              'type' => 'textfield',
              'options' => '',
              'value' => 'total',
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'The key of a placeholder that must contain the total records in the limitable collection being paged.',
              'area_trans' => '',
            ),
            'pageLimit' => 
            array (
              'name' => 'pageLimit',
              'desc' => 'The maximum number of pages to display when rendering paging controls',
              'type' => 'textfield',
              'options' => '',
              'value' => '5',
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'The maximum number of pages to display when rendering paging controls',
              'area_trans' => '',
            ),
            'elementClass' => 
            array (
              'name' => 'elementClass',
              'desc' => 'The class of element that will be called by the getPage snippet instance.',
              'type' => 'textfield',
              'options' => '',
              'value' => 'modSnippet',
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'The class of element that will be called by the getPage snippet instance.',
              'area_trans' => '',
            ),
            'pageNavVar' => 
            array (
              'name' => 'pageNavVar',
              'desc' => 'The key of a placeholder to be set with the paging navigation controls.',
              'type' => 'textfield',
              'options' => '',
              'value' => 'page.nav',
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'The key of a placeholder to be set with the paging navigation controls.',
              'area_trans' => '',
            ),
            'pageNavTpl' => 
            array (
              'name' => 'pageNavTpl',
              'desc' => 'Content representing a single page navigation control.',
              'type' => 'textfield',
              'options' => '',
              'value' => '<li[[+classes]]><a[[+classes]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>',
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'Content representing a single page navigation control.',
              'area_trans' => '',
            ),
            'pageNavOuterTpl' => 
            array (
              'name' => 'pageNavOuterTpl',
              'desc' => 'Content representing the layout of the page navigation controls.',
              'type' => 'textfield',
              'options' => '',
              'value' => '[[+first]][[+prev]][[+pages]][[+next]][[+last]]',
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'Content representing the layout of the page navigation controls.',
              'area_trans' => '',
            ),
            'pageActiveTpl' => 
            array (
              'name' => 'pageActiveTpl',
              'desc' => 'Content representing the current page navigation control.',
              'type' => 'textfield',
              'options' => '',
              'value' => '<li[[+activeClasses]]><a[[+activeClasses:default=` class="active"`]][[+title]] href="[[+href]]">[[+pageNo]]</a></li>',
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'Content representing the current page navigation control.',
              'area_trans' => '',
            ),
            'pageFirstTpl' => 
            array (
              'name' => 'pageFirstTpl',
              'desc' => 'Content representing the first page navigation control.',
              'type' => 'textfield',
              'options' => '',
              'value' => '<li class="control"><a[[+classes]][[+title]] href="[[+href]]">First</a></li>',
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'Content representing the first page navigation control.',
              'area_trans' => '',
            ),
            'pageLastTpl' => 
            array (
              'name' => 'pageLastTpl',
              'desc' => 'Content representing the last page navigation control.',
              'type' => 'textfield',
              'options' => '',
              'value' => '<li class="control"><a[[+classes]][[+title]] href="[[+href]]">Last</a></li>',
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'Content representing the last page navigation control.',
              'area_trans' => '',
            ),
            'pagePrevTpl' => 
            array (
              'name' => 'pagePrevTpl',
              'desc' => 'Content representing the previous page navigation control.',
              'type' => 'textfield',
              'options' => '',
              'value' => '<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&lt;&lt;</a></li>',
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'Content representing the previous page navigation control.',
              'area_trans' => '',
            ),
            'pageNextTpl' => 
            array (
              'name' => 'pageNextTpl',
              'desc' => 'Content representing the next page navigation control.',
              'type' => 'textfield',
              'options' => '',
              'value' => '<li class="control"><a[[+classes]][[+title]] href="[[+href]]">&gt;&gt;</a></li>',
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'Content representing the next page navigation control.',
              'area_trans' => '',
            ),
            'cache' => 
            array (
              'name' => 'cache',
              'desc' => 'If true, unique page requests will be cached according to addition cache properties.',
              'type' => 'combo-boolean',
              'options' => '',
              'value' => false,
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'If true, unique page requests will be cached according to addition cache properties.',
              'area_trans' => '',
            ),
            'cache_key' => 
            array (
              'name' => 'cache_key',
              'desc' => 'The key of the cache provider to use; leave empty to use the cache_resource_key cache partition (default is "resource").',
              'type' => 'textfield',
              'options' => '',
              'value' => false,
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'The key of the cache provider to use; leave empty to use the cache_resource_key cache partition (default is "resource").',
              'area_trans' => '',
            ),
            'cache_handler' => 
            array (
              'name' => 'cache_handler',
              'desc' => 'The cache provider implementation to use; leave empty unless you are caching to a custom cache_key.',
              'type' => 'textfield',
              'options' => '',
              'value' => false,
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'The cache provider implementation to use; leave empty unless you are caching to a custom cache_key.',
              'area_trans' => '',
            ),
            'cache_expires' => 
            array (
              'name' => 'cache_expires',
              'desc' => 'The number of seconds before the cached pages expire and must be regenerated; leave empty to use the cache provider option for cache_expires.',
              'type' => 'textfield',
              'options' => '',
              'value' => false,
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'The number of seconds before the cached pages expire and must be regenerated; leave empty to use the cache provider option for cache_expires.',
              'area_trans' => '',
            ),
            'pageNavScheme' => 
            array (
              'name' => 'pageNavScheme',
              'desc' => 'Optionally specify a scheme for use when generating page navigation links; will use link_tag_scheme if empty or not specified (default is empty).',
              'type' => 'textfield',
              'options' => '',
              'value' => '',
              'lexicon' => NULL,
              'area' => '',
              'desc_trans' => 'Optionally specify a scheme for use when generating page navigation links; will use link_tag_scheme if empty or not specified (default is empty).',
              'area_trans' => '',
            ),
          ),
          'moduleguid' => '',
          'static' => false,
          'static_file' => '',
          'content' => '/**
 * @package getpage
 */
$output = \'\';

$properties =& $scriptProperties;
$properties[\'page\'] = (isset($_GET[$properties[\'pageVarKey\']]) && ($page = intval($_GET[$properties[\'pageVarKey\']]))) ? $page : null;
if ($properties[\'page\'] === null) {
    $properties[\'page\'] = (isset($_REQUEST[$properties[\'pageVarKey\']]) && ($page = intval($_REQUEST[$properties[\'pageVarKey\']]))) ? $page : 1;
}
$properties[\'limit\'] = (isset($_GET[\'limit\'])) ? intval($_GET[\'limit\']) : null;
if ($properties[\'limit\'] === null) {
    $properties[\'limit\'] = (isset($_REQUEST[\'limit\'])) ? intval($_REQUEST[\'limit\']) : intval($limit);
}
$properties[\'offset\'] = (!empty($properties[\'limit\']) && !empty($properties[\'page\'])) ? ($properties[\'limit\'] * ($properties[\'page\'] - 1)) : 0;
$properties[\'totalVar\'] = empty($totalVar) ? "total" : $totalVar;
$properties[$properties[\'totalVar\']] = !empty($properties[$properties[\'totalVar\']]) && $total = intval($properties[$properties[\'totalVar\']]) ? $total : 0;
$properties[\'pageOneLimit\'] = (!empty($pageOneLimit) && $pageOneLimit = intval($pageOneLimit)) ? $pageOneLimit : $properties[\'limit\'];
$properties[\'actualLimit\'] = $properties[\'limit\'];
$properties[\'pageLimit\'] = isset($pageLimit) && is_numeric($pageLimit) ? intval($pageLimit) : 5;
$properties[\'element\'] = empty($element) ? \'\' : $element;
$properties[\'elementClass\'] = empty($elementClass) ? \'modChunk\' : $elementClass;
$properties[\'pageNavVar\'] = empty($pageNavVar) ? \'page.nav\' : $pageNavVar;
$properties[\'pageNavTpl\'] = !isset($pageNavTpl) ? "<li[[+classes]]><a[[+classes]][[+title]] href=\\"[[+href]]\\">[[+pageNo]]</a></li>" : $pageNavTpl;
$properties[\'pageNavOuterTpl\'] = !isset($pageNavOuterTpl) ? "[[+first]][[+prev]][[+pages]][[+next]][[+last]]" : $pageNavOuterTpl;
$properties[\'pageActiveTpl\'] = !isset($pageActiveTpl) ? "<li[[+activeClasses:default=` class=\\"active\\"`]]><a[[+activeClasses:default=` class=\\"active\\"`]][[+title]] href=\\"[[+href]]\\">[[+pageNo]]</a></li>" : $pageActiveTpl;
$properties[\'pageFirstTpl\'] = !isset($pageFirstTpl) ? "<li class=\\"control\\"><a[[+title]] href=\\"[[+href]]\\">First</a></li>" : $pageFirstTpl;
$properties[\'pageLastTpl\'] = !isset($pageLastTpl) ? "<li class=\\"control\\"><a[[+title]] href=\\"[[+href]]\\">Last</a></li>" : $pageLastTpl;
$properties[\'pagePrevTpl\'] = !isset($pagePrevTpl) ? "<li class=\\"control\\"><a[[+title]] href=\\"[[+href]]\\">&lt;&lt;</a></li>" : $pagePrevTpl;
$properties[\'pageNextTpl\'] = !isset($pageNextTpl) ? "<li class=\\"control\\"><a[[+title]] href=\\"[[+href]]\\">&gt;&gt;</a></li>" : $pageNextTpl;
$properties[\'toPlaceholder\'] = !empty($toPlaceholder) ? $toPlaceholder : \'\';
$properties[\'cache\'] = isset($cache) ? (boolean) $cache : (boolean) $modx->getOption(\'cache_resource\', null, false);
if (empty($cache_key)) $properties[xPDO::OPT_CACHE_KEY] = $modx->getOption(\'cache_resource_key\', null, \'resource\');
if (empty($cache_handler)) $properties[xPDO::OPT_CACHE_HANDLER] = $modx->getOption(\'cache_resource_handler\', null, \'xPDOFileCache\');
if (empty($cache_expires)) $properties[xPDO::OPT_CACHE_EXPIRES] = (integer) $modx->getOption(\'cache_resource_expires\', null, 0);

if ($properties[\'page\'] == 1 && $properties[\'pageOneLimit\'] !== $properties[\'actualLimit\']) {
    $properties[\'limit\'] = $properties[\'pageOneLimit\'];
}

if ($properties[\'cache\']) {
    $properties[\'cachePageKey\'] = $modx->resource->getCacheKey() . \'/\' . $properties[\'page\'] . \'/\' . md5(http_build_query($modx->request->getParameters()) . http_build_query($scriptProperties));
    $properties[\'cacheOptions\'] = array(
        xPDO::OPT_CACHE_KEY => $properties[xPDO::OPT_CACHE_KEY],
        xPDO::OPT_CACHE_HANDLER => $properties[xPDO::OPT_CACHE_HANDLER],
        xPDO::OPT_CACHE_EXPIRES => $properties[xPDO::OPT_CACHE_EXPIRES],
    );
}
$cached = false;
if ($properties[\'cache\']) {
    if ($modx->getCacheManager()) {
        $cached = $modx->cacheManager->get($properties[\'cachePageKey\'], $properties[\'cacheOptions\']);
    }
}
if (empty($cached) || !isset($cached[\'properties\']) || !isset($cached[\'output\'])) {
    $elementObj = $modx->getObject($properties[\'elementClass\'], array(\'name\' => $properties[\'element\']));
    if ($elementObj) {
        $elementObj->setCacheable(false);
        if (!empty($properties[\'toPlaceholder\'])) {
            $elementObj->process($properties);
            $output = $modx->getPlaceholder($properties[\'toPlaceholder\']);
        } else {
            $output = $elementObj->process($properties);
        }
    }

    include_once $modx->getOption(\'getpage.core_path\',$properties,$modx->getOption(\'core_path\', $properties, MODX_CORE_PATH) . \'components/getpage/\').\'include.getpage.php\';

    $qs = $modx->request->getParameters();
    $properties[\'qs\'] =& $qs;

    $totalSet = $modx->getPlaceholder($properties[\'totalVar\']);
    $properties[$properties[\'totalVar\']] = (($totalSet = intval($totalSet)) ? $totalSet : $properties[$properties[\'totalVar\']]);
    if (!empty($properties[$properties[\'totalVar\']]) && !empty($properties[\'actualLimit\'])) {
        if ($properties[\'pageOneLimit\'] !== $properties[\'actualLimit\']) {
            $adjustedTotal = $properties[$properties[\'totalVar\']] - $properties[\'pageOneLimit\'];
            $properties[\'pageCount\'] = $adjustedTotal > 0 ? ceil($adjustedTotal / $properties[\'actualLimit\']) + 1 : 1;
        } else {
            $properties[\'pageCount\'] = ceil($properties[$properties[\'totalVar\']] / $properties[\'actualLimit\']);
        }
    } else {
        $properties[\'pageCount\'] = 1;
    }
    if (empty($properties[$properties[\'totalVar\']]) || empty($properties[\'actualLimit\']) || $properties[$properties[\'totalVar\']] <= $properties[\'actualLimit\'] || ($properties[\'page\'] == 1 && $properties[$properties[\'totalVar\']] <= $properties[\'pageOneLimit\'])) {
        $properties[\'page\'] = 1;
    } else {
        $pageNav = getpage_buildControls($modx, $properties);
        $properties[$properties[\'pageNavVar\']] = $modx->newObject(\'modChunk\')->process(array_merge($properties, $pageNav), $properties[\'pageNavOuterTpl\']);
        if ($properties[\'page\'] > 1) {
            $qs[$properties[\'pageVarKey\']] = $properties[\'page\'];
        }
    }

    $properties[\'firstItem\'] = $properties[\'offset\'] + 1;
    $properties[\'lastItem\'] = ($properties[\'offset\'] + $properties[\'limit\']) < $totalSet ? ($properties[\'offset\'] + $properties[\'limit\']) : $totalSet;

    $properties[\'pageUrl\'] = $modx->makeUrl($modx->resource->get(\'id\'), \'\', $qs);
    if ($properties[\'cache\'] && $modx->getCacheManager()) {
        $cached = array(\'properties\' => $properties, \'output\' => $output);
        $modx->cacheManager->set($properties[\'cachePageKey\'], $cached, $properties[xPDO::OPT_CACHE_EXPIRES], $properties[\'cacheOptions\']);
    }
} else {
    $properties = $cached[\'properties\'];
    $output = $cached[\'output\'];
}
$modx->setPlaceholders($properties, $properties[\'namespace\']);
if (!empty($properties[\'toPlaceholder\'])) {
    $modx->setPlaceholder($properties[\'toPlaceholder\'], $output);
    $output = \'\';
}

return $output;',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
        ),
      ),
      'phpthumbof' => 
      array (
        'fields' => 
        array (
          'id' => 3,
          'source' => 0,
          'property_preprocess' => false,
          'name' => 'phpthumbof',
          'description' => 'A custom output filter that generates thumbnails securely with phpThumb.',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => '/**
 * phpThumbOf
 *
 * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>
 *
 * phpThumbOf is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation; either version 2 of the License, or (at your option) any
 * later version.
 *
 * phpThumbOf is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * phpThumbOf; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * @package phpthumbof
 */
/**
 * A custom output filter for phpThumb
 *
 * @var modX $modx
 * @var array $scriptProperties
 * @var phpThumbOf $phpThumbOf
 * @var string $input
 * @var string|array $options
 *
 * @package phpthumbof
 */
if (empty($modx)) return \'\';
if (!$modx->loadClass(\'modPhpThumb\',$modx->getOption(\'core_path\').\'model/phpthumb/\',true,true)) {
    $modx->log(modX::LOG_LEVEL_ERROR,\'[phpThumbOf] Could not load modPhpThumb class.\');
    return \'\';
}
if (empty($input)) {
    $modx->log(modX::LOG_LEVEL_DEBUG,\'[phpThumbOf] Empty image path passed, aborting.\');
    return \'\';
}
$modelPath = $modx->getOption(\'phpthumbof.core_path\',null,$modx->getOption(\'core_path\').\'components/phpthumbof/\').\'model/\';
require_once $modelPath.\'phpthumbof/phpthumbof.class.php\';
$phpThumbOf = new phpThumbOf($modx,$scriptProperties);

$phpThumbOf->getCacheDirectory();
$phpThumbOf->ensureCacheDirectoryIsWritable();

$thumbnail = $phpThumbOf->createThumbnailObject();
$thumbnail->setInput($input);
$thumbnail->setOptions($options);
$thumbnail->initializeService();
return $thumbnail->render();',
          'locked' => false,
          'properties' => NULL,
          'moduleguid' => '',
          'static' => false,
          'static_file' => '',
          'content' => '/**
 * phpThumbOf
 *
 * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>
 *
 * phpThumbOf is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation; either version 2 of the License, or (at your option) any
 * later version.
 *
 * phpThumbOf is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * phpThumbOf; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * @package phpthumbof
 */
/**
 * A custom output filter for phpThumb
 *
 * @var modX $modx
 * @var array $scriptProperties
 * @var phpThumbOf $phpThumbOf
 * @var string $input
 * @var string|array $options
 *
 * @package phpthumbof
 */
if (empty($modx)) return \'\';
if (!$modx->loadClass(\'modPhpThumb\',$modx->getOption(\'core_path\').\'model/phpthumb/\',true,true)) {
    $modx->log(modX::LOG_LEVEL_ERROR,\'[phpThumbOf] Could not load modPhpThumb class.\');
    return \'\';
}
if (empty($input)) {
    $modx->log(modX::LOG_LEVEL_DEBUG,\'[phpThumbOf] Empty image path passed, aborting.\');
    return \'\';
}
$modelPath = $modx->getOption(\'phpthumbof.core_path\',null,$modx->getOption(\'core_path\').\'components/phpthumbof/\').\'model/\';
require_once $modelPath.\'phpthumbof/phpthumbof.class.php\';
$phpThumbOf = new phpThumbOf($modx,$scriptProperties);

$phpThumbOf->getCacheDirectory();
$phpThumbOf->ensureCacheDirectoryIsWritable();

$thumbnail = $phpThumbOf->createThumbnailObject();
$thumbnail->setInput($input);
$thumbnail->setOptions($options);
$thumbnail->initializeService();
return $thumbnail->render();',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
        ),
      ),
    ),
    'modTemplateVar' => 
    array (
    ),
  ),
);