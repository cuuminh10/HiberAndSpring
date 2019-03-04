package stackjava.com.springmvchibernate.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import stackjava.com.springmvchibernate.entities.Categories;

@Repository(value = "customerDAO")
@Transactional(rollbackFor = Exception.class)
public class CategoriesDAO {

	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void save(final Categories customer) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(customer);
	}

	public void update(final Categories categories) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(categories);;
	}

	public Categories findById(final int id) {
		Session session = this.sessionFactory.getCurrentSession();
		return session.get(Categories.class, id);
	}

	public void delete(final Categories customer) {
		Session session = this.sessionFactory.getCurrentSession();
		session.remove(customer);
	}

	public List<Categories> findAll() {
		Session session = this.sessionFactory.getCurrentSession();
		return session.createQuery("from Categories",Categories.class).getResultList();
	}
	
	
}
