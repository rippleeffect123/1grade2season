package kr.ac.kopo.polycafe.model;


import java.util.List;

public class Product {
	private Long id;
	private String name;
	private String nameEng;
	private int price;
	private String brand;
	private int vol;
	private int abv;
	private Long info;
	
	
	

	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNameEng() {
		return nameEng;
	}

	public void setNameEng(String nameEng) {
		this.nameEng = nameEng;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public int getVol() {
		return vol;
	}

	public void setVol(int vol) {
		this.vol = vol;
	}

	public int getAbv() {
		return abv;
	}

	public void setAbv(int abv) {
		this.abv = abv;
	}

	public Long getInfo() {
		return info;
	}

	public void setInfo(Long info) {
		this.info = info;
	}

	private List<Photo> photo;

	public List<Photo> getPhoto() {
		return photo;
	}

	public void setPhoto(List<Photo> photo) {
		this.photo = photo;
	}

	
}
