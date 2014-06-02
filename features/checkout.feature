# I Need to add seed data for the test database!!!

Feature: A customer makes a purchase

  As a prospect customer
  I want to add items to the cart and complete the checkout
  So that I can receive the goods I want

  Background: add an item to the cart
    Given I visit the "/"
    Then I click on "Forno elettrico per pizzeria, camera singola"

  @billing
  Scenario: Complete checkout
    When I visit "Carrello"
    And I click on "Checkout"
    Then I should see "Indirizzo di Fatturazione"
