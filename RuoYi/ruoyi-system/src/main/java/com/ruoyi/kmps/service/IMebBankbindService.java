package com.ruoyi.kmps.service;

import java.util.List;
import com.ruoyi.kmps.domain.MebBankbind;

/**
 * 绑定银行卡记录Service接口
 * 
 * @author ruoyi
 * @date 2020-06-10
 */
public interface IMebBankbindService 
{
    /**
     * 查询绑定银行卡记录
     * 
     * @param id 绑定银行卡记录ID
     * @return 绑定银行卡记录
     */
    public MebBankbind selectMebBankbindById(Long id);

    /**
     * 查询绑定银行卡记录列表
     * 
     * @param mebBankbind 绑定银行卡记录
     * @return 绑定银行卡记录集合
     */
    public List<MebBankbind> selectMebBankbindList(MebBankbind mebBankbind);

    /**
     * 新增绑定银行卡记录
     * 
     * @param mebBankbind 绑定银行卡记录
     * @return 结果
     */
    public int insertMebBankbind(MebBankbind mebBankbind);

    /**
     * 修改绑定银行卡记录
     * 
     * @param mebBankbind 绑定银行卡记录
     * @return 结果
     */
    public int updateMebBankbind(MebBankbind mebBankbind);

    /**
     * 批量删除绑定银行卡记录
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMebBankbindByIds(String ids);

    /**
     * 删除绑定银行卡记录信息
     * 
     * @param id 绑定银行卡记录ID
     * @return 结果
     */
    public int deleteMebBankbindById(Long id);
}
