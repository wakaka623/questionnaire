<?php


namespace app\question\controller;
use think\Controller;
use think\Request;
use app\question\model\Question;


class questionanswer extends Controller
{
    public function putQuestion(Request  $request){
        $success=[
            'code'=>'0',
            'msg'=>'提交成功！'
        ];
        $error=[
            'code'=>'0',
            'msg'=>'您已经测评过了！'
        ];
       $param=$request->post();
       $data=question::where('name',$param['name'])->where('tel',$param['tel'])->select();
       if(!empty($data)){
        return json($error);
       }
       $imgurl=$this->base64_image_content($param['autograph'],'public/img');
       $date=date('Y-m-d H:i:s');
       if($param['answers'][0]=='无收入来源，生活主要依靠积蓄或社会保障'||$param['answers'][16]=='无收入来源，生活主要依靠积蓄或社会保障'||$param['answers'][17]=='尽可能保证本金安全'||
       $param['answers'][18]=='偿付债务'||$param['answers'][22]=='有配偶，均没有稳定收入的工作或者已退休'||$param['answers'][22]=='单身，目前暂无稳定收入的工作'){
            $msg='您的最终评分为C1级';
            $grade='C1';
        }elseif($param['answers'][1]=='不超过5万元人民币'||$param['answers'][2]=='70%以上'||$param['answers'][3]=='有，信用卡欠款、消费信贷等短期信用债务'){
            $msg='您的最终评分为C2级';
            $grade='C2';
        }elseif($param['answers'][17]=='较大的投资损失'){
            $msg='您的最终评分为C3级';
            $grade='C3';
        }elseif($param['answers'][17]=='损失可能超过本金'){
            $msg='您的最终评分为C4级';
            $grade='C4';
        }else{
            $msg='您的最终评分为C3级';
            $grade='C3';
        }
       $result=question::insert(['name'=>$param['name'],'tel'=>$param['tel'],'one'=>$param['answers'][0],'two'=>$param['answers'][1],'three'=>$param['answers'][2],
           'four'=>$param['answers'][3],'five'=>$param['answers'][4],'six'=>$param['answers'][5],'seven'=>$param['answers'][6],'eight'=>$param['answers'][7],
           'nine'=>$param['answers'][8],'ten'=>$param['answers'][9],'eleven'=>$param['answers'][10],'twelve'=>$param['answers'][11],'thirteen'=>$param['answers'][12],
           'fourteen'=>$param['answers'][13],'fifteen'=>$param['answers'][14],'sixteen'=>$param['answers'][15],'seventeen'=>$param['answers'][16],'eighteen'=>$param['answers'][17],
           'nineteen'=>$param['answers'][18],'twenty'=>$param['answers'][19],'twenty_one'=>$param['answers'][20],'twenty_two'=>$param['answers'][21],'twenty_three'=>$param['answers'][22],
           'images'=>$imgurl,'grade'=>$grade,'add_time'=>$date]);
        $success=[
            'code'=>'0',
            'msg'=>'提交成功！'.$msg
        ];
       if ($result==1){
           return json($success);
       }
    }

    /**
     * [将Base64图片转换为本地图片并保存]
     * @param  [Base64] $base64_image_content [要保存的Base64]
     * @param  [目录] $path [要保存的路径]   比如："./qrcode"
     */
    public function base64_image_content($base64_image_content,$path){
        //匹配出图片的格式
        if (preg_match('/^(data:\s*image\/(\w+);base64,)/', $base64_image_content, $result)){
            $type = $result[2];
            $new_file = $path."/".date('Ymd',time())."/";
            // var_dump($new_file);
            if(!file_exists($new_file)){
                //检查是否有该文件夹，如果没有就创建，并给予最高权限
                mkdir($new_file, 0700, true);
            }
            $new_file = $new_file.time().".{$type}";
            if (file_put_contents($new_file, base64_decode(str_replace($result[1], '', $base64_image_content)))){
                return "http://".$_SERVER['SERVER_NAME'].':83/public/'.$new_file;
            }else{
                return false;
            }
        }else{
            return false;
        }

    }

}