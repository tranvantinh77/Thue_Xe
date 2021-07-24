package source.entity;

import javax.persistence.*;
import java.sql.Date;

@MappedSuperclass
public class BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String createBy;

    @Column
    private Date createDate;

    @Column
    private String updateBy;

    @Column
    private Date updateDate;

    @Column
    private int activeFag;


    public Long getId() {
        return id;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public int getActiveFag() {
        return activeFag;
    }

    public void setActiveFag(int activeFag) {
        this.activeFag = activeFag;
    }
}
