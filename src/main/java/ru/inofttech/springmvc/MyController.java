package ru.inofttech.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/employee")
public class MyController {

    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmpDetails(Model model) {


        model.addAttribute("employee", new Employee());

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
    public String showEmpDetails(@Valid @ModelAttribute("employee") Employee employee,
                                 BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "ask-emp-details-view";
        }
        return "show-emp-details-view";
    }
}
