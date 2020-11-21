package com.dhecard.service;

import java.util.List;

import org.beetl.sql.core.engine.PageQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ibeetl.admin.core.util.PlatformException;

import com.dhecard.dao.DhUserDao;
import com.dhecard.entity.DhUser;
import com.ibeetl.admin.core.service.BaseService;

/**
 * User Service
 */

@Service
@Transactional
public class DhUserService extends BaseService<DhUser>{

    @Autowired private DhUserDao userDao;

    public PageQuery<DhUser>queryByCondition(PageQuery query){
        PageQuery ret =  userDao.queryByCondition(query);
        queryListAfter(ret.getList());
        return ret;
    }

    public void batchDelDhUser(List<Long> ids){
        try {
            userDao.batchDelDhUserByIds(ids);
        } catch (Exception e) {
            throw new PlatformException("批量删除User失败", e);
        }
    }
}