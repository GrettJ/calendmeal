package es.greta.calendmeal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("Calendmeal", "Primera entrega - test");
        return "index";
    }

    /*
    @GetMapping("/destino")
    public String destino() {
        return "destino";
    }
    */
}
