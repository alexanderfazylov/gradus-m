<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/fileuploader.js"></script>
<script>
    var base_url = "<?php echo $this->createAbsoluteUrl('/'); ?>";
</script>

<h1>Создание описания <b><?php echo $model->name; ?></b></h1>
<h2>Загрузка изображения на сервер</h2>
<div class="uploded_file_">
    <div id="download_file">
        <noscript>
            <p>Включите JavaScript чтобы испльзовать file uploader.</p>
        </noscript>
    </div>
</div>
<ul class="uload_list_img">
</ul>
<div class="anchor"></div>
<h2>Редактирвание текста</h2>
<script>
    var uploader = new qq.FileUploader({
        element: document.getElementById('download_file'),
        multiple: false,
        action: '/userAdmin/admin/downloadImg',
        debug: false,
        onSubmit: function (id, fileName) {
            //
        },
        onComplete: function (id, fileName, responseText) {
            var now_url = base_url+'/uploads/'+responseText.filename;
            $('.uload_list_img').append('<li><input type="text" value="'+now_url+'"></li>');

        }
    });
</script>

<div id="sample">
    <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/nicEdit-latest.js"></script>
    <script type="text/javascript">
        //<![CDATA[
        bkLib.onDomLoaded(function () {
            nicEditors.allTextAreas()
        });
        //]]>
    </script>
    <textarea id='my_text' name="Equipment[text]" style="width: 100%;min-height: 400px">
        <?php echo $model->text; ?>
    </textarea><br/>
    <br/>
    <input type="submit" value="Сохранить" onclick="saveEqText(<?php echo $model->id; ?>);return false"/>

    <script>
        function saveEqText(id) {
            $.ajax({
                type: "POST",
                url: '/userAdmin/admin/saveEqText?id=' + id,
                dataType: "json",
                data: ({
                    'text': $('.nicEdit-main').html()
                }),
                success: function (data) {
                    if (data == null) {
                        alert('Ошибка. Попробуйте перезагрузить страницу.');
                    } else {
                        alert('Сохранено');
                    }

                }
            });
        }
    </script>
