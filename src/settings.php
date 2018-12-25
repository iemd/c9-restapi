<?php
return [
    'settings' => [
        'displayErrorDetails' => true, // set to false in production
        'addContentLengthHeader' => false, // Allow the web server to send the content-length header

        // Renderer settings
        'renderer' => [
            'template_path' => __DIR__ . '/../templates/',
        ],

        // Monolog settings
        'logger' => [
            'name' => 'slim-app',
            'path' => __DIR__ . '/../logs/app.log',
            'level' => \Monolog\Logger::DEBUG,
        ],
		
		"db" => [

            "host" => "localhost",
            "dbname" => "condoa2u_cloud9",
            "user" => "condoa2u_cloud9u",
            "pass" => "?r(45%Q3GT[L",
        ],	
    ],
];
