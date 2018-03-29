<?php
/**
 * Created by PhpStorm.
 * User: laijie
 * Date: 2018/3/21
 * Time: 下午4:16
 *                              _ooOoo_
 *                             o8888888o
 *                             88" . "88
 *                             (| -_- |)
 *                             O\  =  /O
 *                          ____/`---'\____
 *                        .'  \\|     |//  `.
 *                       /  \\|||  :  |||//  \
 *                      /  _||||| -:- |||||-  \
 *                      |   | \\\  -  /// |   |
 *                      | \_|  ''\---/''  |   |
 *                      \  .-\__  `-`  ___/-. /
 *                    ___`. .'  /--.--\  `. . __
 *                 ."" '<  `.___\_<|>_/___.'  >'"".
 *                | | :  `- \`.;`\ _ /`;.`/ - ` : | |
 *                \  \ `-.   \_ __\ /__ _/   .-` /  /
 *           ======`-.____`-.___\_____/___.-`____.-'======
 *                              `=---='
 *           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 *                      佛祖保佑        永无BUG
 *             佛曰:
 *                    写字楼里写字间，写字间里程序员；
 *                    程序人员写程序，又拿程序换酒钱。
 *                    酒醒只在网上坐，酒醉还来网下眠；
 *                    酒醉酒醒日复日，网上网下年复年。
 *                    但愿老死电脑间，不愿鞠躬老板前；
 *                    奔驰宝马贵者趣，公交自行程序员。
 *                    别人笑我忒疯癫，我笑自己命太贱；
 *                    不见满街漂亮妹，哪个归得程序员？
 */
namespace App\Repositories;

use App\tasks;
use Illuminate\Support\Facades\DB;

class TaskRepository
{
    /*
     * 展示已有任务
     */
    public function getTasks($openid)
    {
         $results = tasks::select(['id','content','txtStyle'])->where('openid', $openid)->get();
         return $results;
    }

    /*
     *
     */
    public function addTasks($data)
    {
        return tasks::create([
            'content' => $data['content'],
            'openid' => base64_decode($data['token']),
        ]);
    }

    /*
     * 删除任务
     */
    public function delTasks($id)
    {
        return tasks::where('id',$id)->delete();
    }

}