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
Feature: Things to do Functionalities

Background: User comes to the website
	Given User opens browser
    
@tag1
Scenario: ThingsToDo Functionalities
Given User comes to ThingsToDo Page and verifies the element
When User Selects the Destination 
When User selects Departing and Returning dates
When User searches and applies filters 
And user search for an activity



  