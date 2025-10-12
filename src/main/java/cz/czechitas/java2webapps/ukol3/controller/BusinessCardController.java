package cz.czechitas.java2webapps.ukol3.controller;

import cz.czechitas.java2webapps.ukol3.entities.BusinessCard;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Kontroler obsluhující zobrazování vizitek.
 */
@Controller
public class BusinessCardController {
  private final List<BusinessCard> businessCardList = List.of(
      new BusinessCard("Dita (Přikrylová) Formánková)", "Czechitas z. s.", "Václavské náměstí 837/11", "11000 Praha 1", "dita@czechitas.cz", "+420 800 123 456", "www.czechitas.cz"),
      new BusinessCard("Barbora Bühnová", "Czechitas z. s.", "Šumavská 15", "602 00 Brno-Královo Pole", "bara@czechitas.cz", null, "www.czechitas.cz"),
      new BusinessCard("Monika Ptáčníková", "Czechitas z. s.", "Wellnerova 1215/1", "779 00 Olomouc", "monika@czechitas.cz", "+420 585 111 111", "www.czechitas.cz"),
      new BusinessCard("Mirka Zatloukalová", "Czechitas z. s.", "Václavské náměstí 837/11", "11000 Praha 1", null, "+420 800 123 456", "www.czechitas.cz")
  );

  @GetMapping("/") //main route
  public ModelAndView seznam() {
    ModelAndView modelAndView = new ModelAndView("seznam");
    modelAndView.addObject("businessCardList", businessCardList);
    return modelAndView;
  }

  @GetMapping("/{id}") //dynamic route for each card detail
  public ModelAndView detail(@PathVariable int id) {
    ModelAndView modelAndView = new ModelAndView("detail");
    modelAndView.addObject("businessCard", businessCardList.get(id));
    return modelAndView;
  }
}
