<!DOCTYPE html>
<html>
	<head>
        <meta charset="utf-8" />
        {{ get_title() }}
        {{ stylesheet_link('library/fonts/font.css') }}
        {{ stylesheet_link('library/css/style.css') }}
        {{ stylesheet_link('library/css/page.css') }}
	</head>
	<body>
		{{ content() }}
        {{ javascript_include('library/js/jquery.min.js') }}
        {{ javascript_include('library/js/jquery-ui.min.js') }}
        {{ javascript_include('library/js/modernizr.min.js') }}
        {{ javascript_include('library/js/customscript.js') }}
        {{ javascript_include('library/js/comment-reply.min.js') }}
	</body>
</html>
