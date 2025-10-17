package cz.czechitas.java2webapps.ukol3.controller;

import cz.czechitas.java2webapps.ukol3.entities.BusinessCard;
import cz.czechitas.java2webapps.ukol3.service.BusinessCardService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Kontroler obsluhující zobrazování vizitek.
 */
@Controller
public class BusinessCardController {
  private final BusinessCardService service;

  //inversion of control, connection with the service
  public BusinessCardController(BusinessCardService service) {
    this.service = service;
  }

  @GetMapping("/") //main route
  public ModelAndView seznam() {
    ModelAndView modelAndView = new ModelAndView("seznam");
    modelAndView.addObject("businessCardList", service.getAll());
    return modelAndView;
  }

  @GetMapping("/detail/{id}") //dynamic route for each card detail
  public ModelAndView detail(@PathVariable int id) {
    ModelAndView modelAndView = new ModelAndView("detail");
    modelAndView.addObject("businessCard", service.getById(id));
    return modelAndView;
  }

  @GetMapping("/nova")
  public ModelAndView nova() {
    return new ModelAndView("nova");
  }

  @PostMapping("/")
  public String append(BusinessCard businessCard) {
    service.append(businessCard);
    return "redirect:/";
  }

}
