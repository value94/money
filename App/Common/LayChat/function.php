<?php

// 获取密码
function getPass($pass)
{
    return md5(C('cfg_adminkey') . md5($pass));
}