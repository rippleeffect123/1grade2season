package kr.ac.kopo.HWLiquor.model;

import java.util.List;

public class Product {
	private Long id;
	private Long categoryId;
	private String name;
	private String nameEng;
	private int price;
	private String brand;
	private Long vol;
	private Long abv;
	private String info;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
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
	public Long getVol() {
		return vol;
	}
	public void setVol(Long vol) {
		this.vol = vol;
	}
	public Long getAbv() {
		return abv;
	}
	public void setAbv(Long abv) {
		this.abv = abv;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
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
