package cn.ssm.amr.service.serviceImpl;

import cn.ssm.amr.dao.IEmpDao;
import cn.ssm.amr.service.IEmpService;
import cn.ssm.amr.vo.Emp;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class EmpServiceImpl implements IEmpService {

    @Resource
    private IEmpDao empDao;

    @Override
    public boolean login(Emp vo) throws Exception {
        return this.empDao.findLogin(vo);
    }
}
