package Domain;
public class productdomain {
private Integer id;
private String name;
private String brand_name;
private String manufacture_date;
private String expire_date;
private Double price;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getBrand_name() {
	return brand_name;
}
public void setBrand_name(String brand_name) {
	this.brand_name = brand_name;
}
public String getManufacture_date() {
	return manufacture_date;
}
public void setManufacture_date(String manufacture_date) {
	this.manufacture_date = manufacture_date;
}
public String getExpire_date() {
	return expire_date;
}
public void setExpire_date(String expire_date) {
	this.expire_date = expire_date;
}
public Double getPrice() {
	return price;
}
public void setPrice(Double price) {
	this.price = price;
}

}
