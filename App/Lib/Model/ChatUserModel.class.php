<?php

/**
 * Created by PhpStorm.
 * User: voke
 * Date: 2020/5/17
 * Time: 11:25
 */
class ChatUserModel extends Model
{
    protected $tableName = 'richat_chatuser';

    public function createByArray($data)
    {
        return $this->add($data);
    }

    public function deleteByAdminId($admin_id)
    {
        // 查询客服数据
        $user_data = $this->where(['admin_id' => $admin_id])->find();
        if ($user_data) {
            // 删除客服绑定的用户
            $this->where(['customer_id' => $user_data['id']])->delete();
            // 删除客服
            $this->where(['admin_id' => $admin_id])->delete();
        }
    }

}