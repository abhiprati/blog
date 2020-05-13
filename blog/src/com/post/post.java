package com.post;


public class post {
	public String ptitle;
	public String pcontent;
	public String pcode;
	
	public String name;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPtitle() {
		return ptitle;
	}
	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	public post()
	{
		
	}
	public post(String ptitle, String pcontent, String pcode,String name) {
		super();
		this.ptitle = ptitle;
		this.pcontent = pcontent;
		this.pcode = pcode;
	
		this.name=name;
	}
	

}
