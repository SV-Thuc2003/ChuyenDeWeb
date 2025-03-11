package com.example.web.service;

import org.mindrot.jbcrypt.BCrypt;

public class EncryptAndDencrypt {
    public  String encrypt(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }
    public boolean checkPass(String password, String hashedPassword) {
        return BCrypt.checkpw(password, hashedPassword);
    }
}
