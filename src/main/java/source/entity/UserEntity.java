package source.entity;

import source.config.AppStatus;

import javax.persistence.*;

@Entity
@Table(name = "user")
public class UserEntity extends BaseEntity{

    @Column
    private String user_name;

    @Column
    private String password;

    @OneToOne
    @JoinColumn
    private UserInfoEntity user_info_id;

    @OneToOne
    @JoinColumn
    private RoleEntity role_id;

    @Column
    private int status;

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public UserInfoEntity getUser_info_id() {
        return user_info_id;
    }

    public void setUser_info_id(UserInfoEntity user_info_id) {
        this.user_info_id = user_info_id;
    }

    public RoleEntity getRole_id() {
        return role_id;
    }

    public void setRole_id(RoleEntity role_id) {
        this.role_id = role_id;
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
            case AppStatus.user.Active:
                result =String.format("<span class=\"label label-sm label-success\">Hoạt động</span>");
                break;
            case AppStatus.user.Disable:
                result =String .format("<span class=\"label label-sm label-danger\">Đã khóa</span>");
                break;
        }
        return result;
    }
}
