<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Simple JSP Example</title>
    <style>
        table, th, td {
            border: 1px solid black;
        }
    </style>
</head>
<body>

    <h1>Welcome to My JSP Page!</h1>

    <%
        // Simulated data (you would usually fetch this data from a database)
        class User {
            String name;
            String email
            
            User(String name, String email) {
                this.name = name;
                this.email = email;
            }
        }
        
        ArrayList<User> users = new ArrayList<>();
        users.add(new User("John", "john@example.com"));
        users.add(new User("Jane", "jane@example.com"));
        users.add(new User("Alice", "alice@example.com"));
        users.add(new User("Bob", "bob@example.com"));
    %>

    <h2>User List:</h2>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <% for(User user : users) { %>
                <tr>
                    <td><%= user.name %></td>
                    <td><%= user.email %></td>
                </tr>
            <% } %>
        </tbody>
    </table>

</body>
</html>
