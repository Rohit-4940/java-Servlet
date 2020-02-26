package Domain;

public class clothdomain {
	private Integer id;
	private String name;
	 private String brand_name;
	 private String size;
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
	 public String getSize() {
			return size;
		}

		public void setSize(String size) {
			this.size = size;
		}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	 private Double price;

}