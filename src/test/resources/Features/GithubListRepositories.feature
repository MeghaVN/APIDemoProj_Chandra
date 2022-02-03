Feature: Scenarios for GET organizations repos endpoint
 The scenarios are for lists repos for the specified organization
 
 Scenario: List all repos and verify status code
  Given I have header with key "Authorization" and value "Bearer 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"
  And query param with "type" with value "all"
  When I do a "GET" request with path "orgs/mvnorg/repos"
  Then verify status code is 200
  
  Scenario: List all repos and verify status code
  Given I have header with key "Authorization" and value "Bearer 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"
  And query param with "type" with value "private"
  And query param with "per_page" with value "1"
  When I do a "GET" request with path "orgs/mvnorg/repos"
  Then verify status code is 200
  
 Scenario Outline: List repositories, verify status code and repo count 
 Given I have header with key "Authorization" and value "<token>"
 And query param with "type" with value "<query_param>"
 When I do a "GET" request with path "orgs/mvnorg/repos"
 Then verify status code is <status_code>
  
  Examples: 
  |token|query_param|status_code|
  |Bearer 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 |public|200|
  
  Scenario Outline: List repositories, verify status code and repo count 
 Given I have header with key "Authorization" and value "<token>"
 And query param with "type" with value "<query_param>"
 And query param with "per_page" with value "<per_page>"
 When I do a "GET" request with path "orgs/mvnorg/repos"
 Then verify status code is <status_code>
  
   Examples: 
  |token|query_param|status_code|per_page|
  |Bearer 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 |public|200|2|
  
  
