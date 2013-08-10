<h1>Контакты</h1>
<form id="user_data" class="classic_form">
    <?php foreach ($contacts as $attribute => $val): ?>
        <label>
        <span>
        <?php echo $attribute; ?>
            </span>
            <?php if($attribute == 'map'):?>
                <textarea style="width: 500px;height: 100px;"  name="Contacts[<?php echo $attribute; ?>]" ><?php echo $val; ?></textarea>
                <span class="map_hint" >
                    Воспользуйтесь <a href="http://api.yandex.ru/maps/tools/constructor/">Конструктором карт</a>, что бы получить необходимый код.
                    Не забудь изменить размер окна карты в скрипет(ширина высота)
                </span>
             <?php else:?>
                <input type="text" name="Contacts[<?php echo $attribute; ?>]" value="<?php echo $val; ?>">
            <?php endif;?>
        </label>
    <?php endforeach; ?>
    <input type="submit" value="Изменить" onclick="updateUser();return false">
</form>
<div class="anchor"></div>

<script>
    function updateUser() {
        $.ajax({
            type: "POST",
            url: '/userAdmin/admin/main',
            dataType: "json",
            data: $('#user_data').serialize(),
            success: function (data) {
                if (data == null) {
                    alert('Ошибка. Попробуйте перезагрузить страницу.');
                } else {
                    alert('Изменено');
                    location.reload();
                }

            }
        });
    }
</script>
<div class="anchor"></div>

