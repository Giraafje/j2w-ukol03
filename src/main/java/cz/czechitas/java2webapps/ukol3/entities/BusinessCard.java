package cz.czechitas.java2webapps.ukol3.entities;

public class BusinessCard {
  private String personName;
  private String companyName;
  private String street;
  private String cityPostalCode;
  private String email;
  private String phoneNumber;
  private String website;

  //class constructor
  public BusinessCard(String personName, String companyName, String street, String cityPostalCode, String email, String phoneNumber, String website) {
    this.personName = personName;
    this.companyName = companyName;
    this.street = street;
    this.cityPostalCode = cityPostalCode;
    this.email = email;
    this.phoneNumber = phoneNumber;
    this.website = website;
  }

  public String getPersonName() {
    return personName;
  }

  public String getCompanyName() {
    return companyName;
  }

  public String getStreet() {
    return street;
  }

  public String getEmail() {
    return email;
  }

  public String getPhoneNumber() {
    return phoneNumber;
  }

  public String getWebsite() {
    return website;
  }

  public String getCityPostalCode() {
    return cityPostalCode;
  }

  public String getFullAddress() {
    return street + ", " + cityPostalCode;
  }
}
