package cn.ssm.amr.action.abs;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.MessageSource;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Locale;

public abstract class AbstractAction {
    @Resource
    private MessageSource msgSource;

    @InitBinder
    public void initBinder(WebDataBinder binder) { // 转换器
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        // 将自定义的转换器进行配置，表示以后如果发现有Date类型，就使用sdf对象进行转换，并且允许数据为null
        binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(
                sdf, true));
    }

    public void setMsgAndUrl(String msgKey, String urlKey, ModelAndView mav){
        mav.addObject("msg",this.getMsg(msgKey));
        mav.addObject("url",this.getMsg(urlKey));

    }

    /**
     * 设置操作资源文件数据的读取处理
     * @param key 资源文件的key信息
     * @return
     */
    public String getMsg(String key) {
        try {
            return this.msgSource.getMessage(key,
                    new Object[] { this.getFlag() }, Locale.getDefault());
        } catch (Exception e) {
            return null ;
        }
    }

    /**
     * 返回CRUD操作时的执行标记
     *
     * @return
     */
    public abstract String getFlag();

}
