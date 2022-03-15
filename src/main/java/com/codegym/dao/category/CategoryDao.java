package com.codegym.dao.category;

import com.codegym.dao.DBConnection;
import com.codegym.model.Category;
import com.codegym.model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryDao implements ICategoryDao {
    public static final String UPDATE_CATEGORY = "UPDATE category SET name=? WHERE id=?";
    public static final String INSERT_CATEGORY = "Insert into category(name) values (?)";
    public static final String DELETE_CATEGORY = "delete from category where id = ?";
    public static final String SELECT_ONE_CATEGORY = "SELECT * FROM category where id = ?";
    public static final String SELECT_ALL_CATEGORY = "select * from category";
    Connection connection = DBConnection.getConnection();

    public CategoryDao() {
    }

    @Override
    public List<Category> findAll() {
        List<Category> categories = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CATEGORY);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                Category category = new Category(id, name);
                categories.add(category);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return categories;
    }

    @Override
    public Category findById(int id) {
        Category category = new Category();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(SELECT_ONE_CATEGORY);
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                category = new Category(name);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return category;
    }

    @Override
    public boolean create(Category category) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CATEGORY);
            preparedStatement.setString(1, category.getName());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateById(int id, Category category) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CATEGORY);
            preparedStatement.setString(1, category.getName());
            preparedStatement.setInt(2, id);
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteById(int id) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_CATEGORY);
            preparedStatement.setInt(1, id);
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
