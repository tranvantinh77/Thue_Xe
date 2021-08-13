package source.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import source.DAO.CategoryDAO;
import source.entity.CategoryEntity;
import source.iService.CategoryService;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryDAO categoryDAO;

    @Override
    public List<CategoryEntity> findByActiveFag(Pageable pageable) {
        return categoryDAO.findByActiveFag();
    }

    @Override
    public List<CategoryEntity> findByActiveFag() {

        return categoryDAO.findByActiveFag();
    }

    @Override
    public List<CategoryEntity> findByKeyword(String keyword, Pageable pageable) {
        return categoryDAO.findByKeyword(keyword, pageable);
    }

    @Override
    public List<CategoryEntity> findByKeyword(String keyword) {
        return categoryDAO.findByKeyword(keyword);
    }

    @Override
    public void save(CategoryEntity categoryEntity) {

    }

    @Override
    public CategoryEntity findById(Long id) {
        return categoryDAO.findById1(id);
    }
}
