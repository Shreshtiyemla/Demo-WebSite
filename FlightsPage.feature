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
Feature: Sign In and FlightsPage

  #Background: User Signs in to the WebSite and Starts Functionalities
  #Given User Opens Browser and enters Credentials
  #When User clicks SignIn button,SignIns and verifies HomePage
  Background: User comes to the website
    Given User opens browser

  @Roundtrip
  Scenario: User Searches for Flights (RoundTrip)
    Given User comes to Flights Page and verifies the element
    When User selects source and destination
    When User selects Departing and Returning dates
    When User selects number of travellers
    Then User clicks the checkBoxes and clicks search button

  @One-way
  Scenario: User searches for Flights (One-way)
    Given User comes to Flights Page and verifies the element
    When User selects one-way mode
    When User selects source and destination
    And User Selects date to travel
    When User selects number of travellers
    And User clicks addPlaceToStay checkbox and searches

  @Multi-city
  Scenario: User searches for Flights(Multi-City)
    Given User comes to Flights Page and verifies the element
    When User selects multi-city mode
    When User selects Flight1 and verifies
    When User selects source and destination
    And User Selects date to travel
    When User selects Flight2 and verifes
    When User selects source and destination
    And User Selects date to travel
    And User Searches for the Flights and adds another flight
    And User Selects date to travel
    Then User clicks Search button and removes one flight

  @RoundTripFilters
  Scenario: User Searches for Flights (RoundTrip) and applies Filters
    Given User comes to Flights Page and verifies the element
    When User selects fixed source and destination
    When User selects Departing and Returning dates
    When User selects number of travellers
    When User clicks the checkBoxes and clicks search button
    When User applies popular filters
    When User applies Stays filter
    When user applies Amenities filter
    When user applies price filter
    When User applies Star rating filter

  @RoundTripBookingFlight
  Scenario: User Searches for Flights (RoundTrip) and books a flight
    Given User comes to Flights Page and verifies the element
    When User selects fixed source and destination
    When User selects Departing and Returning dates
    When user selects only travellers and clicks checkbooxes , searches the flight
    When User applies Stays filter
    When User selects Filter Price High To Low and verifies
    When User selects Hotel and room
    When user applies filters and selects departing flight
    When user applies filters and selects returning flight
    When user applies filters and selects car
    When user adds the main traveller information
    When user adds the second traveller information
    When user adds the insurance
    When user adds the paymentInformation
	
  @FlightSorting
  Scenario: User searches for Flights (One-way) - Sorting
    Given User comes to Flights Page and verifies the element
    When User selects one-way mode
    When User selects source and destination
    And User Selects date to travel
    When User selects number of travellers
    And User clicks addPlaceToStay checkbox and searches
    And User adds accomodation filter and searches
    When User selects Filter Price Low To High and verifies
    When User selects Filter Price High To Low and verifies
    When User selects Filter Distance from DownTown and verifies
    When User selects Filter Guest Rating and verifies
    When User selects Filter Star Rating and verifies
    When User selects Filter PercentageDiscount and verifies
