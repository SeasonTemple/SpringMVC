package springmvc.dao.provider;

import org.apache.ibatis.jdbc.SQL;

import springmvc.entity.Student;

import static springmvc.util.SpringMvcConstants.STUDENTTABLE;;

public class StudentDynaSqlProvider {

public String updateStudent(Student s){
		
		return new SQL(){
			{
				UPDATE(STUDENTTABLE);
				if(s.getSname()!= null){
					SET(" sname = #{sname} ");
				}
				if(s.getSnum()!= 0){
					SET(" snum = #{snum} ");
				}
				if(s.getGrade()!= 0){
					SET(" grade = #{grade} ");
				}
				if(s.getSubject()!= null){
					SET(" subject = #{subject} ");
				}
				if(s.getClas()!= null){
					SET(" cid = #{clas.cid} ");
				}
				if(s.getU() != null){
					SET(" uid = #{u.uid} ");
				}
				WHERE(" sid = #{sid} ");
			}
		}.toString();
	}
}
