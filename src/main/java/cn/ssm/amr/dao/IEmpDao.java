package cn.ssm.amr.dao;

import cn.ssm.amr.dao.IDao;
import cn.ssm.amr.vo.Emp;

public interface IEmpDao extends IDao<Integer, Emp> {

    public boolean findLogin(Emp vo) throws Exception;
}
