package com.manauwar.dcms.action;

import java.util.ArrayList;
import java.util.List;
import com.manauwar.dcms.pojo.hibernate.Users;
import com.manauwar.dcms.dao.UsersDAO;
import com.manauwar.dcms.utils.DevelopmentSupport;
import com.manauwar.dcms.utils.HibernateUtil;

/**
 *
 * @author Mohd. Manauwar Alam
 */
public class LoginAction extends DevelopmentSupport {


	private static final long serialVersionUID = 1L;
	private String userName;
    private String password;
    private String message;
    private String errorMessage;
    private Users user = new Users();
    private UsersDAO userDao = new UsersDAO();
    private List<Users> usersList = new ArrayList<Users>();
    private String showUserName;

    public LoginAction() {
         HibernateUtil.createSessionFactory();
    }

    
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public List<Users> getUsersList() {
        return usersList;
    }

    public void setUsersList(List<Users> usersList) {
        this.usersList = usersList;
    }

    public String getShowUserName() {
        return showUserName;
    }

    public void setShowUserName(String showUserName) {
        
        this.showUserName = showUserName;
    }

    
    @Override
    public String execute() throws Exception {
    	System.out.println("execute");
        return SUCCESS;
    }

    
    public String login() throws Exception {
        try {
        	System.out.println("login");
            usersList = userDao.getAllUsers();
            for (int i = 0; i < usersList.size(); i++) {
            	String user = usersList.get(i).getUserName();
            	String pass = usersList.get(i).getPassword().trim();
            	System.out.println("user: "+user+" pass: "+pass);
            	
                if (user.trim().equalsIgnoreCase(getUserName().trim()) && pass.trim().equals(getPassword().trim())) {

                    getSession().setAttribute("username", usersList.get(i).getUserName());
                    showUser(usersList.get(i).getFullName());
                    return "SUCCESS1";
                }

            }

            message = "Please enter correct username and password";
            return "SUCCESS2";

        } catch (Exception e) {
        	e.printStackTrace();
            errorMessage = "Exception in login method -> LoginAction " + e.getMessage() + " cause is " + e.getCause();
            return ERROR;
        }
    }
    
    public void showUser(String username)
    {
        showUserName = "Welcome "+ username+"";
    }
    
    
             public String logout() throws Exception {
        try {
            getSession().removeAttribute("username");
            getSession().removeAttribute("perDetId");
            return SUCCESS;

        } catch (Exception e) {
            errorMessage = "Exception in logout method -> LoginAction " + e.getMessage() + " cause is " + e.getCause();
            return ERROR;
        }
    }
}