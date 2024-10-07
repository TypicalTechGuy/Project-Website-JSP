package db;

import java.sql.*;

public class db {
    private final String jdbcURL = "jdbc:mysql://localhost:3306/coolinary_db?useSSL=false&serverTimezone=UTC";
    private final String jdbcUsername = "root";
    private final String jdbcPassword = "";

    private static final String INSERT_USER_SQL = "INSERT INTO users (username, password, email) VALUES (?, ?, ?)";
    
    public Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            System.out.println("Database OK!");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public boolean insertUser(String username, String password, String email) throws SQLException {
        boolean rowInserted = false;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_SQL)) {
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, email);

            rowInserted = preparedStatement.executeUpdate() > 0;
        }
        return rowInserted;
    }
}

