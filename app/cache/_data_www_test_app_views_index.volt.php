<!DOCTYPE html>
<html>
	<head>
        <meta charset="utf-8" />
        <?php echo Phalcon\Tag::getTitle(); ?>
        <?php echo Phalcon\Tag::stylesheetLink('library/css/style.css'); ?>
        <?php echo Phalcon\Tag::stylesheetLink('library/fonts/font'); ?>
        <?php echo Phalcon\Tag::stylesheetLink('library/css/page.css'); ?>
	</head>
	<body>
		<?php echo $this->getContent(); ?>
        <?php echo Phalcon\Tag::javascriptInclude('library/js/jquery.min.js'); ?>
        <?php echo Phalcon\Tag::javascriptInclude('library/js/jquery-ui.min.js'); ?>
        <?php echo Phalcon\Tag::javascriptInclude('library/js/modernizr.min.js'); ?>
        <?php echo Phalcon\Tag::javascriptInclude('library/js/customscript.js'); ?>
        <?php echo Phalcon\Tag::javascriptInclude('library/js/comment-reply.min.js'); ?>
	</body>
</html>
