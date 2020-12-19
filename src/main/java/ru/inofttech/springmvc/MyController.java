package ru.inofttech.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/employee")
public class MyController {

    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmpDetails(Model model) {

        Employee employee = new Employee();
        employee.setName("Nikitosss");
        employee.setSurname("Demakovvv");
        employee.setSalary(20000);

        model.addAttribute("employee", employee);

        return "ask-emp-details-view";
    }


    /*@RequestMapping("/showDetails")
    public String showEmpDetails() {
        return "show-emp-details-view";
    }*/

    /*@RequestMapping("/showDetails")
    public String showEmpDetails(HttpServletRequest request, Model model) {
        String empName = request.getParameter("employeeName");
        empName = "Mr." + empName;
        model.addAttribute("nameAttribute", empName);
        model.addAttribute("description","Very well programmer");
        return "show-emp-details-view";
    }*/

    @RequestMapping("/showDetails")
    public String showEmpDetails(@ModelAttribute("employee") Employee employee) {
        return "show-emp-details-view";
    }
}
