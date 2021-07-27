package source.entity;

import source.config.AppStatus;

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

    public String statusDisplay() {
        String result = "";
        switch (getStatus()){
            case AppStatus.discount.Approved:
                result =String.format("<span class=\"label label-sm label-success\">Đã duyệt</span>");
                break;
            case AppStatus.discount.Unapproved:
                result =String .format("<span class=\"label label-sm label-danger\">Chưa duyệt</span>");
                break;
        }
        return result;
    }
}
