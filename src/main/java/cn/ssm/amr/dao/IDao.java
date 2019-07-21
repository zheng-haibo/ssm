package cn.ssm.amr.dao;

import java.util.List;
import java.util.Set;

public interface IDao<K, V> {
    public boolean doUpdate(V v) throws Exception;

    public boolean doInsert(V v) throws Exception;

    public boolean doDelelteBatch(Set ids) throws Exception;

    public V findById(K id) throws Exception;

    public List<V> findAll() throws Exception;

    public List<V> findAllSplit(String column, String keyword, Integer currentPage, Integer lineSize) throws Exception;

    public Integer findAllCount(String column, String keyword) throws Exception;

}
