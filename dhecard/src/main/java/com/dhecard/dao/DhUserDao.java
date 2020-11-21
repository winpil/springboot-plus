package com.dhecard.dao;

import java.util.List;

import org.beetl.sql.core.annotatoin.SqlResource;
import org.beetl.sql.core.mapper.BaseMapper;
import org.beetl.sql.core.engine.PageQuery;

import  com.dhecard.entity.*;

/**
 * User Dao
 */
@SqlResource("dhecard.user")
public interface DhUserDao extends BaseMapper<DhUser>{
    public PageQuery<DhUser> queryByCondition(PageQuery query);
    public void batchDelDhUserByIds( List<Long> ids);
}