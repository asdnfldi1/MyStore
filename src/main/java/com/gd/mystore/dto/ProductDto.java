package com.gd.mystore.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class ProductDto {
	public int productNo;
	public String productDivision;
	public String productName;
	public String cost;
	public String sailPrice;
	public String profitMargin;
	public String recommendedCategory;
	public String expirationPeriod;
	public String productImg;
	public String creater;
	public Date createDate;
	public Date modifier;
	public String modifyDate;
	public String deliveryDate;
	public String useYn;
	
}
