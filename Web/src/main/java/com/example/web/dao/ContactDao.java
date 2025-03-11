package com.example.web.dao;
import com.example.web.connector.JdbiConnect;
import com.example.web.model.Contact;
import org.jdbi.v3.core.Jdbi;
import java.util.List;
public class ContactDao {
  private final Jdbi jdbi;
  public ContactDao() {
    this.jdbi = JdbiConnect.getJdbi();
  }
  public List<Contact> getAllContacts() {
    String sql = "SELECT id, create_at, name, email, title, message FROM contact";
    return jdbi.withHandle(handle ->
      handle.createQuery(sql)
        .map((rs, ctx) -> new Contact(
          rs.getInt("id"),
          rs.getTimestamp("create_at"),
          rs.getString("name"),
          rs.getString("email"),
          rs.getString("title"),
          rs.getString("message")
        )).list()
    );
  }
}
