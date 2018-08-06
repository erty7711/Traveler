package com.web.model.airplain;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="clickNum")
public class ClickNumBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String years=new SimpleDateFormat("yyyy").format(new Date());
	private String months=new SimpleDateFormat("MM").format(new Date());
	private String arrival;
	private long click;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getYears() {
		return years;
	}
	public void setYears(String years) {
		this.years = years;
	}
	public String getMonths() {
		return months;
	}
	public void setMonths(String months) {
		this.months = months;
	}
	public String getArrival() {
		return arrival;
	}
	public void setArrival(String arrival) {
		this.arrival = arrival;
	}
	public long getClick() {
		return click;
	}
	public void setClick(long click) {
		this.click = click;
	}
	@Override
	public String toString() {
		return "ClickNumBean [id=" + id + ", years=" + years + ", months=" + months + ", arrival=" + arrival
				+ ", click=" + click + "]";
	}
	
	
	
	

}
