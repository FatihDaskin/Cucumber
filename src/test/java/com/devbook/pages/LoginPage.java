package com.devbook.pages;

import com.devbook.utilities.ConfigurationReader;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.FindBys;

import java.util.List;

public class LoginPage extends BasePage {
    //after creating BasePage we inherited from it
//    public LoginPage(){
//        PageFactory.initElements(Driver.get(),this);
//    }

    @FindBy (id ="loginpage-input-email" )
    public WebElement userEmailInput_loc;
    @FindBy(id = "loginpage-form-pw-input")
    public WebElement passwordInput_loc;
    //    @FindBy(id ="rcc-confirm-button" )
//    public WebElement understandBtn_loc;
    @FindBy(id = "loginpage-form-btn")
    public WebElement loginBtn_loc;
    @FindBy(xpath = "//*[.='Invalid Credentials!']")
    public WebElement warningMessage_loc;
    @FindBy(xpath = "//*[.='Please include a valid email!']")
    public WebElement passwordWarningMessage_loc;
    //from DemoQa website menu list example
    @FindBy(css = ".menu-list")
    public List<WebElement> menuList;
    // Or true or False /  false or true  / true or true
    @FindAll({
            @FindBy(id = "loginpage-input-email"),
            @FindBy(name = "email")
    })
    public WebElement userInputSecondaryWay_loc;
    // and true & true
    @FindBys({
            @FindBy(tagName = "p"),
            @FindBy(css = ".lead")
    })
    public WebElement signAccountText_loc;


    public void login_mtd(){
        String userEmail=ConfigurationReader.get("usernameTeacher");
        String userPassword=ConfigurationReader.get("passwordTeacher");
        userEmailInput_loc.sendKeys(userEmail);
        passwordInput_loc.sendKeys(userPassword);
        understandBtn_loc.click();
        loginBtn_loc.click();
    }

    public void login_mtd(String userEmail,String userPassword){
        userEmailInput_loc.sendKeys(userEmail);
        passwordInput_loc.sendKeys(userPassword);
        understandBtn_loc.click();
        loginBtn_loc.click();

    }

    public void loginAsTeacher_mtd(){
        String userEmail=ConfigurationReader.get("usernameTeacher");
        String userPassword=ConfigurationReader.get("passwordTeacher");
        userEmailInput_loc.sendKeys(userEmail);
        passwordInput_loc.sendKeys(userPassword);
        understandBtn_loc.click();
        loginBtn_loc.click();
    }

    public void loginAsStudent_mtd(){
        String userEmail=ConfigurationReader.get("usernameStudent");
        String userPassword=ConfigurationReader.get("passwordStudent");
        userEmailInput_loc.sendKeys(userEmail);
        passwordInput_loc.sendKeys(userPassword);
        understandBtn_loc.click();
        loginBtn_loc.click();
    }

    public void loginAsDeveloper_mtd(){
        String userEmail=ConfigurationReader.get("usernameDeveloper");
        String userPassword=ConfigurationReader.get("passwordDeveloper");
        userEmailInput_loc.sendKeys(userEmail);
        passwordInput_loc.sendKeys(userPassword);
        understandBtn_loc.click();
        loginBtn_loc.click();
    }



}