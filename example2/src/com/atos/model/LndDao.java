package com.atos.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class LndDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Lnd obj1) {
		String sql = "insert into lnd_11(no_of_trainers,availability_of_rooms,time_slots) values(" + obj1.getNoOfTrainers() + "," +obj1.getAvailabilityOfRooms()+",'"+obj1.getTimeSlots()+"')";
		return template.update(sql);
	}
	public List<Lnd> getLndValues() {
		return template.query("select * from lnd_11", new RowMapper<Lnd>() {
			public Lnd mapRow(ResultSet rs2, int row) throws SQLException {
				Lnd obj1 = new Lnd();
				obj1.setNoOfTrainers(rs2.getInt(1));
				obj1.setAvailabilityOfRooms(rs2.getInt(2));
				obj1.setTimeSlots(rs2.getString(3));
				
				return obj1;
			}
		});
	}
}
