package com.ruoyi.kmps.mapper;

import java.util.List;
import com.ruoyi.kmps.domain.MebFinancelrd;

/**
 * 资金明细Mapper接口
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public interface MebFinancelrdMapper 
{
    /**
     * 查询资金明细
     * 
     * @param id 资金明细ID
     * @return 资金明细
     */
    public MebFinancelrd selectMebFinancelrdById(Long id);

    /**
     * 查询资金明细列表
     * 
     * @param mebFinancelrd 资金明细
     * @return 资金明细集合
     */
    public List<MebFinancelrd> selectMebFinancelrdList(MebFinancelrd mebFinancelrd);

    /**
     * 新增资金明细
     * 
     * @param mebFinancelrd 资金明细
     * @return 结果
     */
    public int insertMebFinancelrd(MebFinancelrd mebFinancelrd);

    /**
     * 修改资金明细
     * 
     * @param mebFinancelrd 资金明细
     * @return 结果
     */
    public int updateMebFinancelrd(MebFinancelrd mebFinancelrd);

    /**
     * 删除资金明细
     * 
     * @param id 资金明细ID
     * @return 结果
     */
    public int deleteMebFinancelrdById(Long id);

    /**
     * 批量删除资金明细
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebFinancelrdByIds(String[] ids);
}
