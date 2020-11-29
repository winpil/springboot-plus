package com.dhecard.web;

import java.util.Date;
import java.util.List;


import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.beetl.sql.core.engine.PageQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ibeetl.admin.core.annotation.Function;
import com.ibeetl.admin.core.file.FileService;
import com.ibeetl.admin.core.web.JsonResult;
import com.ibeetl.admin.core.util.*;
import com.dhecard.entity.*;
import com.dhecard.service.*;
import com.dhecard.web.query.*;

/**
 * User 接口
 */
@Controller
public class DhUserController{

    private final Log log = LogFactory.getLog(this.getClass());
    private static final String MODEL = "/dhecard/user";


    @Autowired private DhUserService userService;
    @Autowired private DhCardService cardService;
    
    @Autowired
    FileService fileService;
    /* 页面 */

    @GetMapping(MODEL + "/index.do")
    @Function("user.query")
    @ResponseBody
    public ModelAndView index() {
        ModelAndView view = new ModelAndView("/dhecard/user/index.html") ;
        view.addObject("search", DhUserQuery.class.getName());
        return view;
    }

    @GetMapping(MODEL + "/edit.do")
    @Function("user.edit")
    @ResponseBody
    public ModelAndView edit(Integer id) {
        ModelAndView view = new ModelAndView("/dhecard/user/edit.html");
        DhUser user = userService.queryById(id);
        view.addObject("user", user);
        return view;
    }
    @GetMapping(MODEL + "/faka.do")
    @Function("user.faka")
    @ResponseBody
    public ModelAndView faka(Integer id) {
        ModelAndView view = new ModelAndView("/dhecard/user/faka.html");
        DhUser user = userService.queryById(id);
        view.addObject("user", user);
        return view;
    }
    @GetMapping(MODEL + "/add.do")
    @Function("user.add")
    @ResponseBody
    public ModelAndView add() {
        ModelAndView view = new ModelAndView("/dhecard/user/add.html");
        return view;
    }

    /* ajax json */

    @PostMapping(MODEL + "/list.json")
    @Function("user.query")
    @ResponseBody
    public JsonResult<PageQuery> list(DhUserQuery condtion)
    {
        PageQuery page = condtion.getPageQuery();
        userService.queryByCondition(page);
        return JsonResult.success(page);
    }

    @PostMapping(MODEL + "/add.json")
    @Function("user.add")
    @ResponseBody
    public JsonResult add(@Validated(ValidateConfig.ADD.class)DhUser user)
    {
    	Date date = new Date();
    	user.setUpdateTime(date);
    	user.setCreateTime(date);
    	user.setEnable(1);
        userService.save(user);
        return new JsonResult().success();
    }

    @PostMapping(MODEL + "/update.json")
    @Function("user.update")
    @ResponseBody
    public JsonResult<String> update(@Validated(ValidateConfig.UPDATE.class)  DhUser user) {
    	user.setUpdateTime(new Date());
        boolean success = userService.updateTemplate(user);
        if (success) {
            return new JsonResult().success();
        } else {
            return JsonResult.failMessage("保存失败");
        }
    }
    @PostMapping(MODEL + "/saveCard.json")
    @Function("user.update")
    @ResponseBody
    public JsonResult<String> saveCard(@Validated(ValidateConfig.UPDATE.class)  DhUser user) {
    	DhUserQuery query = new DhUserQuery();
    	query.setCardNumber(user.getCardNumber());
    	PageQuery<DhCard> list = cardService.queryByCondition(query.getPageQuery());
    	if(list.getTotalRow() == 0) {
	        boolean success = cardService.saveCard(user);
	        if (success) {
	            return new JsonResult().success();
	        } else {
	            return JsonResult.failMessage("保存失败");
	        }
    	}else {
    		return JsonResult.failMessage("卡已存在");
    	}
    }

   
    @GetMapping(MODEL + "/view.json")
    @Function("user.query")
    @ResponseBody
    public JsonResult<DhUser>queryInfo(Integer id) {
        DhUser user = userService.queryById( id);
        return  JsonResult.success(user);
    }

    @PostMapping(MODEL + "/delete.json")
    @Function("user.delete")
    @ResponseBody
    public JsonResult delete(String ids) {
        if (ids.endsWith(",")) {
            ids = StringUtils.substringBeforeLast(ids, ",");
        }
        List<Long> idList = ConvertUtil.str2longs(ids);
        userService.batchDelDhUser(idList);
        return new JsonResult().success();
    }
    

}
