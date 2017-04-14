/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.test.springmvc.config;

/**
 *
 * @author Arpan Patnaik
 */

import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.DatatypeConverter;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class EncrypterPassword {
    
    private static String algorithm = "AES";
    private static byte[] keyValue=new byte[] {'0','2','3','4','5','6','7','8','9','1','2','3','4','5','6','7'};// your key
    public static String encryptText(String plainText) throws Exception{
	
        Key key = generateKey();
        Cipher chiper = Cipher.getInstance(algorithm);
        chiper.init(Cipher.ENCRYPT_MODE, key);
        byte[] encVal = chiper.doFinal(plainText.getBytes());
        String encryptedValue = new BASE64Encoder().encode(encVal);
        return encryptedValue;
    }
    
    public static String decryptText(String encryptedText) throws Exception {
            Key key = generateKey();
            Cipher chiper = Cipher.getInstance(algorithm);
            chiper.init(Cipher.DECRYPT_MODE, key);
            byte[] decordedValue = new BASE64Decoder().decodeBuffer(encryptedText);
            byte[] decValue = chiper.doFinal(decordedValue);
            String decryptedValue = new String(decValue);
            return decryptedValue;
    }
    private static Key generateKey() throws Exception 
    {
            Key key = new SecretKeySpec(keyValue, algorithm);
            return key;
    }
}
