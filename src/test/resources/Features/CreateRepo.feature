Feature: Create an organization repos endpoint
 Scenarios to test POST request for creaing the org repo endpint 

 
  Scenario: Create public repository 
  Given I have header with key "Authorization" and value "Bearer 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"
  And valid json input for "public" repo
  When I do a "POST" request with path "orgs/mvnorg/repos"
  Then verify status code is 201