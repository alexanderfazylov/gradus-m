<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/fileuploader.js"></script>


<form id="sample" class="classic_form">
    <label>
        <span>Адрсе ссылки логотипа продукта</span>
        <input type="text" value="" placeholder="http://adres.ru"/>
    </label>
    <label>
        <span>Картинка логотипа продукта</span>

        <div class="uploded_file">
            <div id="download_file_file_id_mini">
                <noscript>
                    <p>Включите JavaScript чтобы испльзовать file uploader.</p>
                </noscript>
            </div>
        </div>
        <script>
            var uploader = new qq.FileUploader({
                element: document.getElementById('download_file_file_id_mini'),
                multiple: false,
                action: '/userAdmin/admin/downloadImg',
                debug: false,
                onSubmit: function (id, fileName) {
                    //
                },
                onComplete: function (id, fileName, responseText) {
                    //
                }
            });
        </script>
    </label>
    <label>
        <span>Описание продукта</span>

        <p>Для создания стилизованного списка, используйте разметку:</p>

        <p>&#60;ul&#62;<br/>
            &#60;li&#62;Первый элемент&#60;/li&#62;<br/>
            &#60;li&#62;Второй элемент&#60;/li&#62;<br/>
            &#60;li&#62;Третий элемент&#60;/li&#62;<br/>
            &#60;/ul&#62;

            <br/>
            <br/>
            Для выделениея абзаца, используйте разметку
            <br/>&#60;p&#62;Абзац&#60;/p&#62;
            <textarea id='my_text' name="Equipment[text]" style="width: 100%;min-height: 400px">
                <?php echo $model->text; ?>
            </textarea>
        </p>
    </label>
    <label>
        <span>Картинка внизу под текстом</span>

        <div class="uploded_file">
            <div id="uploded_file_file_id_img">
                <noscript>
                    <p>Включите JavaScript чтобы испльзовать file uploader.</p>
                </noscript>
            </div>
        </div>
        <script>
            var uploader = new qq.FileUploader({
                element: document.getElementById('uploded_file_file_id_img'),
                multiple: false,
                action: '/userAdmin/admin/downloadImg',
                debug: false,
                onSubmit: function (id, fileName) {
                    //
                },
                onComplete: function (id, fileName, responseText) {
                    //
                }
            });
        </script>
    </label>

    <input type="submit" value="Сохранить" onclick="saveEqText(<?php echo $model->id; ?>);return false"/>
</form>
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
<style>
    .uploded_file {
        display: inline-block !important;
        margin-left: 20px !important;
    }
</style>