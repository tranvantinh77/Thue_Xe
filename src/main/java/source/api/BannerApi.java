package source.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.Banner;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import source.entity.*;
import source.iService.*;

import java.util.List;

@Controller
public class BannerApi {

    @Autowired
    private BannerService bannerService;

    @Autowired
    private OtoService otoService;

    @Autowired
    private CarCompanyService carCompanyService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private DiscountService discountService;

    @Autowired
    private UserService userService;

    @Autowired
    private CheckoutService checkoutService;

    @GetMapping("/banner")
    @ResponseBody
    public List<BannerEntity> getListBanner() {

        List<BannerEntity> list = bannerService.findByStatus();

        return list;
    }

    @GetMapping("/oto/car-company={car_company}")
    @ResponseBody
    public List<OtoEntity> getListOto(@PathVariable int car_company) {

        List<OtoEntity> list = otoService.findByCarCompany(car_company);

        return list;
    }

    @GetMapping("/oto/category={category}")
    @ResponseBody
    public List<OtoEntity> getListOtoCategory(@PathVariable int category) {

        List<OtoEntity> list = otoService.findByCategory(category);

        return list;
    }

    @GetMapping("/carCompany")
    @ResponseBody
    public List<CarCompanyEntity> getListCarCompany() {

        List<CarCompanyEntity> list = carCompanyService.findByCarCompany();

        return list;
    }

    @GetMapping("/category")
    @ResponseBody
    public List<CategoryEntity> getListCategory() {

        List<CategoryEntity> list = categoryService.findByCategory();

        return list;
    }

    @GetMapping("/discount")
    @ResponseBody
    public List<DiscountEntity> getListDiscount() {

        List<DiscountEntity> list = discountService.findByDiscount();

        return list;
    }

    @GetMapping("/user/userInfo={userInfo}")
    @ResponseBody
    public List<UserEntity> getListUser(@PathVariable int userInfo) {

        List<UserEntity> list = userService.findByUser(userInfo);

        return list;
    }

    @GetMapping("/checkout/oto={oto}")
    @ResponseBody
    public List<CheckoutEntity> getListCheckout(@PathVariable int oto) {

        List<CheckoutEntity> list = checkoutService.findByCheckout(oto);

        return list;
    }
}
