<?php
/**
 * Created by PhpStorm.
 * User: tuuna
 * Date: 17-4-15
 * Time: 下午12:30
 */

namespace App\Mail;


class UserApplyMailer extends Mailer
{
    public function sendActivityInfo($data)
    {
        $this->sendTo('emails.activityInfo',$data,$data['email'],'活动'.'-'.$data['activity_title'].'-'.'报名成功');
    }
}