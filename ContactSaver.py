import mysql.connector

mySQL_connector=mysql.connector.connect(
    host="localhost",
    user="root",
    password="12345",
    database="employee"
)

cursor=mySQL_connector.cursor()

# age=int(input("Age= "))

# cursor.execute("SELECT * FROM product_details")
# print(cursor.fetchall())

# cursor.execute("insert into product_details (product_name, price, category) value (%s,%s,%s)",("Keyboard",1200,"gadget"))

# mySQL_connector.commit()


def createContact(name, phone):
    cursor.execute("insert into contacts (name,phone) value (%s,%s)",(name,phone))
    mySQL_connector.commit()

def readContact():
    cursor.execute("SELECT * FROM contacts")
    print(cursor.fetchall())

def updateContact(id, name, phone):
    pass 

def deleteContact(id):
    pass


while True:
    print("0---> to read contact\n1 --> add contact\n2---> exit")
    inp=int(input("Enter a number: "))
    if inp==0:
        readContact()
    elif inp==1:
        name=input("Enter Name: ")
        phone=int(input("Enter phone number: "))
        createContact(name, phone)
    elif inp==2:
        break
    else:
        pass
