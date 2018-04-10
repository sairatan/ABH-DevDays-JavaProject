package controllers;

import play.mvc.Result;
import services.AdministratorService;
import models.helpers.AdministratorStatistics;
import play.db.jpa.Transactional;

import javax.inject.Inject;

/**
 * The type Administrator controller.
 */
public class AdministratorController extends BaseController {

	private AdministratorService service;

	/**
	 * Sets service.
	 *
	 * @param service the service
	 */
	@Inject
	public void setService(final AdministratorService service) {
		this.service = service;
	}
	
	@Transactional(readOnly = true)
	public Result getAdminStatistics() {
		return wrapForPublic(() -> this.service.getAdminStatistics());
	}
}
