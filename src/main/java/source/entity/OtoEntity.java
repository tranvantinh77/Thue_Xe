package source.entity;

import javax.persistence.*;

@Entity
@Table(name = "oto")
public class OtoEntity extends BaseEntity {

    @Column
    private String code;

    @Column
    private String name;

    @Column
    private String image;

    @Column
    private String description;

    @Column
    private int status;

    @Column
    private double price;

    @Column
    private String license_plates;

    @OneToOne
    @JoinColumn
    private CarCompanyEntity car_company_id;

    @OneToOne
    @JoinColumn
    private CategoryEntity category_id;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getLicense_plates() {
        return license_plates;
    }

    public void setLicense_plates(String license_plates) {
        this.license_plates = license_plates;
    }

    public CarCompanyEntity getCar_company_id() {
        return car_company_id;
    }

    public void setCar_company_id(CarCompanyEntity car_company_id) {
        this.car_company_id = car_company_id;
    }

    public CategoryEntity getCategory_id() {
        return category_id;
    }

    public void setCategory_id(CategoryEntity category_id) {
        this.category_id = category_id;
    }
}
