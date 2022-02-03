package runner;

import org.junit.runner.RunWith;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.CucumberOptions.SnippetType;

//run with -> go to feature file, take each scenario and convert into junit and run
//add reports -plugin
@RunWith(Cucumber.class)
@CucumberOptions
(	
		features="src/test/resources/Features",
		glue= {"Stepdefinitions"},
		snippets=SnippetType.CAMELCASE,
		plugin= {"html:target/reports/cucumber-report.html",
				"com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"
		},
		dryRun=true
)

public class TestRunner {
	

}
