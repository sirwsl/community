package com.wsl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @program: community
 * @description: 视图控制器
 * @author: wangshilei
 * @create: 2020-06-05 06:02
 **/
@Controller
public class viewConller {

    /**@Description: 主页
     * @Date: 2020/6/5(6:08)  @Author: wangshilei**/
    @RequestMapping("/stu_index")
    public String stuIndex(){
        return "student/index";
    }

    /**@Description: 社团详情
     * @Date: 2020/6/5(6:08)  @Author: wangshilei**/

    @RequestMapping("/stu_detail")
    public String StuDeatil(){
        return "student/details";
    }
    /**@Description: 申请活动
     * @Date: 2020/6/5(6:17)  @Author: wangshilei**/
    @RequestMapping("/stu_act_new")
    public  String stuActivityNew() {
        return "student/activity_new";
    }

    /**@Description: 活动记录
     * @Date: 2020/6/5(6:17)  @Author: wangshilei**/
    @RequestMapping("/stu_findActivity")
    public  String stuFindActivity(){
        return "student/findActivity";
    }

    /**@Description: 会员管理
     * @Date: 2020/6/5(6:18)  @Author: wangshilei**/
    @RequestMapping("/stu_add_stu")
    public  String StuAddStudent(){
        return "student/addStudent";
    }

    /**@Description: 查看会员
     * @Date: 2020/6/5(6:18)  @Author: wangshilei**/
    @RequestMapping("/stu_find_stu")
    public  String stuFindStudent(){
        return "student/findStudent";
    }

    /**@Description: 社团固定资产
     * @Date: 2020/6/5(6:18)  @Author: wangshilei**/
    @RequestMapping("/stu_assets")
    public  String stuAssets(){
        return "student/assets";
    }

    /**@Description: 会费管理
     * @Date: 2020/6/5(6:18)  @Author: wangshilei**/
    @RequestMapping("/stu_cost")
    public  String stuCost(){
        return "student/cost";
    }

    /**@Description:  新建会议
     * @Date: 2020/6/5(6:18)  @Author: wangshilei**/
    @RequestMapping("/stu_add_met")
    public  String stuAddMetting(){
        return "student/addMeeting";
    }

    /**@Description: 会议记录
     * @Date: 2020/6/5(6:18)  @Author: wangshilei**/
    @RequestMapping("/stu_fin_meet")
    public  String stuFindMeeting(){
        return "student/findMeeting";
    }

    /**@Description: 社团收件箱
     * @Date: 2020/6/5(6:18)  @Author: wangshilei**/
    @RequestMapping("/mailbox")
    public  String Mailbox(){
        return "mail/mailbox";
    }

    /**@Description:查看邮件
     * @Date: 2020/6/5(6:18)  @Author: wangshilei**/
    @RequestMapping("/mail_detal")
    public  String mailDetail(){
        return "mail/mail_detail";
    }

    /**@Description: 写信件
     * @Date: 2020/6/5(6:18)  @Author: wangshilei**/
    @RequestMapping("/mail_compose")
    public  String mailCompose(){
        return "mail/mail_compose";
    }

    /**@Description: 信息修改
     * @Date: 2020/6/5(6:18)  @Author: wangshilei**/
    @RequestMapping("/info_modify")
    public  String infoModify(){
        return "student/info_modify";
    }

    /**@Description:密码修改
     * @Date: 2020/6/5(6:18)  @Author: wangshilei**/
    @RequestMapping("/stu_password")
    public  String stu_password(){
        return "student/password";
    }

    /**@Description:任职记录修改
     * @Date: 2020/6/5(6:18)  @Author: wangshilei**/
    @RequestMapping("/stu_emp_new")
    public  String stuEmploymentNew(){
        return "student/employment_new";
    }

    /**@Description: 社团详情
     * @Date: 2020/6/5(6:18)  @Author: wangshilei**/
    @RequestMapping("/stu_cancen")
    public  String stuCancellation(){
        return "student/cancellation";
    }


