Book Web App

Book Web App

A full-stack Book Management Web Application built using Java, Spring Boot, Spring Data JPA, JSP, and MySQL.
This application allows users to manage books with features like adding, updating, deleting, and viewing book details through a responsive web interface.

🚀 Tech Stack
Backend
Java 17+
Spring Boot
Spring MVC
Spring Data JPA
Hibernate
Frontend
JSP (JavaServer Pages)
JSTL
HTML5
CSS3
Bootstrap
Database
MySQL
Server
Apache Tomcat
Build Tool
Maven
📌 Features
Add new books
Update existing books
Delete books
View all books
Search books by title or author
Responsive UI using JSP pages
MySQL database integration
MVC architecture using Spring Boot
📂 Project Structure
book-web-app/
│
├── src/main/java/com/example/bookapp
│   ├── controller
│   ├── service
│   ├── repository
│   ├── model
│   └── BookWebAppApplication.java
│
├── src/main/resources
│   └── application.properties
│
├── src/main/webapp
│   └── WEB-INF
│       └── views
│           ├── index.jsp
│           ├── add-book.jsp
│           ├── edit-book.jsp
│           └── book-details.jsp
│
├── pom.xml
└── README.md
⚙️ Installation & Setup
1️⃣ Clone the Repository
git clone https://github.com/your-username/book-web-app.git
cd book-web-app
2️⃣ Configure MySQL Database

Create a MySQL database:

CREATE DATABASE book_db;
3️⃣ Configure application.properties
spring.datasource.url=jdbc:mysql://localhost:3306/book_db
spring.datasource.username=root
spring.datasource.password=your_password

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

spring.mvc.view.prefix=/WEB-INF/views/
spring.mvc.view.suffix=.jsp
4️⃣ Build the Project
mvn clean install
5️⃣ Run the Application
mvn spring-boot:run

Application will start on:

http://localhost:8080
🛠 Application Endpoints
Method	Endpoint	Description
GET	/	View all books
GET	/books/add	Show add book form
POST	/books/save	Save new book
GET	/books/edit/{id}	Edit book
POST	/books/update	Update book
GET	/books/delete/{id}	Delete book
GET	/books/{id}	View book details
🧩 Book Entity Example
@Entity
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;
    private String author;
    private String genre;
    private Double price;

    // Getters and Setters
}
📘 Repository Example
@Repository
public interface BookRepository extends JpaRepository<Book, Long> {

}
🎨 JSP Example
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<table>
    <c:forEach var="book" items="${books}">
        <tr>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td>${book.price}</td>
        </tr>
    </c:forEach>
</table>
📦 Dependencies

Add these dependencies in pom.xml:

<dependencies>

    <!-- Spring Boot Starter Web -->
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-web</artifactId>
    </dependency>

    <!-- Spring Boot Starter Data JPA -->
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-data-jpa</artifactId>
    </dependency>

    <!-- MySQL Driver -->
    <dependency>
        <groupId>com.mysql</groupId>
        <artifactId>mysql-connector-j</artifactId>
        <scope>runtime</scope>
    </dependency>

    <!-- JSP Support -->
    <dependency>
        <groupId>org.apache.tomcat.embed</groupId>
        <artifactId>tomcat-embed-jasper</artifactId>
    </dependency>

    <!-- JSTL -->
    <dependency>
        <groupId>jakarta.servlet.jsp.jstl</groupId>
        <artifactId>jakarta.servlet.jsp.jstl-api</artifactId>
    </dependency>

</dependencies>
