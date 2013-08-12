<div class="section production">
    <ul class="equipment-menu">
        <?php foreach ($pgs as $pg): ?>
            <?php if ($_GET['id'] == $pg->id) {
                $active = 'active';
                $title = $pg->name;
            } else {
                $active = '';
            }
            ?>
            <li class="<?php echo $active; ?>"><a
                    href="/site/production?id=<?php echo $pg->id; ?>"><?php echo $pg->name; ?></a></li>
        <?php endforeach; ?>


    </ul>
    <div class="equipment-content">
        <p class="mini-title">Продукция</p>

        <h2><?php echo $title ?></h2>
        <?php foreach ($equipments as $equipment): ?>
            <?php if (!empty($equipment->text)): ?>
                <a name='<?php echo $equipment->name ?>'></a>
                <div class="company">
                    <?php echo $equipment->text ?>
                </div>
            <?php endif; ?>
        <?php endforeach; ?>
    </div>
</div>
