package cz.czechitas.java2webapps.ukol3.service;

import cz.czechitas.java2webapps.ukol3.entities.BusinessCard;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class BusinessCardService {
  private final List<BusinessCard> businessCardList = new ArrayList<>();

  // constructor
  public BusinessCardService() {
    businessCardList.add(new BusinessCard("Dita (Přikrylová) Formánková)", "Czechitas z. s.", "Václavské náměstí 837/11", "11000 Praha 1", "dita@czechitas.cz", "+420 800 123 456", "www.czechitas.cz"));
    businessCardList.add(new BusinessCard("Barbora Bühnová", "Czechitas z. s.", "Šumavská 15", "602 00 Brno-Královo Pole", "bara@czechitas.cz", null, "www.czechitas.cz"));
    businessCardList.add(new BusinessCard("Monika Ptáčníková", "Czechitas z. s.", "Wellnerova 1215/1", "779 00 Olomouc", "monika@czechitas.cz", "+420 585 111 111", "www.czechitas.cz"));
    businessCardList.add(new BusinessCard("Mirka Zatloukalová", "Czechitas z. s.", "Václavské náměstí 837/11", "11000 Praha 1", null, "+420 800 123 456", "www.czechitas.cz"));
  }

  public List<BusinessCard> getAll() {
    return businessCardList;
  }

  public BusinessCard getById(int id) {
    return businessCardList.get(id);
  }

  public void append(BusinessCard businessCard) {
    businessCardList.add(businessCard);
  }

  public void deleteById(int id) {
    businessCardList.remove(id);
  }

}
