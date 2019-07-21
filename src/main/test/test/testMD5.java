package test;

import cn.ssm.util.MD5Code;
import org.junit.Test;

public class testMD5 {
    @Test
    public void md5(){
        String a = "hello";

        System.out.println(new MD5Code().getMD5ofStr(a));
    }
}
