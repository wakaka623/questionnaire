<?php

// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
// [ 应用入口文件 ]
//访问源头

$origin = isset($_SERVER['HTTP_ORIGIN']) ? $_SERVER['HTTP_ORIGIN'] : '';
if($origin)
{
    header('Access-Control-Allow-Origin:' . $origin);
}
header('Access-Control-Allow-Credentials:true');
header('Access-Control-Allow-Headers:Content-type');
header('Content-type:application/json');
header('Access-Control-Allow-Methods:PUT,POST,GET,DELETE,OPTIONS');
// 定义应用目录
define('APP_PATH', __DIR__ . '/../application/');

// 判断是否安装
if (!is_file(APP_PATH . 'admin/command/Install/install.lock'))
{
    header("location:./install.php");
    exit;
}

// 加载框架引导文件
require __DIR__ . '/../thinkphp/start.php';
