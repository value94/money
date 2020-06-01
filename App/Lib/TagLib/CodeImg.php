<?php
/**
 * Created by PhpStorm.
 * User: voke
 * Date: 2020/5/20
 * Time: 16:03
 */
class codeImg
{

    private $date,$img,$main,$width,$height,$target,$white;
    public function constr($source)
    {
        include "./phpqrcode.php";
        $this->date   = '' . date('Ymd') . '/';
        $this->img    = $this->date . md5($source) . '.jpg';
        $this->main   = imagecreatefromjpeg($source);
        $this->width  = imagesx($this->main);
        $this->height = imagesy($this->main);
        $this->target = imagecreatetruecolor($this->width, $this->height);
        $this->white  = imagecolorallocate($this->target, 255, 255, 255);
        imagefill($this->target, 0, 0, $this->white);
        imagecopyresampled($this->target, $this->main, 0, 0, 0, 0, $this->width, $this->height, $this->width, $this->height);
    }
    /**
     * 生成二维码
     * @param  [type]  $website  [生成二维码地址]
     * @param  string  $filename [生成二维路经名称]
     * @param  string  $level    [这个参数可传递的值分别是L(QR_ECLEVEL_L，7%)、M(QR_ECLEVEL_M，15%)、Q(QR_ECLEVEL_Q，25%)、H(QR_ECLEVEL_H，30%)，这个参数控制二维码容错率，不同的参数表示二维码可被覆盖的区域百分比，也就是被覆盖的区域还能识别；]
     * @param  integer $size     [控制生成图片的大小，默认为4]
     * @param  integer $margin [控制生成二维码的空白区域大小]
     * @return [type]            [description]
     */
    public function qrencode($website, $filename = false, $level = "L", $size = 4, $margin = 2)
    {
        require_once "phpqrcode.php";
        QRcode::png($website, $filename, $level, $size, 2);
    }
    /**
     * 把二维码图片生成到背景图片上及文字
     * @param  string  $source      背景图片
     * @param  string  $text1       文字描述
     * @param  string  $child1      二维码图
     * @param  integer $textwidth   文字横向位置
     * @param  integer $textherght  文字高度
     * @param  integer $$fontSize   字体大小
     * @param  integer $cate1,$cate2,$cate3 颜色表
     * @param  string $font         文字字体
     * @return [type]               [description]
     */
    public function generateFont($source, $text1, $textwidth, $textherght, $fontSize = 18, $cate1 = 255, $cate2 = 250, $cate3 = 250, $font = './font/fangsong_GB2312.ttf')
    {
        $this->constr($source);
        $fontColor = imagecolorallocate($this->target, $cate1, $cate2, $cate3); //字的RGB颜色
        $fontBox   = imagettfbbox($fontSize, 0, $font, $text1); //文字水平居中实质
        imagettftext($this->target, $fontSize, 0, $textwidth, $textherght, $fontColor, $font, $text1);
        $this->createImg();
        return $this->img;
    }
    /**
     * [generateImg description]
     * @param  string  $source        背景图片
     * @param  string  $codeurl       二维码图片
     * @param  integer  $sourcewidth  二维码横向所在位置
     * @param  integer  $sourceheight 二维码高度位置
     * @param  integer $codewidth    二维码宽度
     * @param  integer $codeheight   二维码高度
     * @return [type]                [description]
     */
    public function generateImg($source, $codeurl, $sourcewidth, $sourceheight, $codewidth = 100, $codeheight = 100)
    {
        $this->constr($source);
        $child1 = imagecreatefrompng($codeurl);
        $codewidth = $codewidth > 0 ? $codewidth :imagesx($child1);
        $codeheight = $codeheight > 0 ? $codeheight : imagesy($child1);
        imagecopyresampled($this->target, $child1, $sourcewidth, $sourceheight, 0, 0, $codewidth, $codeheight,imagesx($child1),imagesy($child1));
        imagedestroy($child1);
        $this->createImg();
        return $this->img;
    }
    function createImg()
    {
        @mkdir('./' . $this->date);
        imagejpeg($this->target, './' . $this->img, 95);
        imagedestroy($this->main);
        imagedestroy($this->target);
    }
}



