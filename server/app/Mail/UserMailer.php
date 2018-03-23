<?php
/**
 * Created by PhpStorm.
 * User: tuuna
 * Date: 17-4-4
 * Time: 上午10:39
 */

namespace App\Mail;


class UserMailer extends Mailer
{

    public function welcome($user)
    {
        $data = [
            'url' => route('email.verify',['token' => $user->confirmation_token]),
            'name' => $user->name
        ];
        $this->sendTo('emails.register',$data,$user->email,'请激活您的邮件');
    }

}