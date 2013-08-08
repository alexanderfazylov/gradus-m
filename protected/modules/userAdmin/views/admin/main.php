<h1>Лого</h1>
<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/fileuploader.js"></script>
<div class="uploded_file">
    <div class="">
        <div id="download_file">
            <noscript>
                <p>Включите JavaScript чтобы испльзовать file uploader.</p>
            </noscript>
        </div>
    </div>
</div>
<div class="anchor"></div>

<script>
    var uploader = new qq.FileUploader({
        element: document.getElementById('download_file'),
        multiple: false,
        action: '/userAdmin/admin/downloadFile?type=1',
        debug: false,
        onSubmit: function(id, fileName){
            //
        },
        onComplete: function(id, fileName, responseText)
        {
           //
        }
    });
</script>

<h1>Контакты</h1>
<form id="user_data" class="classic_form">
    <?php foreach ($contacts as $attribute => $val): ?>
        <label>
        <span>
        <?php echo $attribute; ?>
            </span>
            <input type="text" name="Contacts[<?php echo $attribute; ?>]" value="<?php echo $val; ?>">
        </label>
    <?php endforeach; ?>
    <input type="submit" value="Изменить" onclick="updateUser();return false">
</form>
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

<h1>Услуги компании</h1>
