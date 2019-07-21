package cn.ssm.amr.action;

import cn.ssm.amr.action.abs.AbstractAction;
import cn.ssm.amr.service.IEmpService;
import cn.ssm.amr.vo.Emp;
import cn.ssm.util.MD5Code;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginAction extends AbstractAction {

    @Resource
    private IEmpService empServiceImpl;

    @RequestMapping("/login")
    public ModelAndView login(Emp vo, HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        vo.setPassword(new MD5Code().getMD5ofStr(vo.getPassword()));

        try {
            if(this.empServiceImpl.login(vo)){
                request.getSession().setAttribute("eid",vo.getEid());
                request.getSession().setAttribute("name",vo.getName());
                request.getSession().setAttribute("aFlag",vo.getAFlag());
                request.getSession().setAttribute("photo",vo.getPhoto());
                super.setMsgAndUrl("login.success","index.page",mav);
            }else{
                super.setMsgAndUrl("login.failure","error.page",mav);
            }
            mav.setViewName(super.getMsg("forward.page"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mav;
    }


    @Override
    public String getFlag() {
        return null;
    }
}
