/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.model;
import java.util.Date;
import java.text.DateFormat;
/**
 *
 * @author pmoreno
 */
public class User {
    String uname, password, email;
Date registeredon;
   public String getUname() {
     return uname;
   }
   public void setUname(String unamex) {
     this.uname = unamex;
   }
   public String getPassword(){
     return password;
   }
   public void setPassword(String pass){
     this.password = pass;
   }
   public String getEmail(){
     return email;
   }
   public void setEmail(String mail){
     this.email = mail;
   }
   public Date getRegisteredon(){
     return registeredon;
   }
   public void setRegisteredon(Date reg){
     this.registeredon = reg;
   }
}
