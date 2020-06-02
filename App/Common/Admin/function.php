<?php
/**
 * Created by PhpStorm.
 * User: Somnus
 * Date: 2016/11/9
 * Time: 17:28
 */
function getRandomString($len, $chars = null)
{
    if (is_null($chars)) {
        $chars = "0123456789";
    }
    mt_srand(10000000 * (double)microtime());
    for ($i = 0, $str = '', $lc = strlen($chars) - 1; $i < $len; $i++) {
        $str .= $chars[mt_rand(0, $lc)];
    }
    return $str;
}

function rmb_format($money = 0, $int_unit = '元', $is_round = true, $is_extra_zero = false)
{
    // 将数字切分成两段
    $parts = explode('.', $money, 2);
    $int = isset ($parts [0]) ? strval($parts [0]) : '0';
    $dec = isset ($parts [1]) ? strval($parts [1]) : '';

    // 如果小数点后多于2位，不四舍五入就直接截，否则就处理
    $dec_len = strlen($dec);
    if (isset ($parts [1]) && $dec_len > 2) {
        $dec = $is_round ? substr(strrchr(strval(round(floatval("0." . $dec), 2)), '.'), 1) : substr($parts [1], 0, 2);
    }

    // 当number为0.001时，小数点后的金额为0元
    if (empty ($int) && empty ($dec)) {
        return '零';
    }

    // 定义
    $chs = array('0', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖');
    $uni = array('', '拾', '佰', '仟');
    $dec_uni = array('角', '分');
    $exp = array('', '万');
    $res = '';

    // 整数部分从右向左找
    for ($i = strlen($int) - 1, $k = 0; $i >= 0; $k++) {
        $str = '';
        // 按照中文读写习惯，每4个字为一段进行转化，i一直在减
        for ($j = 0; $j < 4 && $i >= 0; $j++, $i--) {
            $u = $int{$i} > 0 ? $uni [$j] : ''; // 非0的数字后面添加单位
            $str = $chs [$int{$i}] . $u . $str;
        }
        $str = rtrim($str, '0'); // 去掉末尾的0
        $str = preg_replace("/0+/", "零", $str); // 替换多个连续的0
        if (!isset ($exp [$k])) {
            $exp [$k] = $exp [$k - 2] . '亿'; // 构建单位
        }
        $u2 = $str != '' ? $exp [$k] : '';
        $res = $str . $u2 . $res;
    }

    // 如果小数部分处理完之后是00，需要处理下
    $dec = rtrim($dec, '0');
    var_dump($dec);
    // 小数部分从左向右找
    if (!empty ($dec)) {
        $res .= $int_unit;

        // 是否要在整数部分以0结尾的数字后附加0，有的系统有这要求
        if ($is_extra_zero) {
            if (substr($int, -1) === '0') {
                $res .= '零';
            }
        }

        for ($i = 0, $cnt = strlen($dec); $i < $cnt; $i++) {
            $u = $dec{$i} > 0 ? $dec_uni [$i] : ''; // 非0的数字后面添加单位
            $res .= $chs [$dec{$i}] . $u;
            if ($cnt == 1)
                $res .= '整';
        }

        $res = rtrim($res, '0'); // 去掉末尾的0
        $res = preg_replace("/0+/", "零", $res); // 替换多个连续的0
    } else {
        $res .= $int_unit . '整';
    }
    return $res;
}

// 生成随机字符
function randomKeys($length)
{
    $pattern = '1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLOMNOPQRSTUVWXYZ';
    $key = '';
    for ($i = 0; $i < $length; $i++) {
        $key .= $pattern{mt_rand(0, 35)};    //生成php随机数
    }
    return $key;
}

// 从session 中获取管理员id
function getAdminData()
{
    $user = json_decode(session('admin_user'), true);
    if ($user) {
        return $user;
    } else {
        return false;
    }
}

/**
 * [writeArr 写入配置文件方法]
 * @param  [type] $arr      [要写入的数据]
 * @param  [type] $filename [文件路径]
 * @return [type]           [description]
 */
function writeArr($arr, $filename)
{
    return file_put_contents($filename, "<?php\r\nreturn " . var_export($arr, true) . ";");
}

function delDir($path)
{
    if ($handle = opendir("$path")) {
        while (false !== ($item = readdir($handle))) {
            if ($item != "." && $item != "..") {
                if (is_dir("$path/$item")) {
                    delDir("$path/$item");
                } else {
                    unlink("$path/$item");
                }
            }
        }
        closedir($handle);
    }
}

//验证手机号
function checkphone($number)
{
    if (preg_match("/^1\d{10}$/", $number)) {
        return true;
    } else {
        return false;
    }
}

// 发送短信
function sendSms($phone, $content)
{
    // 拼接参数
    $sms_data = [
        'userid' => 1434,
        'account' => 'chengtai',
        'password' => 'qaz12345',
        'mobile' => $phone,
        'content' => '【美信花】' . $content,
        'sendTime' => '',
        'action' => ':send',
        'extno' => ''
    ];
    // 发送post请求
    $result = cUrlGetData('http://114.215.184.88:8888/sms.aspx?action=send', $sms_data);

    if ($result) {
        return $result;
    } else {
        return false;
    }

}

// 发送Curl 请求
function cUrlGetData($url, $post_fields = null, $headers = null)
{
    $ch = curl_init();
    $timeout = 5;
    curl_setopt($ch, CURLOPT_URL, $url);
    if ($post_fields && !empty($post_fields)) {
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $post_fields);
    }
    if ($headers && !empty($headers)) {
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    }
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
    $data = curl_exec($ch);
    if (curl_errno($ch)) {
        return false;
//        echo 'Error:' . curl_error($ch);
    }
    curl_close($ch);
    return $data;
}
