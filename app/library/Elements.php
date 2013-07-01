<?php

class Elements extends Phalcon\Mvc\User\Component
{
    private $_headMenus = array(
                array(
                    "name" => "首页",
                    "url" => "/"
                ),
                array(
                    "name" => "分类",
                    "url" => "#"
                ),
                array(
                    "name" => "发表",
                    "url" => "/publish"
                ),
                array(
                    "name" => "标签",
                    "url" => "#",
                    "next" => array(
                        "PHP" => "#",
                        "Javascript" => "#",
                        "HTML5" => "#",
                    )
                ),
                array(
                    "name" => "Mobiles",
                    "url" => "#",
                    "next" => array(
                        "General Settings" => "#",
                        "Styling Options" => "#",
                    )
                )
            );

    /**
      * 获取头部menu
      */
    public function getMenu() {
        echo "<ul id=\"menu-main-navigation\" class=\"menu sf-js-enabled\">";
        foreach ($this->_headMenus as $v) {
            echo "<li class=\"menu-item\">";
            echo "<a href=\"{$v['url']}\" target=\"_blank\">{$v['name']}</a>";
            if ($v['next']) {
                echo "<ul class=\"sub-menu sf-js-enabled\" style=\"display: none; visibility: hidden;\">";
                foreach ($v['next'] as $sk => $sv) {
                    echo "<li class=\"menu-item\"><a href=\"{$sv}\">{$sk}</a></li>";
                }
                echo "</ul>";
            }
            echo "</li>";
        }
    }

    /**
      * Debug
      */
    public static function dump($var, $echo=true, $label=null, $strict=true) {
		$label = ($label === null) ? '' : rtrim($label) . ' ';
		if (!$strict) {
			if (ini_get('html_errors')) {
				$output = print_r($var, true);
				$output = '<pre>' . $label . htmlspecialchars($output, ENT_QUOTES) . '</pre>';
			} else {
				$output = $label . print_r($var, true);
			}
		} else {
			ob_start();
			var_dump($var);
			$output = ob_get_clean();
			if (!extension_loaded('xdebug')) {
				$output = preg_replace("/\]\=\>\n(\s+)/m", '] => ', $output);
				$output = '<pre>' . $label . htmlspecialchars($output, ENT_QUOTES) . '</pre>';
			}
		}
		if ($echo) {
			echo($output);
            exit;
		}else{
            return $output;
        }
	}
}
