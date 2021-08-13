package source.iService;

import source.entity.CategoryEntity;

import java.util.List;

public interface CategoryService {

    List<CategoryEntity> findByActiveFag();
}
