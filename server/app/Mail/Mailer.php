<?php
/**
 * Created by PhpStorm.
 * User: tuuna
 * Date: 17-4-4
 * Time: 上午10:38
 */

namespace App\Mail;


use Illuminate\Support\Facades\Mail;

class Mailer
{
    /**
     * @param $view
     * @param array $data
     * @param $email
     * @param $msg
     * Mail通用模板
     */
    public function sendTo($view,array $data,$email,$msg)
    {
        Mail::send(
            $view,
            $data,
            function($message) use ($email,$msg) {
                $message->to($email)
                    ->subject($msg);
            }
        );
    }
}