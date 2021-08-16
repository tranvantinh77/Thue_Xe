package source.entity;

import source.config.AppStatus;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.beans.Transient;

@Entity
@Table(name = "banner")
public class BannerEntity extends BaseEntity {

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

    public String statusDisplay() {
        String result = "";
        switch (getStatus()){
            case AppStatus.banner.Approved:
                result =String.format("<span class=\"label label-sm label-success\">Đã duyệt</span>");
                break;
            case AppStatus.banner.Unapproved:
                result =String .format("<span class=\"label label-sm label-danger\">Chưa duyệt</span>");
                break;
        }
        return result;
    }
    @Transient
    public String getBannerImagePath() {
        if (getImage() == null ) return "/images/default.png";

        return "/Banner-Image/" +getId()+ "/" + image;
    }
}
