package springmvc.dao;


import org.apache.ibatis.annotations.Select;

import springmvc.entity.Classes;

public interface ClassesDao {

	@Select("select * from class where cid=#{cid}")
	public Classes findById(Integer cid);
	
	public int deleteById(Integer cid);
	
	
}
