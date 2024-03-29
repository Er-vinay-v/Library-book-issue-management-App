package bookissuemanage.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import bookissuemanage.dao.DataAccessLayer;
import bookissuemanage.entity.LabEntity;

@Controller
public class homecontroller {

	@Autowired
	private DataAccessLayer accessLayer;

	// Common display method
	@ModelAttribute
	public void commonView(Model model) {
		model.addAttribute("greed", "STUDENT DETAILS");
		model.addAttribute("update", "update-page");
	}

	// user input form
	@RequestMapping("/")
	public String home(Model model) {
		System.out.println("This is my index view..");
		model.addAttribute("page", "Home Page");
		return "index";
	}

	// After deleting data table handler
	@RequestMapping(path = "/process", method = RequestMethod.GET)
	public String getStudentDetails(Model model) {

		List<LabEntity> list = accessLayer.getInfo();
		model.addAttribute("details", list);

		return "success";
	}

	// Data table view
	@RequestMapping(path = "/process", method = RequestMethod.POST)
	public String processForm(@ModelAttribute("lab") LabEntity lab, Model model) {

		System.out.println(lab);

		accessLayer.saveData(lab);
		List<LabEntity> list = accessLayer.getInfo();
		model.addAttribute("details", list);

		return "success";
	}

	// delete detail handler
	@RequestMapping("/delete/{studentId}")
	public RedirectView deletedata(@PathVariable("studentId") int id, HttpServletRequest request) {

		this.accessLayer.deleteData(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/process");
		return redirectView;
	}

	// update form handler
	@RequestMapping("/update/{studentId}")
	public String update(@PathVariable("studentId") int id, Model model) {
		LabEntity getone = this.accessLayer.getone(id);
		model.addAttribute("st", getone);
		return "updateform";

	}

	// updated data insert into table handler
	@RequestMapping(path = "/update-handle", method = RequestMethod.POST)
	public String saveupdate(@ModelAttribute("entity") LabEntity entity, Model model) {
		accessLayer.saveData(entity);
		List<LabEntity> list = accessLayer.getInfo();
		model.addAttribute("details", list);

		return "success";
	}

}
