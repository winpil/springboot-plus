package com.dhecard.dao;

import java.util.List;

import org.beetl.sql.core.annotatoin.SqlResource;
import org.beetl.sql.core.mapper.BaseMapper;
import org.beetl.sql.core.engine.PageQuery;

import  com.dhecard.entity.*;

/**
 * 卡 Dao
 */
@SqlResource("dhecard.card")
public interface DhCardDao extends BaseMapper<DhCard>{
    public PageQuery<DhCard> queryByCondition(PageQuery query);
    public void batchDelDhCardByIds( List<Long> ids);
}