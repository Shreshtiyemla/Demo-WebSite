#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: FlightsPage Validations

  Background: User navigates to HomePage
    Given User comes to the home page

  @HomePageValidations
  Scenario: HomePageValidations
    Given User comes to Flights Page and verifies the element
    #When User Scrolls to Explore Stays,clicks and verifies the elements
    #When User Scrolls to ExploreDeals , clicks and verifies the Discount
    When User Scrolls to ThirdBanner,clicks and verifies the elements
    When User Scrolls to Resorts,clicks and verifies the elements
    When User Scrolls to StartPlanningYourTrip,clicks and verifies the elements
    When User Scrolls to ChatBot,clicks and verifies the grids

  @DropDowns
  Scenario: HomePageValidations-DropDowns
    When User Scrolls to DropDownOptions clicks and verifies Hotel DropDown
    When User Scrolls to DropDownOptions clicks and verifies Flights DropDown
    When User Scrolls to DropDownOptions clicks and verifies Vacation DropDown
    When User Scrolls to DropDownOptions clicks and verifies Cars DropDown
    When User Scrolls to DropDownOptions clicks and verifies Cruises DropDown
    When User Scrolls to DropDownOptions clicks and verifies TravelDeals DropDown
