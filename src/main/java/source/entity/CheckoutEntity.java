package source.entity;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "checkout")
public class CheckoutEntity extends BaseEntity {

    @OneToOne
    @JoinColumn
    private UserEntity user_id;

    @OneToOne
    @JoinColumn
    private OtoEntity oto_id;

    @Column
    private Date checkout_date;

    @Column
    private Date due_date;

    @Column
    private int status;

    @Column
    private double total_money;

    public UserEntity getUser_id() {
        return user_id;
    }

    public void setUser_id(UserEntity user_id) {
        this.user_id = user_id;
    }

    public OtoEntity getOto_id() {
        return oto_id;
    }

    public void setOto_id(OtoEntity oto_id) {
        this.oto_id = oto_id;
    }

    public Date getCheckout_date() {
        return checkout_date;
    }

    public void setCheckout_date(Date checkout_date) {
        this.checkout_date = checkout_date;
    }

    public Date getDue_date() {
        return due_date;
    }

    public void setDue_date(Date due_date) {
        this.due_date = due_date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public double getTotal_money() {
        return total_money;
    }

    public void setTotal_money(double total_money) {
        this.total_money = total_money;
    }
}
