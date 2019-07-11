<?php

use Illuminate\Support\Arr;

function dr(...$args)
{
    foreach ($args as $key => $arg) {
        if ($arg instanceof Illuminate\Contracts\Support\Arrayable) {
            $args[$key] = $arg->toArray();
        }
    }

    foreach ($args as $key => $x) {
        \Symfony\Component\VarDumper\VarDumper::dump($x);
    }
}

function ddr()
{
    $args = func_get_args();
    foreach ($args as $key => $arg) {
        if ($arg instanceof Illuminate\Contracts\Support\Arrayable) {
            $args[$key] = $arg->toArray();
        }
    }
    call_user_func_array('dd', $args);
}
