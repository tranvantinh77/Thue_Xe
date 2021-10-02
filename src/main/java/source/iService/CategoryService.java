package source.iService;

import org.springframework.data.domain.Pageable;
import source.entity.CarCompanyEntity;
import source.entity.CategoryEntity;

import java.util.List;

public interface CategoryService {  List<CategoryEntity> findByActiveFag(Pageable pageable);

    List<CategoryEntity> findByActiveFag();

    List<CategoryEntity> findByKeyword(String keyword, Pageable pageable);

    List<CategoryEntity> findByKeyword(String keyword);

    void save(CategoryEntity categoryEntity);

    CategoryEntity findById(Long id);

    List<CategoryEntity> findByCategory();
}