    /**@Description: 公共文件管理
     * @Date: 2020/6/5(6:18)  @Author: wangshilei**/
    @RequestMapping("/stu_pub_file")
    public  String stuPublicFile(){
        return "student/public_files";
    }

    /**@Description:社团下发文件
     * @Date: 2020/6/5(6:19)  @Author: wangshilei**/
    @RequestMapping("/stu_comm_file")
    public  String stuCpmmunityFiles(){
        return "student/community_files";
    }



   /**@Description: 会员修改
    * @Date: 2020/6/5(8:33)  @Author: wangshilei**/
   @RequestMapping("/stu_xiu_stu")
   public String stuXiuStu(){
       return "student/addStudent2";
   }

   /**@Description: 添加固定资产
    * @Date: 2020/6/5(8:19)  @Author: wangshilei**/
    @RequestMapping("/stu_add_ass")
    public String stuAddAssets(){
        return "student/addAssets";
    }
    /**@Description:修改固定资产
     * @Date: 2020/6/5(8:22)  @Author: wangshilei**/
    @RequestMapping("/stu_ass_xiu")
    public String stuXiuAssets(){
        return "student/addAssets2";
    }

    /**@Description: 收支添加
     * @Date: 2020/6/5(8:24)  @Author: wangshilei**/
    @RequestMapping("/stu_add_cost")
    public String stuAddCost(){
        return "student/addCost";
    }

    /**@Description: 收支编辑
     * @Date: 2020/6/5(8:28)  @Author: wangshilei**/
    @RequestMapping("/stu_xiu_cost")
    public String stuXiuCost(){
        return"student/addCost2";
    }

    /**@Description: 会议修改
     * @Date: 2020/6/5(8:30)  @Author: wangshilei**/
    @RequestMapping("/stu_xiu_meeting")
    public String stuXIuMeeting(){
        return "student/addMeeting2";
    }

    /***************************社团结束***********************************/
    /**@Description:主页信息
     * @Date: 2020/6/5(13:38)  @Author: wangshilei**/
    @RequestMapping("/tea_index")
    public String teaIndex(){
        return"teacher/index";
    }

    /**@Description: 任职查看
     * @Date: 2020/6/5(13:38)  @Author: wangshilei**/
    @RequestMapping("tea_employ")
    public String teaEmployment(){
        return"teacher/employment";
    }

    /**@Description: 会员查看
     * @Date: 2020/6/5(13:38)  @Author: wangshilei**/
    @RequestMapping("/tea_fin_stu")
    public String teaFindStudent(){
        return"teacher/findStudent";
    }

    /**@Description: 会议查看
     * @Date: 2020/6/5(13:38)  @Author: wangshilei**/
    @RequestMapping("/tea_fin_meet")
    public String teaFindmeet(){
        return"teacher/findMeeting";
    }

    /**@Description:活动查看
     * @Date: 2020/6/5(13:38)  @Author: wangshilei**/
    @RequestMapping("/tea_look_meet")
    public String teaLookMeeting(){
        return"teacher/findActivity copy";
    }

    /**@Description: 财务查看
     * @Date: 2020/6/5(13:38)  @Author: wangshilei**/
    @RequestMapping("/tea_cost")
    public String teaCost(){
        return"teacher/cost";
    }
    /**@Description: 活动审批未处理
     * @Date: 2020/6/5(13:49)  @Author: wangshilei**/
    @RequestMapping("/tea_fin_activ")
    public String teaFindActivity(){
        return "teacher/findActivity";
    }

