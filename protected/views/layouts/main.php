<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="language" content="ru" />
    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css" />
    <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery-2.0.0.js"></script>
    <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/action.js"></script>
    <title><?php echo CHtml::encode($this->pageTitle); ?></title>
  </head>
  <body>
    <div id="wrap" class="maxwidth">
      <div id="header">
        <!-- Header -->
        <div id="top-line">
          <div class="top-contacts">
            <div class="description">Телефон для связи</div>
            <div class="phone"><span class="code">8 (843) </span><span class="phone-number">225-58-85</span></div>
          </div>
          <a class="logo" href="<?php echo Yii::app()->request->baseUrl; ?>/site/index"></a>
        </div>

        <!-- Menu -->
        <?php $this->renderPartial('application.views.layouts._menu', array('current_item' => 'about')) ?>
      </div>

      <div id="content">
        <?php echo $content; ?>
        <div class="anchor"></div>
      </div>
      <div class="anchor"></div>
      <div id="all-site-menu" onclick="stopPrepagenation(event)">
        <table id="full-menu">
          <tr>
            <td width="80">
              <a class="full-menu-section" href="/site/index">О компании</a>

              <a href="">О нас</a>
              <a href="">Вакансии</a>
              <a href="">Контакты</a>
            </td>
            <td width="130">
              <a class="full-menu-section" href="/site/equipment">Продукция</a>

              <a href="">Автоматика котлов</a>
              <a href="">Котлы настенные</a>
              <a href="">Котлы напольные</a>
              <a href="">Радиаторы отопления</a>
              <a href="">Водонагреватели</a>
              <a href="">Теплые полы</a>
              <a href="">Трубы и фитинги</a>
              <a href="">Насосы</a>
            </td>
            <td width="145">
              <a class="full-menu-section" href="/site/equipment">Услуги</a>

              <a href="">Проектирование и расчеты</a>
              <a href="">Подбор оборудования</a>
              <a href="">Монтаж систем отопления и водоснабжения</a>
              <a href="">Автоматизация системы управления</a>
              <a href="">Монтаж теплого пола</a>
              <a href="">Монтаж водоотведения</a>
              <a href="">Установка сантехники</a>
              <a href="">Вентиляция</a>
            </td>
            <td width="90">
              <a class="full-menu-section" href="/site/works">Работы</a>

              <a href="">Коттеджи</a>
              <a href="">Квартиры</a>
              <a href="">Коммерческая недвижимость</a>
            </td>
            <td width="40">
              <a class="full-menu-section" href="/site/contacts">Контакты</a>
            </td>
          </tr>
        </table>
      </div>
      <div class="push"></div>
    </div>
    <div id="footer" class="maxwidth">
      <div class="copyright"><?php echo $this->contacts['coperite']; ?></div>
      <div class="company-name"><?php echo $this->contacts['full_name']; ?></div>
      <table class="contacts">
        <tr>
          <td width="240">
            <?php echo $this->contacts['anschrift']; ?><br/>
            Телефон:  <?php echo $this->contacts['tel']; ?><br/>
            Электронная почта: <a href="mailto:<?php echo $this->contacts['email']; ?>"> <?php echo $this->contacts['email']; ?></a>
          </td>
          <td>
            Тел. горячей линии:  <?php echo $this->contacts['tel_hotline']; ?><br/>
            Тел. мобильный:  <?php echo $this->contacts['tel_handy']; ?>
          </td>
        </tr>
      </table>
    </div>
  </body>
</html>
