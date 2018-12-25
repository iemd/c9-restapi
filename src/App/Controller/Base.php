<?php
namespace App\Controller;
use \Slim\Container;

class Base{	

	protected $c; 
	
    public function __construct(Container $container)
    {
        $this->c= $container;
    }	
}