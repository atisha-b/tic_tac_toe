import mysql.connector

# Establish MySQL connection
connection = mysql.connector.connect(
    host="localhost",
    user="your_username",
    password="your_password",
    database="your_database"
)

# Your functions to interact with the database here

# Close the connection
connection.close()
