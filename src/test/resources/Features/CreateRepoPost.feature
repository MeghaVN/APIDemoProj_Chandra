Feature: Create an organization repos endpoint
 Scenarios to test POST request for creaing the org repo endpint 

 
  Scenario: Create public repository 
  Given I have header with key "Authorization" and value "Bearer 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"
  And query param with "type" with value "all"
  When I do a "GET" request with path "orgs/mvnorg/repos"
  Then verify status code is 200
  
  @P2
  Scenario Outline: Create Github repo with input
  Given I have header with key "Authorization" and value "Bearer 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"
  And json input "<repo_name>","<desc>","<repo_type>"
  When I do a "POST" request with path "orgs/org_name>/repos"
  Then verify status code is <status_code>
  Then verify response values "<repo_name>","<>desc"
  
  Examples:
  |repo_name|desc|repo_type|status_code|
  |rep_1|test1|public|201|
  |rep_2|test2|public|201|