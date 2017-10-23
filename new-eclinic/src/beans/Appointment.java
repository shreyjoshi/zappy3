package beans;

public class Appointment {
String pname,dname,dcategory,appdate;
double apptime;
int appno;
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public String getDname() {
	return dname;
}
public void setDname(String dname) {
	this.dname = dname;
}
public String getDcategory() {
	return dcategory;
}
public void setDcategory(String dcategory) {
	this.dcategory = dcategory;
}
public String getAppdate() {
	return appdate;
}
public void setAppdate(String appdate) {
	this.appdate = appdate;
}
public double getApptime() {
	return apptime;
}
public void setApptime(double apptime) {
	this.apptime = apptime;
}
public int getAppid() {
	return getAppno();
}
public int getAppno() {
	return appno;
}
public void setAppid(int appid) {
	setAppno(appid);
}
public void setAppno(int appid) {
	this.appno = appid;
}
}
