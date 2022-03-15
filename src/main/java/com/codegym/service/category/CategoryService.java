package com.codegym.service.category;

import com.codegym.dao.category.ICategoryDao;
import com.codegym.dao.product.IProductDao;
import com.codegym.model.Category;

import java.util.List;

public class CategoryService implements ICategoryService{
    private ICategoryDao categoryDao;
    public CategoryService(ICategoryDao categoryDao) {
        this.categoryDao = categoryDao;
    }

    @Override
    public List<Category> findAll() {
        return categoryDao.findAll();
    }

    @Override
    public Category findById(int id) {
        return categoryDao.findById(id);
    }

    @Override
    public boolean create(Category category) {
        return categoryDao.create(category);
    }

    @Override
    public boolean updateById(int id, Category category) {
        return categoryDao.updateById(id,category);
    }

    @Override
    public boolean deleteById(int id) {
        return categoryDao.deleteById(id);
    }

}
