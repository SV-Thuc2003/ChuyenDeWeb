package com.example.web.connector;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class JdbiConnect {
  private static final Logger LOGGER = Logger.getLogger(JdbiConnect.class.getName());
  private static String url = "jdbc:mysql://" + DBProperties.host() + ":" + DBProperties.port() + "/" + DBProperties.dbname() + "?" + DBProperties.option();
  private static Jdbi jdbi;

  public static Jdbi getJdbi() {
    if (jdbi == null) {
      makeConnect();
    }
    return jdbi;
  }

  private static void makeConnect() {
    MysqlDataSource dataSource = new MysqlDataSource();
    dataSource.setUrl(url);
    dataSource.setUser(DBProperties.username());
    dataSource.setPassword(DBProperties.password());

    try {
      dataSource.setUseCompression(true);
      dataSource.setAutoReconnect(true);
    } catch (SQLException e) {
      LOGGER.log(Level.SEVERE, "Failed to configure MySQL DataSource", e);
      throw new RuntimeException("Error configuring DataSource", e);
    }

    jdbi = Jdbi.create(dataSource);
    LOGGER.log(Level.INFO, "Successfully connected to the database.");
  }
}
