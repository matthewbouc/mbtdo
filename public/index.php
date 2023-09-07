<?php

use App\Kernel;

require_once dirname(__DIR__).'/vendor/autoload_runtime.php';

const varies = "new";
const thisIsNew = "tag_Me";

const realTag = "actual tag";
return function (array $context) {
    return new Kernel($context['APP_ENV'], (bool) $context['APP_DEBUG']);
};
