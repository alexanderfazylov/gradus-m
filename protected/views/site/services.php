<div class="section services">
    <h2>Услуги</h2>
    <table class="services-table">
        <tr>
            <td>
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/services-design-and-calculations.png"/>

                <div class="servise-description">
                    <a name="design"></a>
                    <h4><?php echo $service[0]->name; ?></h4>
                    <?php echo $service[0]->val; ?>
                </div>
            </td>
            <td class="price">
                <?php if (!empty($service[0]->pay)) { echo 'от '.$service[0]->pay.' руб.'; } ?>
            </td>
        </tr>
        <tr>
            <td>
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/services-equipment-selection.png"/>

                <div class="servise-description">
                    <a name="equipment"></a>
                    <h4><?php echo $service[1]->name; ?></h4>
                    <?php echo $service[1]->val; ?>
                </div>
            </td>
            <td class="price">
                <?php if (!empty($service[1]->pay)) { echo 'от '.$service[1]->pay.' руб.'; } ?>
            </td>
        </tr>
        <tr>
            <td>
                <img
                    src="<?php echo Yii::app()->request->baseUrl; ?>/img/services-heating-and-water-supply-installation.png"/>

                <div class="servise-description">
                    <a name="montage"></a>
                    <h4><?php echo $service[2]->name; ?></h4>
                    <?php echo $service[2]->val; ?>
                </div>
            </td>
            <td class="price">
                <?php if (!empty($service[2]->pay)) { echo 'от '.$service[2]->pay.' руб.'; } ?>
            </td>
        </tr>
        <tr>
            <td>
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/services-automated-control-systems.png"/>

                <div class="servise-description">
                    <a name="aius"></a>
                    <h4><?php echo $service[3]->name; ?></h4>
                    <?php echo $service[3]->val; ?>
                </div>
            </td>
            <td class="price">
                <?php if (!empty($service[3]->pay)) { echo 'от '.$service[3]->pay.' руб.'; } ?>
            </td>
        </tr>
        <tr>
            <td>
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/services-heated-floor-installation.png"/>

                <div class="servise-description">
                    <a name="automation"></a>
                    <h4><?php echo $service[4]->name; ?></h4>
                    <?php echo $service[4]->val; ?>
                </div>
            </td>
            <td class="price">
                <?php if (!empty($service[4]->pay)) { echo 'от '.$service[4]->pay.' руб. м<span class="sup">2</span>'; } ?>
            </td>
        </tr>
        <tr>
            <td>
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/services-maintenance-of-boiler-equipment.png"/>

                <div class="servise-description">
                    <a name="sanitation"></a>
                    <h4><?php echo $service[5]->name; ?></h4>
                    <?php echo $service[5]->val; ?>
                </div>
            </td>
            <td class="price">
                <?php if (!empty($service[5]->pay)) { echo 'от '.$service[5]->pay.' руб.'; } ?>
            </td>
        </tr>
        <tr>
            <td>
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/services-sanitary-installation.png"/>

                <div class="servise-description">
                    <a name="engineers"></a>
                    <h4><?php echo $service[6]->name; ?></h4>
                    <?php echo $service[6]->val; ?>
                </div>
            </td>
            <td class="price">
                <?php if (!empty($service[6]->pay)) { echo 'от '.$service[6]->pay.' руб.'; } ?>
            </td>
        </tr>
        <tr>
            <td>
                <img src="<?php echo Yii::app()->request->baseUrl; ?>/img/services-ventilation.png"/>

                <div class="servise-description">
                    <a name="ventilation"></a>
                    <h4><?php echo $service[7]->name; ?></h4>
                    <?php echo $service[7]->val; ?>
                </div>
            </td>
            <td class="price">
                <?php if (!empty($service[7]->pay)) { echo 'от '.$service[7]->pay.' руб.'; } ?>
            </td>
        </tr>
    </table>
</div>