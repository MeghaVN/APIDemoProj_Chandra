package Stepdefinitions;

import org.hamcrest.Matchers;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

public class StepDefinition {
	
	RequestSpecification req;
	Response res;
	
	
	@Given("I have header with key {string} and value {string}")
	public void iHaveHeaderWithKeyAndValue(String key, String value) {
		System.out.println("Execute Given");
		RestAssured.baseURI="https://api.github.com";
			req=RestAssured
					.given()
					.header(key,value);
	    	   
	}
	@Given("query param with {string} with value {string}")
	public void queryParamWithWithValue(String paramName, String paramValue) {
	    // Write code here that turns the phrase above into concrete actions
	   System.out.println("Execute query param..");
	   req.queryParam(paramName, paramValue);
	}


	@When("I do a {string} request with path {string}")
	public void iDoARequestWithPath(String requestType, String path) {
		System.out.println("Execute When");
			res=req.when()
				.get(path);
	}
	@Then("verify status code is {int}")
	public void verifyStatusCodeIs(Integer expectedStatusCode) {
	 System.out.println("Execute then");
			res.then().log().body()
				.statusCode(expectedStatusCode);
	}
	
	@Then("verify status code is {int}")
	public void verifyCountIs(Integer count) {
	 System.out.println("Execute then");
			res.then()
				.body("size()", Matchers.equalTo(count));
	}

}
