<div class="section equipment">


    <h2>Продукция</h2>

    <?php foreach ($pgs as $pg): ?>
        <div class="equipment-box">
            <a name="<?php echo $pg->name; ?>"></a>
            <h4><?php echo $pg->name; ?></h4>
            <?php if (count($pg->equipment) > 5): ?>
                <span class="more-equipment"
                      onclick="showEquipment($(this))">еще <?php echo(count($pg->equipment) - 5); ?>
                    производителя
            </span>
            <?php endif; ?>
            <ul class="equipment-list">
                <?php $index = 1; ?>
                <?php foreach ($pg->equipment as $equipment): ?>
                    <?php if ($index > 5) {
                        $hide_class = 'hide_class';
                    } else {
                        $hide_class = '';
                    }
                    ?>
                    <li class="<?php echo $hide_class; ?>">
                        <img
                            src="<?php echo Yii::app()->request->baseUrl; ?>/uploads/<?php echo $equipment->uploadedfiles->name; ?>"/>
                        <a href="/site/production?id=<?php echo $pg->id ?>#<?php echo $equipment->name; ?>"><?php echo $equipment->name; ?></a>
                    </li>
                    <?php $index++; ?>
                <?php endforeach; ?>
            </ul>
            <div class="anchor"></div>
        </div>
        <?php $index = 1; ?>
    <?php endforeach; ?>
</div>
<script>
    function showEquipment(el) {
        el.siblings('.equipment-list').find('.hide_class').show();
        el.remove();
    }
</script>