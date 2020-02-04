package com.atos.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class ReplyDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Reply r) {
		String sql = "insert into reply_11(fname,lname,email,mobile,availabilityofrooms,timeslots,duration) values('"+r.getFname() +"' , '"+ r.getLname() + "', '"+r.getEmail()+"','"+r.getMobile()+"','"+r.getAvailabilityOfRooms()+"','"+r.getTimeSlots()+"','"+r.getDuration()+"') ";
		return template.update(sql);
	}

	public List<Reply> getReplys() {
		return template.query("select * from reply_11", new RowMapper<Reply>() {
			public Reply mapRow(ResultSet rs, int row) throws SQLException {
				Reply r = new Reply();
				r.setFname(rs.getString(1));
				r.setLname(rs.getString(2));
				r.setEmail(rs.getString(3));
				r.setMobile(rs.getLong(4));
				r.setAvailabilityOfRooms(rs.getInt(5));
				r.setTimeSlots(rs.getString(6));
				r.setDuration(rs.getString(7));
				return r;
			}
		});
	}

}
