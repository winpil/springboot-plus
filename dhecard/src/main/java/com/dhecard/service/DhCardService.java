package com.dhecard.service;

import java.util.Date;
import java.util.List;

import org.beetl.sql.core.engine.PageQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dhecard.dao.DhCardDao;
import com.dhecard.dao.DhUserDao;
import com.dhecard.entity.DhCard;
import com.dhecard.entity.DhUser;
import com.ibeetl.admin.core.service.BaseService;
import com.ibeetl.admin.core.util.PlatformException;

/**
 * 卡 Service
 */

@Service
@Transactional
public class DhCardService extends BaseService<DhCard>{

    @Autowired private DhCardDao cardDao;
    @Autowired private DhUserDao userDao;

    public PageQuery<DhCard>queryByCondition(PageQuery query){
        PageQuery ret =  cardDao.queryByCondition(query);
        queryListAfter(ret.getList());
        return ret;
    }

    public void batchDelDhCard(List<Long> ids){
        try {
            cardDao.batchDelDhCardByIds(ids);
        } catch (Exception e) {
            throw new PlatformException("批量删除卡失败", e);
        }
    }

	public boolean saveCard(DhUser user) {
		Date date =new Date();
		DhCard card = new DhCard();
		card.setCardNumber(user.getCardNumber());
		card.setMoney(0.0);
		card.setStatus(1);
		card.setCreateTime(date);
		card.setUpdateTime(date);
		cardDao.insert(card);
		user.setUpdateTime(date);
		if(userDao.updateTemplateById(user)>0) {
			return true;
		}
		return false;
	}
}