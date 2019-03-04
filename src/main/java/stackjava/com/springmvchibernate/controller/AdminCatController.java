package stackjava.com.springmvchibernate.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import stackjava.com.springmvchibernate.constant.Defines;
import stackjava.com.springmvchibernate.entities.Categories;
import stackjava.com.springmvchibernate.service.CategoriesService;

@Controller
@RequestMapping("admin/cat")
public class AdminCatController {

	@Autowired
	private CategoriesService categoriesService;
	@Autowired
	private Defines defines;
	
	private List<String> listMenu = new ArrayList<String>();

	
	@ModelAttribute
	public void addCommon(ModelMap m, HttpServletRequest request) {
		HashMap<Integer, Categories> hmap = new HashMap<Integer, Categories>();
		if (listMenu.size() > 0) {
			listMenu = new ArrayList<String>();
		}
		List<Categories> listItem = null;
		listItem = categoriesService.findAll();
		String urlHeader = request.getContextPath();
		for (Categories item : listItem) {

			Categories cat = new Categories(item.getId(),item.getName(),item.getId_parent());
			hmap.put(item.getId(), cat);

		}
		dequy(hmap, 0, "", urlHeader, "index");
		m.addAttribute("listmenu", listMenu);
		m.addAttribute("defines", defines);
		
	}

	@RequestMapping(value="")
	public String listCustomer(Model model,HttpServletRequest request) {
		HashMap<Integer, Categories> hmap = new HashMap<Integer, Categories>();
		if (listMenu.size() > 0) {
			listMenu = new ArrayList<String>();
		}
		List<Categories> listItem = null;
		listItem = categoriesService.findAll();
		String urlHeader = request.getContextPath();
		for (Categories item : listItem) {

			Categories cat = new Categories(item.getId(),item.getName(),item.getId_parent());
			hmap.put(item.getId(), cat);

		}
		dequy(hmap, 0, "", urlHeader, "index");
		model.addAttribute("listmenu", listMenu);
		return "admin.cat.index";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String insertCat(ModelMap map,HttpServletRequest request) {
		HashMap<Integer, Categories> hmap = new HashMap<Integer, Categories>();
		if (listMenu.size() > 0) {
			listMenu = new ArrayList<String>();
		}
		List<Categories> listItem = null;
		listItem = categoriesService.findAll();
		String urlHeader = request.getContextPath();
		for (Categories item : listItem) {

			Categories cat = new Categories(item.getId(),item.getName(),item.getId_parent());
			hmap.put(item.getId(), cat);

		}
		dequy(hmap, 0, "", urlHeader, "add");
		if (listItem.size() > 0) {
			map.addAttribute("listOption", listMenu);
			return "admin.cat.add";
		}
		return "admin.cat.add";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String insertCat(ModelMap map,HttpServletRequest request,RedirectAttributes rs,@ModelAttribute("Categories") Categories cat) {
		categoriesService.save(cat);
		rs.addFlashAttribute("msg",defines.SUCCESS);
		return "redirect:/admin/cat";
	}

	@RequestMapping("/customer-view/{id}")
	public String viewCustomer(@PathVariable int id, Model model) {
		Categories customer = categoriesService.findById(id);
		model.addAttribute("customer", customer);
		return "customer-view";
	}
	
	@RequestMapping("/customer-update/{id}")
	public String updateCustomer(@PathVariable int id, Model model) {
		Categories customer = categoriesService.findById(id);
		model.addAttribute("customer", customer);
		return "customer-update";
	}

	@RequestMapping("/saveCustomer")
	public String doSaveCustomer(@ModelAttribute("Customer") Categories customer, Model model) {
		categoriesService.save(customer);
		model.addAttribute("listCustomer", categoriesService.findAll());
		return "customer-list";
	}

	@RequestMapping("/updateCustomer")
	public String doUpdateCustomer(@ModelAttribute("Customer") Categories customer, Model model) {
		categoriesService.update(customer);
		model.addAttribute("listCustomer", categoriesService.findAll());
		return "customer-list";
	}
	
	@RequestMapping("/customerDelete/{id}")
	public String doDeleteCustomer(@PathVariable int id, Model model) {
		categoriesService.delete(id);
		model.addAttribute("listCustomer", categoriesService.findAll());
		return "customer-list";
	}
	
	
	public void dequy(HashMap<Integer, Categories> hmap, int key, String c, String url, String info) {
		int i = 0;
		String table = "";

		for (Map.Entry<Integer, Categories> list : hmap.entrySet()) {
			if (list.getValue().getId_parent() == key && info.equalsIgnoreCase("index")) {

				table = "	<c:set var=delUrl value=${pageContext.request.contextPath}><c:set>\r\n"
						+ "  	<c:set var=editUrl value=${pageContext.request.contextPath}><c:set>\r\n"
						+ "   <tr class=\"odd gradeX\">\r\n" + "       <td>" + list.getKey() + "</td>\r\n"
						+ "       <td>" + c + list.getValue().getName() + "</td>\r\n"
						+ "       <td class=\"center text-center\" width=\"20%\">\r\n" + "        <a href=\"" + url
						+ "/admin/cat/edit/" + list.getKey()
						+ "\" title=\"\" class=\"btn btn-primary\"><span class=\"glyphicon glyphicon-pencil \"></span> Sửa</a>\r\n"
						+ "        <a href=\"" + url + "/admin/cat/del/" + list.getKey()
						+ "\" title=\"\" class=\"btn btn-danger\" onclick=\"return confirm('Bạn có chắc mún xóa')\"><span class=\"glyphicon glyphicon-trash\"></span> Xóa</a>\r\n"
						+ "        </td>\r\n" + "    </tr>";
				listMenu.add(table);
				hmap.remove(hmap.get(list.getKey()));
				dequy(hmap, list.getValue().getId(), c + "---", url, info);
			} else {
				if (list.getValue().getId_parent() == key && info.equalsIgnoreCase("add")) {

					table = "<option value=" + list.getKey() + ">" + c + list.getValue().getName() + "</option>";
					listMenu.add(table);
					hmap.remove(hmap.get(list.getKey()));
					dequy(hmap, list.getValue().getId(), c + "---", url, info);
				}
			}
		}
	}
}
