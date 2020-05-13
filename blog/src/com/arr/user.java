package com.arr;

public class user {
	public String name;
	public String email;
	public String password;
	
	public void setName(String name)
	{this.name = name;}
	
	public String getName()
	{return name;}
	
	public void setEmail(String email)
	{this.email = email;}
	
	public String getEmail()
	{return email;}
	
	public void setPassword(String password)
	{this.password = password;}
	
	public String getPassword()
	{return password;}
	
	public user(String Name,String Email,String Password)
	{
		this.name=Name;
		this.email=Email;
		this.password=Password;
	}
	public user(){
		
	}

}
