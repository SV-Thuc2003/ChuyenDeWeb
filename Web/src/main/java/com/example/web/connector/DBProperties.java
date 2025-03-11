package com.example.web.connector;

import java.io.IOException;
import java.util.Properties;

public class DBProperties {
  private static Properties prop = new Properties();

  static {
    try {
      prop.load(DBProperties.class.getClassLoader().getResourceAsStream(""));
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

  public static String host() {
    return prop.getProperty("db.host", "localhost");
  }

  public static int port() {
    try {
      return Integer.parseInt(prop.getProperty("db.port", "3306"));
    } catch (NumberFormatException e) {
      return 3306;
    }
  }

  public static String username() {
    return prop.getProperty("db.username", "root");
  }

  public static String password() {
    return prop.getProperty("db.password", "");
  }
// fix
//  public static String dbname() {
//    return prop.getProperty("db.dbname", "test");
//  }
public static String dbname() {
  return prop.getProperty("db.dbname", "web");
}
  public static String option() {
    return prop.getProperty("db.option", "useSSL=false&serverTimezone=UTC");
  }


  public static void main(String[] args) {
    var a = DBProperties.class.getClassLoader().getResourceAsStream("");
    System.out.println(a);
  }
}
