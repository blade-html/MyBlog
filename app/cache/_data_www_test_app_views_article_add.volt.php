<?php echo Phalcon\Tag::javascriptInclude('library/ckeditor/ckeditor.js'); ?>

<textarea name="content"></textarea>
<script type="text/javascript">
CKEDITOR.replace("content");
</script>
