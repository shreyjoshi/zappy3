/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package beans;

public class UserDTO 
{
    private String userid;
    private String username;
    private String password;
    private String role;
    private boolean login;
    String dname,dgender,category,dqual,dmobno,demail,dpass;

    public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getDgender() {
		return dgender;
	}

	public void setDgender(String dgender) {
		this.dgender = dgender;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDqual() {
		return dqual;
	}

	public void setDqual(String dqual) {
		this.dqual = dqual;
	}

	public String getDmobno() {
		return dmobno;
	}

	public void setDmobno(String dmobno) {
		this.dmobno = dmobno;
	}

	public String getDemail() {
		return demail;
	}

	public void setDemail(String demail) {
		this.demail = demail;
	}

	public String getDpass() {
		return dpass;
	}

	public void setDpass(String dpass) {
		this.dpass = dpass;
	}

	public boolean isLogin() 
    {
        return login;
    }

    public void setLogin(boolean login) 
    {
        this.login = login;
    }

    public String getUsername() 
    {
        return username;
    }

    public void setUsername(String username) 
    {
        this.username = username;
    }

    public String getPassword() 
    {
        return password;
    }

    public void setPassword(String password) 
    {
        this.password = password;
    }

    public String getRole() 
    {
        return role;
    }

    public void setRole(String role) 
    {
        this.role = role;
    }

    public String getUserid() 
    {
        return userid;
    }

    public void setUserid(String userid) 
    {
        this.userid = userid;
    }
}

