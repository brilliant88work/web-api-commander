package org.reso.commander.test.stepdefs;

import io.cucumber.java8.En;
import org.reso.commander.certfication.containers.WebAPITestContainer;
import org.reso.models.Settings;

import java.io.File;
import java.net.URL;
import java.util.concurrent.atomic.AtomicReference;

import static org.junit.Assert.*;
import static org.reso.commander.common.ErrorMsg.getDefaultErrorMessage;


public class TestWebAPITestContainer implements En {
  AtomicReference<WebAPITestContainer> testContainer = new AtomicReference<>();
  AtomicReference<Settings> settings = new AtomicReference<>();
  AtomicReference<String> authToken = new AtomicReference<>();

  public TestWebAPITestContainer() {

    //background
    Given("^a Web API test container was created using the RESOScript \"([^\"]*)\"$", (String fileName) -> {
      try {
        //get settings from mock RESOScript file
        URL resource = getClass().getClassLoader().getResource(fileName);
        assertNotNull(getDefaultErrorMessage("was unable to find the given RESOScript:", fileName), resource);

        testContainer.set(new WebAPITestContainer());
        testContainer.get().setSettings(Settings.loadFromRESOScript(new File(resource.getFile())));
        assertNotNull(getDefaultErrorMessage("could not load mock RESOScript: " + resource.getFile()), testContainer.get().getSettings());

        testContainer.get().initialize();
      } catch (Exception ex) {
        fail(getDefaultErrorMessage(ex));
      }
    });


    /*
     * auth settings validation
     */
    When("^an auth token is provided in \"([^\"]*)\"$", (String clientSettingsAuthToken) -> {
      String token = Settings.resolveParametersString(clientSettingsAuthToken, testContainer.get().getSettings());
      assertNotNull(getDefaultErrorMessage("BearerToken is null in the ClientSettings section!"), token);
    });

    Then("^the Commander is created using auth token client mode$", () -> {
      assertTrue(getDefaultErrorMessage("expected auth token Commander client!"),
          testContainer.get().getCommander().isAuthTokenClient());
    });

    And("^the auth token has a value of \"([^\"]*)\"$", (String assertedTokenValue) -> {
      assertEquals(getDefaultErrorMessage("asserted token value is not equal to the one provided in the container!"),
          assertedTokenValue, testContainer.get().getAuthToken());
    });

    And("^a Commander instance exists within the test container$", () -> {
      assertNotNull(getDefaultErrorMessage("Commander instance is null in the container!"),
          testContainer.get().getCommander());
    });

    But("^the Commander is not created using client credentials mode$", () -> {
      assertFalse(getDefaultErrorMessage("expected that the Commander was not using client credentials"),
          testContainer.get().getCommander().isOAuth2Client());
    });
  }
}