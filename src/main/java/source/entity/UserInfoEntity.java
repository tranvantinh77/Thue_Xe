package source.entity;

import source.config.AppStatus;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.sql.Date;

@Entity
@Table(name = "user_info")
public class UserInfoEntity extends BaseEntity {

    @Column
    private String name;

    @Column
    private Date birthday;

    @Column
    private int gender;

    @Column
    private String email;

    @Column
    private String address;

    @Column
    private String phone;

    @Column
    private String image;

    @Column
    private String CMND_CCCD;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCMND_CCCD() {
        return CMND_CCCD;
    }

    public void setCMND_CCCD(String CMND_CCCD) {
        this.CMND_CCCD = CMND_CCCD;
    }

    public String genderDisplay() {
        String result = "";
        switch (getGender()){
            case AppStatus.gender.Male:
                result =String.format("<span class=\"label label-sm label-primary\">Nam</span>");
                break;
            case AppStatus.gender.Female:
                result =String .format("<span class=\"label label-sm label-danger\">Nữ</span>");
                break;
        }
        return result;
    }
}
