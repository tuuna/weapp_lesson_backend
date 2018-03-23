<?php
/**
 * Created by PhpStorm.
 * User: tuuna
 * Date: 17-4-5
 * Time: 下午7:52
 */

namespace App\Mail;


use Illuminate\Support\Facades\Auth;

class SponsorApplyMailer extends Mailer
{
    public function applyInfo($email)
    {
        $data = [
            'name' => Auth::user()->name
        ];
        $this->sendTo('emails.sponsorApply',$data,$email,'请等待审核');
    }

    public function sendSponsorInfo($data)
    {
        $this->sendTo('emails.sponsorInfo',$data,$data['email'],'恭喜您的活动号审核成功');
    }

    public function sendFailSponsorInfo($data)
    {
        $this->sendTo('emails.sponsorFailInfo',$data,$data['email'],'您的活动号审核失败');
    }
}