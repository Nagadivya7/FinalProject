package com.atos.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class TrmDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Trm obj) {
		String sql = "insert into trm_11(no_of_trainers,platform,duration,location) values(" + obj.getNoOfTrainers() + ",'" +obj.getPlatform()+"','"+obj.getDuration()+"','"+obj.getLocation()+"')";
		return template.update(sql);
	}
	public List<Trm> getTrmValues() {
		return template.query("select * from trm_11", new RowMapper<Trm>() {
			public Trm mapRow(ResultSet rs1, int row) throws SQLException {
				Trm obj = new Trm();
				obj.setNoOfTrainers(rs1.getInt(1));
				obj.setPlatform(rs1.getString(2));
				obj.setDuration(rs1.getString(3));
				obj.setLocation(rs1.getString(4));
				
				return obj;
			}
		});
	}
}
