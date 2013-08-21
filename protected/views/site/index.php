<div id="main">
    <!-- Main banner -->
    <div id="rotator">
        <ul>
            <li class="show">
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/banner1.jpg"/>
            </li>
            <li>
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/banner2.jpg"/>
            </li>
            <li>
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/banner3.jpg"/>
            </li>
            <li>
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/banner4.jpg"/>
            </li>
            <li>
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/banner5.jpg"/>
            </li>
        </ul>
    </div>
    <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/banner-shadow.png"/>

    <!-- Benefits -->
    <table id="benefits">
        <tr>
            <td class="delivery">Бесплатная<br/>доставка</td>
            <td class="installation">Установка<br/>и обслуживание</td>
            <td class="garanty">Гарантия 5 лет</td>
            <td class="hotline">Горячая линия<br/>8 (903) 313-33-70</td>
        </tr>
    </table>

    <!-- Static banner -->
    <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/static-banner.jpg"/>
    <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/banner-shadow.png"/>

    <!-- Services -->
    <div id="services">
        <h1><span>Услуги компании</span></h1>

        <table>
            <tr>
                <td width="138">
                    <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/services-design-and-calculations.png"/>
                    <a href="<?php echo Yii::app()->request->baseUrl; ?>/site/services#design"><?php echo $service[0]->name; ?></a>
                </td>
                <td width="126">
                    <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/services-equipment-selection.png"/>
                    <a href="<?php echo Yii::app()->request->baseUrl; ?>/site/services#equipment"><?php echo $service[1]->name; ?></a>
                </td>
                <td width="134">
                    <img
                        src="<?php echo Yii::app()->request->baseUrl; ?>/img/services-heating-and-water-supply-installation.png"/>
                    <a href="<?php echo Yii::app()->request->baseUrl; ?>/site/services#montage"><?php echo $service[2]->name; ?></a>
                </td>
                <td class="br_table">
                    <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/services-automated-control-systems.png"/>
                    <a href="<?php echo Yii::app()->request->baseUrl; ?>/site/services#aius"><?php echo $service[3]->name; ?></a>
                </td>
                <td class="br_table">
                    <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/services-heated-floor-installation.png"/>
                    <a href="<?php echo Yii::app()->request->baseUrl; ?>/site/services#automation"><?php echo $service[4]->name; ?></a>
                </td>
                <td width="131">
                    <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/services-drainage-installation.png"/>
                    <a href="<?php echo Yii::app()->request->baseUrl; ?>/site/services#sanitation"><?php echo $service[5]->name; ?></a>
                </td>
                <td width="109">
                    <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/services-sanitary-installation.png"/>
                    <a href="<?php echo Yii::app()->request->baseUrl; ?>/site/services#engineers"><?php echo $service[6]->name; ?></a>
                </td>
                <td width="83">
                    <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/services-ventilation.png"/>
                    <a href="<?php echo Yii::app()->request->baseUrl; ?>/site/services#ventilation"><?php echo $service[7]->name; ?></a>
                </td>
            </tr>
        </table>

    </div>
    <!-- About -->
    <table id="about">
        <tr>
            <td width="450">
                <h2 class="main_title">О компании</h2>

                <p>Компания ООО «Теплосинтез» Основана в 2006 году году.</p>

                <p>Наша компания оказывает услуги по проектированию, монтажу и дальнейшему сервисному обслуживанию
                    систем отопления, водоснабжения и автоматизации любого уровня сложности. Кроме того мы готовы
                    оказать консультацию по подбору оптимальных материалов и оборудованию, соответствующих вашим
                    потребностям и возможностям, что является не меньшей проблемой при недостаточных знаниях современных
                    технологических возможностей и рынка сантехнического оборудования.</p>
            </td>
            <td width="430">
                <h2 class="main_title">Преимущества</h2>
                <ul class="standart-ul">
                    <li>профессиональные знания и опыт – десятки выполненных объектов различного уровня сложности</li>
                    <li>высокий уровень сервиса – мы всегда работаем для клиента</li>
                    <li>высокое качество выполненных работ</li>
                    <li>динамичность и гибкость</li>
                    <li>применение в работе исключительно качественных материалов оборудования (Viessman, Vaillant,
                        Buderus, Uponor, Purmo, Far)
                    </li>
                    <li>гарантия на все выполненные работы 5 лет</li>
                </ul>
            </td>
        </tr>
    </table>

    <!-- Equipment -->
    <div id="equipment">
        <h1><span>Продукция</span></h1>

        <ul id="vendors">
            <li>
                <a href="#" class="vendor"
                   style="background-image: url('<?php echo Yii::app()->request->baseUrl; ?>/img/equipment-viessmann.png');"><span
                        style="background-image: url('<?php echo Yii::app()->request->baseUrl; ?>/img/equipment-viessmann.png');"></span></a>
            </li>
            <li>
                <a href="#" class="vendor"
                   style="background-image: url('<?php echo Yii::app()->request->baseUrl; ?>/img/equipment-vaillant.png');"><span
                        style="background-image: url('<?php echo Yii::app()->request->baseUrl; ?>/img/equipment-vaillant.png');"></span></a>
            </li>
            <li>
                <a href="#" class="vendor"
                   style="background-image: url('<?php echo Yii::app()->request->baseUrl; ?>/img/equipment-buderus.png');"><span
                        style="background-image: url('<?php echo Yii::app()->request->baseUrl; ?>/img/equipment-buderus.png');"></span></a>
            </li>
            <li>
                <a href="#" class="vendor"
                   style="background-image: url('<?php echo Yii::app()->request->baseUrl; ?>/img/equipment-uponor.png');"><span
                        style="background-image: url('<?php echo Yii::app()->request->baseUrl; ?>/img/equipment-uponor.png');"></span></a>
            </li>
            <li>
                <a href="#" class="vendor"
                   style="background-image: url('<?php echo Yii::app()->request->baseUrl; ?>/img/equipment-purmo.png');"><span
                        style="background-image: url('<?php echo Yii::app()->request->baseUrl; ?>/img/equipment-purmo.png');"></span></a>
            </li>
        </ul>
    </div>
</div>
