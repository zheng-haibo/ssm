package cn.ssm.amr.dao.impl;

import cn.ssm.amr.dao.IEmpDao;
import cn.ssm.amr.dao.ads.AbstractDAO;
import cn.ssm.amr.vo.Emp;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;

@Component
public class EmpDaoImpl extends AbstractDAO implements IEmpDao  {

    public boolean findLogin(Emp vo) throws Exception {
        Emp rvo = super.getSession().selectOne("mapping.Emp.findLogin",vo);
        if(rvo != null){
            vo.setName(rvo.getName());
            vo.setAFlag(rvo.getAFlag());
            vo.setPhoto(rvo.getPhoto());
            return true;
        }
        return false;
    }

    public boolean doUpdate(Emp emp) throws Exception {
        return false;
    }

    public boolean doInsert(Emp emp) throws Exception {
        return false;
    }

    public boolean doDelelteBatch(Set ids) throws Exception {
        return false;
    }

    public Emp findById(Integer id) throws Exception {
        return null;
    }

    public List<Emp> findAll() throws Exception {
        return null;
    }

    public List<Emp> findAllSplit(String column, String keyword, Integer currentPage, Integer lineSize) throws Exception {
        return null;
    }

    public Integer findAllCount(String column, String keyword) throws Exception {
        return null;
    }
}
