package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.ShoujishangchengEntity;
import com.entity.view.ShoujishangchengView;

import com.service.ShoujishangchengService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 手机商城
 * 后端接口
 * @author 
 * @email 
 * @date 2021-02-25 11:57:43
 */
@RestController
@RequestMapping("/shoujishangcheng")
public class ShoujishangchengController {
    @Autowired
    private ShoujishangchengService shoujishangchengService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ShoujishangchengEntity shoujishangcheng, HttpServletRequest request){

        EntityWrapper<ShoujishangchengEntity> ew = new EntityWrapper<ShoujishangchengEntity>();
    	PageUtils page = shoujishangchengService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shoujishangcheng), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ShoujishangchengEntity shoujishangcheng, HttpServletRequest request){
        EntityWrapper<ShoujishangchengEntity> ew = new EntityWrapper<ShoujishangchengEntity>();
    	PageUtils page = shoujishangchengService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shoujishangcheng), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ShoujishangchengEntity shoujishangcheng){
       	EntityWrapper<ShoujishangchengEntity> ew = new EntityWrapper<ShoujishangchengEntity>();
      	ew.allEq(MPUtil.allEQMapPre( shoujishangcheng, "shoujishangcheng")); 
        return R.ok().put("data", shoujishangchengService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ShoujishangchengEntity shoujishangcheng){
        EntityWrapper< ShoujishangchengEntity> ew = new EntityWrapper< ShoujishangchengEntity>();
 		ew.allEq(MPUtil.allEQMapPre( shoujishangcheng, "shoujishangcheng")); 
		ShoujishangchengView shoujishangchengView =  shoujishangchengService.selectView(ew);
		return R.ok("查询手机商城成功").put("data", shoujishangchengView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ShoujishangchengEntity shoujishangcheng = shoujishangchengService.selectById(id);
		shoujishangcheng.setClicknum(shoujishangcheng.getClicknum()+1);
		shoujishangcheng.setClicktime(new Date());
		shoujishangchengService.updateById(shoujishangcheng);
        return R.ok().put("data", shoujishangcheng);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ShoujishangchengEntity shoujishangcheng = shoujishangchengService.selectById(id);
		shoujishangcheng.setClicknum(shoujishangcheng.getClicknum()+1);
		shoujishangcheng.setClicktime(new Date());
		shoujishangchengService.updateById(shoujishangcheng);
        return R.ok().put("data", shoujishangcheng);
    }
    


    /**
     * 赞或踩
     */
    @RequestMapping("/thumbsup/{id}")
    public R vote(@PathVariable("id") String id,String type){
        ShoujishangchengEntity shoujishangcheng = shoujishangchengService.selectById(id);
        if(type.equals("1")) {
        	shoujishangcheng.setThumbsupnum(shoujishangcheng.getThumbsupnum()+1);
        } else {
        	shoujishangcheng.setCrazilynum(shoujishangcheng.getCrazilynum()+1);
        }
        shoujishangchengService.updateById(shoujishangcheng);
        return R.ok("投票成功");
    }

    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ShoujishangchengEntity shoujishangcheng, HttpServletRequest request){
    	shoujishangcheng.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(shoujishangcheng);

        shoujishangchengService.insert(shoujishangcheng);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ShoujishangchengEntity shoujishangcheng, HttpServletRequest request){
    	shoujishangcheng.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(shoujishangcheng);

        shoujishangchengService.insert(shoujishangcheng);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody ShoujishangchengEntity shoujishangcheng, HttpServletRequest request){
        //ValidatorUtils.validateEntity(shoujishangcheng);
        shoujishangchengService.updateById(shoujishangcheng);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        shoujishangchengService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<ShoujishangchengEntity> wrapper = new EntityWrapper<ShoujishangchengEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = shoujishangchengService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	
	/**
     * 前端智能排序
     */
	@IgnoreAuth
    @RequestMapping("/autoSort")
    public R autoSort(@RequestParam Map<String, Object> params,ShoujishangchengEntity shoujishangcheng, HttpServletRequest request,String pre){
        EntityWrapper<ShoujishangchengEntity> ew = new EntityWrapper<ShoujishangchengEntity>();
        Map<String, Object> newMap = new HashMap<String, Object>();
        Map<String, Object> param = new HashMap<String, Object>();
		Iterator<Map.Entry<String, Object>> it = param.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, Object> entry = it.next();
			String key = entry.getKey();
			String newKey = entry.getKey();
			if (pre.endsWith(".")) {
				newMap.put(pre + newKey, entry.getValue());
			} else if (StringUtils.isEmpty(pre)) {
				newMap.put(newKey, entry.getValue());
			} else {
				newMap.put(pre + "." + newKey, entry.getValue());
			}
		}
		params.put("sort", "clicknum");
        params.put("order", "desc");
		PageUtils page = shoujishangchengService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shoujishangcheng), params), params));
        return R.ok().put("data", page);
    }


}
