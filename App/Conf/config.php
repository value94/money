<?php
return array(
    //'配置项'=>'配置值'
    'LOAD_EXT_CONFIG' => 'config.db,config.site,config.install', // 加载扩展配置文件
    'APP_GROUP_LIST' => 'Home,Admin,Pay', //项目分组设定
    'DEFAULT_GROUP' => 'Home', //默认分组
    'URL_HTML_SUFFIX' => 'html',
    'TMPL_FILE_DEPR' => '_',
    'URL_MODEL' => 0,
    'APP_DEBUG' => true,
    'LOG_RECORD' => true, // 日志记录袭
    'LOG_LEVEL' => 'EMERG, ALERT, CRIT, ERR, WARN, NOTIC, INFO, DEBUG, SQL ', // 只记录EMERG ALERT CRIT ERR 错误
    'LOG_EXCEPTION_RECORD' => true, // 记录异常信息日志
    'DB_SQL_LOG' => true, // 记录SQL信息是否打开。
    'TAGLIB_LOAD' => true,//加载标签库打开

    'APP_AUTOLOAD_PATH' => '@.TagLib',
    'TAGLIB_PRE_LOAD' => 'Somnus',
    //默认显示的用户分组
    'user_group' => [
        '1' => '客服组',
        '2' => '客户组',
    ]

);
?>