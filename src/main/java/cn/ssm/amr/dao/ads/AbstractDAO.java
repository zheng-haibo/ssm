package cn.ssm.amr.dao.ads;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import javax.annotation.Resource;

public abstract class AbstractDAO {

    @Resource
    private SqlSessionFactory factory;

    public SqlSessionFactory getFactory(){
        return this.factory;
    }

    public SqlSession getSession(){
        return this.factory.openSession();
    }

}
