package services;

import models.helpers.AdministratorStatistics;

import javax.inject.Inject;
import javax.inject.Singleton;

/**
 * The type Administrator service.
 */
@Singleton
public class AdministratorService extends BaseService {

	@Inject
	private AdministratorService() { }
	
	public AdministratorStatistics getAdminStatistics() {
		AdministratorStatistics adminStatistics = new AdministratorStatistics();
		adminStatistics.restaurants = Integer.parseInt(getSession()
										.createSQLQuery("SELECT COUNT(*) FROM restaurant")
										.uniqueResult()
										.toString()); 
		adminStatistics.locations = Integer.parseInt(getSession()
										.createSQLQuery("SELECT COUNT(*) FROM city")
										.uniqueResult()
										.toString()); 
		adminStatistics.users = Integer.parseInt(getSession()
										.createSQLQuery("SELECT COUNT(*) FROM \"user\"")
										.uniqueResult()
										.toString()); 
		adminStatistics.cuisines = Integer.parseInt(getSession()
										.createSQLQuery("SELECT COUNT(*) FROM cuisine")
										.uniqueResult()
										.toString()); 

		return adminStatistics;	
	} 
}
