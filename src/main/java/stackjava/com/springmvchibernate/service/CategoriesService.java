package stackjava.com.springmvchibernate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import stackjava.com.springmvchibernate.dao.CategoriesDAO;
import stackjava.com.springmvchibernate.entities.Categories;

@Service
@Transactional
public class CategoriesService {

	@Autowired
	private CategoriesDAO CategoriesDAO;

	public List<Categories> findAll() {
		return CategoriesDAO.findAll();
	}

	public Categories findById(final int id) {
		return CategoriesDAO.findById(id);
	}

	public void save(final Categories categories) {
		CategoriesDAO.save(categories);
	}

	public void update(final Categories categories) {
		CategoriesDAO.update(categories);
	}

	public void delete(final int id) {
		Categories customer = CategoriesDAO.findById(id);
		if (customer != null) {
			CategoriesDAO.delete(customer);
		}
	}
}
