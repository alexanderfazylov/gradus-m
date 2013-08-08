<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/fileuploader.js"></script>
<h1>Тэги</h1>
<h2>Создать тэг</h2>
<form id="tags" class="classic_form">
    <label>
        <span>Название нового тега</span>
        <input type="text" name="Tag[text]">
    </label>
    <label>
        <span>id тэга</span>
        <input type="text" name="Tag[tag]">
    </label>
    <input type="submit" onclick="saveTag();return false" value="Создать">

    <div class="anchor"></div>
</form>

<h2>Все тэги</h2>
<ul class="tag_list">
    <?php foreach ($tags as $tag) : ?>
        <li><?php echo $tag->text ?></li>
    <?php endforeach; ?>
</ul>
<hr>
<h1>Портфолио</h1>
<h2>Создать портфолио</h2>
<form id="portfolio" class="classic_form">
    <label>
        <span>Название</span>
        <input type="text" name="Portfolio[title]">
    </label>
    <label>
        <span>Адрес</span>
        <input type="text" name="Portfolio[address]">
    </label>
    <label>
        <span>Площадь</span>
        <input type="text" name="Portfolio[area]">
    </label>
    <input type="submit" onclick="savePortfolio();return false" value="Создать">

    <div class="anchor"></div>
</form>

<h2>Все портфолио</h2>
<?php foreach ($portfolios as $portfolio): ?>
    <div class=""><?php echo $portfolio->title; ?></div>
<?php endforeach; ?>


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
        onSubmit: function (id, fileName) {
            //
        },
        onComplete: function (id, fileName, responseText) {
            //
        }
    });
</script>
<script>
    function saveTag() {
        $.ajax({
            type: "POST",
            url: '/userAdmin/admin/saveTag',
            dataType: "json",
            data: $('#tags').serialize(),
            success: function (data) {
                if (data == null) {
                    alert('Ошибка. Попробуйте перезагрузить страницу.');
                } else {
                    if (data.status == 'succses') {
                        alert('Сохранено');
                        location.reload();
                    } else {
                        alert(data.text.tag);
                    }
                }

            }
        });
    }
    function savePortfolio() {
        $.ajax({
            type: "POST",
            url: '/userAdmin/admin/savePortfolio',
            dataType: "json",
            data: $('#portfolio').serialize(),
            success: function (data) {
                if (data == null) {
                    alert('Ошибка. Попробуйте перезагрузить страницу.');
                } else {
                    if (data.status == 'succses') {
                        alert('Сохранено');
                        location.reload();
                    } else {
                        alert(data.text.tag);
                    }
                }

            }
        });
    }
</script>