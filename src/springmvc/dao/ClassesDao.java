package springmvc.dao;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import springmvc.entity.Classes;

@Repository("classesDao")
@Mapper
public interface ClassesDao {

	@Select("select * from class where cid=#{cid}")
	public Classes findById(Integer cid);
	
	public int deleteById(Integer cid);
	
	
}