    /**@Description: 活动审批已处理
     * @Date: 2020/6/5(13:52)  @Author: wangshilei**/
    @RequestMapping("/tea_fin_activ_W")
    public String teaFindActivityW(){
        return "teacher/findActivity2";
    }
    /**@Description: 教师信息修改
     * @Date: 2020/6/5(13:57)  @Author: wangshilei**/
    @RequestMapping("/tea_info")
    public String teaInfo(){
        return "teacher/info";
    }

/***********************教师结束*******保卫科开始***********************************/
    /**@Description: 信息主页
     * @Date: 2020/6/5(14:03)  @Author: wangshilei**/
    @RequestMapping("/cen_index")
    public String cenIndex(){
        return "academy/index";
    }
    /**@Description: 活动处理为备案
     * @Date: 2020/6/5(14:05)  @Author: wangshilei**/
    @RequestMapping("/cen_fin_act_W")
    public String cenFindActivityW(){
        return "academy/findActivity";
    }

    /**@Description: 活动处理已备案
     * @Date: 2020/6/5(14:05)  @Author: wangshilei**/
    @RequestMapping("/cen_fin_act")
    public String cenFindActivity(){
        return "academy/findActivity2";
    }
    /**@Description: 信息主页
     * @Date: 2020/6/5(14:10)  @Author: wangshilei**/
    @RequestMapping("cen_info")
    public String cenInfo(){
        return "academy/info";
    }

    /***********************社团中心开始***************************/
    /**@Description: 信息主页
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_index")
    public String comIndex (){
        return "centen/index";
    }

    /**@Description:社团概况
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_detail")
    public String comDetaul (){
        return "centen/details";
    }

    /**@Description: 活动审批未处理
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_fin_act_W")
    public String comFindAcitvityW(){
        return "centen/findActivity";
    }

    /**@Description: 活动审批已处理
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_fin_act")
    public String comFindActicity (){
        return "centen/findActivity2";
    }

    /**@Description: 场地管理
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_site")
    public String comSite (){
        return "centen/site";
    }

    /**@Description: 社团任职修改
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_employ")
    public String comEmploy (){
        return "centen/employment";
    }

    /**@Description: 基本备案
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_record")
    public String comRecord (){
        return "centen/record";
    }

    /**@Description: 社团新增加
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_add_com")
    public String comAddComm(){
        return "centen/add_community";
    }

    /**@Description: 财务管理
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_costs")
    public String comCost(){
        return "centen/cost";
    }

    /**@Description: 资产统计
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_stat")
    public String comStatistic(){
        return "centen/statistics";
    }

    /**@Description: 会议记录
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_fin_meets")
    public String comFindMeet(){
        return "centen/findMeeting";
    }

    /**@Description: 会议统计
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_meet_count")
    public String comMeetingCount(){
        return "centen/meeting_count";
    }

    /**@Description: 查看会员
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_fin_stu")
    public String comFindStudent(){
        return "centen/findStudent";
    }

    /**@Description: 会员统计
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_stu_count")
    public String comStudentCount(){
        return "centen/people";
    }

    /**@Description: 财务管理
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_cost")
    public String comCost2(){
        return "centen/cost2";
    }

    /**@Description: 财务统计
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_assests")
    public String comAssets(){
        return "centen/assets";
    }

    /**@Description: 新建会议
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_add_meet")
    public String comAddMeeting(){
        return "centen/addMeeting";
    }

    /**@Description: 会议记录
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_fin_meet")
    public String comFindMeetSum(){
        return "centen/findMeeting2";
    }

    /**@Description: 信息修改
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_info_mod")
    public String comInfoModify(){
        return "centen/info_modify";
    }

    /**@Description: 密码修改
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_password")
    public String comPassword(){
        return "centen/password";
    }

    /**@Description: 任职修改
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_emp_new")
    public String comEmployNew(){
        return "centen/employment_new";
    }

    /**@Description: 公共文件
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_pub_files")
    public String comPublicFile(){
        return "centen/public_files";
    }

    /**@Description:
     * @Date: 2020/6/5(14:*)  @Author: wangshilei**/
    @RequestMapping("/com_files")
    public String comFiles(){
        return "community_files";
    }


}
