/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ec.servicios.usuarios;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Cchristico
 */
public class ingresoUsuarioTest {
    
    public ingresoUsuarioTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of userLength method, of class ingresoUsuario.
     */
    @Test
    public void testUserLength() {
        System.out.println("userLength");
        String userName = "";
        ingresoUsuario instance = new ingresoUsuario();
        Boolean expResult = true;
        Boolean result = instance.userLength(userName);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    /*test of user Lenght and not number name*/

    /**
     * Test of userNameisAString method, of class ingresoUsuario.
     */
    @Test
    public void testUserNameisAString() {
        System.out.println("userNameisAString");
        String userName = "asd";
        ingresoUsuario instance = new ingresoUsuario();
        Boolean expResult = true;
        Boolean result = instance.userNameisAString(userName);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of usernameDontStartWhitLeter method, of class ingresoUsuario.
     */
    @Test
    public void testUsernameLengthMoreThan3lessThan20AndIsAString() {
        System.out.println("UsernameLengthMoreThan3lessThan20AndIsAString");
        String UserName = "Jose Lopez";
        ingresoUsuario instance = new ingresoUsuario();
        boolean expResult = true;
        boolean result = instance.usernameLengthMoreThan3lessThan20AndIsAString(UserName);
        assertEquals(expResult, result);
        
    }

    /**
     * Test of userIdentyCardLength method, of class ingresoUsuario.
     */
    @Test
    public void testUserIdentyCardLength() {
        System.out.println("userIdentyCardLength");
        String userIC = "asmdlfwrto";
        ingresoUsuario instance = new ingresoUsuario();
        boolean expResult = true;
        boolean result = instance.userIdentyCardLength(userIC);
        assertEquals(expResult, result);
    }

    /**
     * Test of userIdenttCardLengthAndOnlyNumber method, of class ingresoUsuario.
     */
    @Test
    public void testUserIdenttCardLengthAndOnlyNumber() {
        System.out.println("userIdenttCardLengthAndOnlyNumber");
        String userIC = "1234567890";
        ingresoUsuario instance = new ingresoUsuario();
        boolean expResult = true;
        boolean result = instance.userIdenttCardLengthAndOnlyNumber(userIC);
        assertEquals(expResult, result);
    }

    /**
     * Test of userPasswordLength method, of class ingresoUsuario.
     */
    @Test
    public void testUserPasswordLength() {
        System.out.println("userPasswordLength");
        String userPassword = "Pas$w123";
        ingresoUsuario instance = new ingresoUsuario();
        boolean expResult = true;
        boolean result = instance.userPasswordLength(userPassword);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
    
}
