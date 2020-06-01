<?php
// +----------------------------------------------------------------------
// | layerIM + Workerman + ThinkPHP5 即时通讯
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2012 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: NickBai <1902822973@qq.com>
// +----------------------------------------------------------------------
Vendor('Workerman.Worker');

import('ORG.Net.UploadFile');

class UploadAction extends Action
{

    //上传图片
    public function uploadImg()
    {
        $upload = new UploadFile();// 实例化上传类
        $upload->maxSize = 3145728;// 设置附件上传大小
        $upload->allowExts = array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->savePath = './Upload/LayChat/image/' . date('Ymd') . '/';// 设置附件上传目录
        $result = $upload->upload();

        if (!$result) {// 上传错误提示错误信息
            echo json_encode(['code' => -1, 'msg' => $upload->getErrorMsg(), 'data' => '']);
        } else {// 上传成功 获取上传文件信息
            $info = $upload->getUploadFileInfo();
            $src = '/Upload/LayChat/image/' . date('Ymd') . '/' . $info[0]['savename'];
            echo json_encode(['code' => 0, 'msg' => '', 'data' => ['src' => $src]]);
        }
    }

    //上传文件
    public function uploadFile()
    {

        $upload = new UploadFile();// 实例化上传类

        $upload->maxSize = 3145728;// 设置附件上传大小
        $upload->savePath = './Upload/LayChat/files/' . date('Ymd') . '/';// 设置附件上传目录

        if (!$upload->upload()) {// 上传错误提示错误信息
            echo json_encode(['code' => -1, 'msg' => $upload->getErrorMsg(), 'data' => '']);
        } else {// 上传成功 获取上传文件信息
            $info = $upload->getUploadFileInfo();
            $src = '/Upload/LayChat/files/' . date('Ymd') . '/' . $info[0]['savename'];
            echo json_encode(['code' => 0, 'msg' => '', 'data' => ['src' => $src]]);
        }
    }
}