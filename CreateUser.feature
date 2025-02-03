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
Feature: User Registration and SignIn Functionality

  #Background: User SignIn Functionality
  #Given User enters username <username> and password <password>
  #Then User Signed In Successfully
  #@tag1
  #Scenario Outline: Create User Functionality
    #Given User wants to open Browser
    #When User navigates to signInPage and clicks create one button
    #When User enters email Address<emailAddress>
    #When User enters FirstName <firstname> and enters LastName <lastname>
    #When User enters password <password>
    #When User clicks continue
    #Then User created account successfully
#
    #Examples: 
      #| emailAddress                | firstname | lastname | password                 |
      #| shreshtiyemla2002@gmail.com | Shreshti  | Yemla    | 05D9ujaFzScgWLqLLzJW0Q== |
      
      
      @tag2
      Scenario: Create User using json format
      Given User opens the browser and navigates to signInPage and clicks createone button
      When User enters emailAddress
      When User enters FirstName and LastName
      When User enters Password
      When User clicks continue and logs in Successfully.
