/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ec.servicios.usuarios;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author Cchristico
 */
public class ingresoUsuario {


public  Boolean userLength(String userName)
{
        return userName.isEmpty();
        
}

public Boolean userNameisAString(String userName)
{
     Pattern pat = Pattern.compile("[a-zA-Z]");
     Matcher mat = pat.matcher(userName);
         return mat.find();
}
public boolean usernameLengthMoreThan3lessThan20AndIsAString(String UserName)
{
    Pattern pat = Pattern.compile("[a-zA-Z]{3,20}");
    Matcher mat = pat.matcher(UserName);
    
                return mat.find();
}
        

}

