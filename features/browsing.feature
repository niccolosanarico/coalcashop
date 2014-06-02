Feature: a customer browse the catalogue

  As a prospect customer
  I want to browse the catalogue
  So that I can find items I need

  Background: start from the homepage
    Given I visit the "/" page
    Then I should see "Home"
    And I should see "Catalogo"

  @javascript
  Scenario: Browse the catalogue
    When I click on "Catalogo"
    And I click on "Cucina"
    Then I should see "Forno"
    And I should see "Questa è la descrizione estesa del forno"
    And I should see "+ IVA 22%"

  Scenario: Signup
    # Create a new account
    Given I am not logged in
    When I visit "Registrati"
    And I complete "Nome" with ""
    And I complete "Cognome" with ""
    And I complete "Società" with ""
    And I complete "Email" with ""
    And I complete "Conferma email" with ""
    And I complete "Password" with ""
    And I complete "Conferma password" with ""
    And I click on "Iscriviti"
    Then I should see "Ti abbiamo inviato una mail con le istruzioni per completare l'iscrizione - controlla la tua posta!"

  Scenario: Login
    # Login to the ecommerce
    Given I am not logged in
    When I visit "Login"
    And I complete "email" with "coalca.shop@gmail.com"
    And I complete "password" with "coalca123"
    Then I should see "Il Mio Account"

  @javascript
  Scenario: Add product to cart
    When I visit "Catalogo"
    And I click on "Cucina"
    Then I should see "Forno"
    When I click on "Aggiungi al carrello"
    Then I should see "Continua gli acquisti"

  Scenario: Visit cart and leave
    When I visit "Carrello"
    Then I should see "Il tuo carrello è vuoto"
    And I click on "Continua gli acquisti"
    Then I should see "Compra per"
