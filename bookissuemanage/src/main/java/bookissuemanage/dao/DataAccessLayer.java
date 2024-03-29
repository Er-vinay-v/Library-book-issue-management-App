package bookissuemanage.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import bookissuemanage.entity.LabEntity;

@Component
public class DataAccessLayer {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//save data in database method
	@Transactional
	public void saveData(LabEntity entity) {
		this.hibernateTemplate.saveOrUpdate(entity);
		System.out.println(entity);
	}
	
	//get data List form database
	
	public List<LabEntity> getInfo(){
		
		List<LabEntity> loadAll = this.hibernateTemplate.loadAll(LabEntity.class);
		for(LabEntity i:loadAll) {
			System.out.println(i);
		}
		return loadAll;
	}
	
	//Delete data from database
	@Transactional
	public void deleteData(int id) {
		LabEntity labEntity = this.hibernateTemplate.get(LabEntity.class, id);
		this.hibernateTemplate.delete(labEntity);
	}
	
	//get single data from database
	public LabEntity getone(int id) {
		LabEntity labEntity = this.hibernateTemplate.get(LabEntity.class, id);
		System.out.println(labEntity);
		return labEntity;
	}
}
