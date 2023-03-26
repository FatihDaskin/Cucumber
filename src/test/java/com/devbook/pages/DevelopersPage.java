package com.devbook.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class DevelopersPage extends BasePage{

    @FindBy (xpath = "//h4[text()='Filter Profiles by Skill or by Location']")
    public WebElement developersPage_loc;
}
