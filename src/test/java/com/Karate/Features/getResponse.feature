Feature: Validate API Responses

Background:
	* def results = read("../DataFiles/Results.json")
  Scenario: Get Respose from the API
    Given url 'http://apis.io/api/apis'
    When method get
    Then status 200
    Then print response
    And match response contains only results.getAPIResponse


