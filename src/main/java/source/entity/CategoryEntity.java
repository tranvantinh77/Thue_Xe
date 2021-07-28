package source.entity;

import source.config.AppStatus;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "category")
public class CategoryEntity extends BaseEntity{

    @Column
    private String code;

    @Column
    private String name;

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
            case AppStatus.category.Active:
                result =String.format("<span class=\"label label-sm label-success\">Đã duyệt</span>");
                break;
            case AppStatus.category.Blocked:
                result =String .format("<span class=\"label label-sm label-danger\">Chưa duyệt</span>");
                break;
        }
        return result;
    }
}
