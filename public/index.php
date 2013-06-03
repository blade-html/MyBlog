<?php 

error_reporting(E_ALL);

try {
    /**
      * Read The Configuration
      */
    $config = new Phalcon\Config\Adapter\Ini(__DIR__ . '/../app/config/config.ini');

    $loader = new Phalcon\Loader();

    /**
      * RegisterDirs
      */
    $loader->registerDirs(
        array(
            __DIR__ . $config->app->controllersDir,
            __DIR__ . $config->app->pluginsDir,
            __DIR__ . $config->app->libraryDir,
            __DIR__ . $config->app->modelsDir,
        )
    )->register();

    /**
      * The FactoryDefault
      */
    $di = new Phalcon\DI\FactoryDefault();
    print_r($di);exit;
} catch (Phalcon\Exception $e) {
    echo "Phalcon Exception " . $e->getMessage();
} catch (PDOException $e) {
    echo "PDOException " . $e->getMessage();
}
