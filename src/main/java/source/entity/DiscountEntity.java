package source.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "discount")
public class DiscountEntity extends BaseEntity {

    @Column
    private String code;

    @Column
    private String name;

    @Column
    private int price_discount;

    @Column
    private int status;

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

    public int getPrice_discount() {
        return price_discount;
    }

    public void setPrice_discount(int price_discount) {
        this.price_discount = price_discount;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
