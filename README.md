<!-- Output copied to clipboard! -->

<!-----
NEW: Check the "Suppress top comment" option to remove this info from the output.

Conversion time: 1.825 seconds.


Using this Markdown file:

1. Paste this output into your source file.
2. See the notes and action items below regarding this conversion run.
3. Check the rendered output (headings, lists, code blocks, tables) for proper
   formatting and use a linkchecker before you publish this page.

Conversion notes:

* Docs to Markdown version 1.0β29
* Wed Jun 16 2021 09:29:58 GMT-0700 (PDT)
* Source doc: Shoten_SRS
* Tables are currently converted to HTML tables.
----->



# **Software Requirements **


# **Specification**


# **for**


# Shoten

**Version 1.1 approved**

**Prepared by**

**Amatya Sharma (17CS30042)**

**Udit Desai (17CS30044)**

**IIT Kharagpur**

**Table of Contents**


[TOC]



[TOC]


**Revision History**


<table>
  <tr>
   <td><strong>Name</strong>
   </td>
   <td><strong>Date</strong>
   </td>
   <td><strong>Reason For Changes</strong>
   </td>
   <td><strong>Version</strong>
   </td>
  </tr>
  <tr>
   <td rowspan="2" >Shoten
   </td>
   <td>07/03/2019
   </td>
   <td>First Version of the Software
   </td>
   <td>1.0
   </td>
  </tr>
  <tr>
   <td>17/03/2019
   </td>
   <td>Evaluation Errors
   </td>
   <td>1.1
   </td>
  </tr>
</table>






1. 
**Introduction**


    1. 
**Purpose **
Defining and describing the functions and specifications of  Shoten, Version 1.1 is the primary goal of this Software Requirements Specification(SRS). This Software Requirements Specifications clearly illustrates, in clear terms, the system’s primary uses and required functionality as specified by our customer.The intended audience of this SRS document will be the clients who want the software to be built, the authorities of IIT Kharagpur who will be validating the software and the technical professionals developing the software.



    2. 
**Document Conventions**
The standard font used throughout the document is Times New Roman, with font size 12. The titles of the various sections of this SRS document have been represented in bold, with font size 14. Important parts of the document have been indicated in bold.The name of software _Shoten _is always mentioned in _Italics._

This document uses the following definitions, acronyms and abbreviations: 


<table>
  <tr>
   <td>Shoten
   </td>
   <td>The name of Application for online book store
   </td>
  </tr>
  <tr>
   <td>IIT Kharagpur, IIT KGP
   </td>
   <td>Indian Institute of Technology, Kharagpur
   </td>
  </tr>
  <tr>
   <td>Institute
   </td>
   <td>Indian Institute of Technology, Kharagpur
   </td>
  </tr>
  <tr>
   <td>ERP 
   </td>
   <td>Enterprise Resource Planning, student information portal of IIT KGP
   </td>
  </tr>
  <tr>
   <td>Assembled PC
   </td>
   <td> A modular type of computer that can be assembled using hardware components storing and processing data,
   </td>
  </tr>
  <tr>
   <td>Book stores
   </td>
   <td>Book stores which have collaborated with the institute for sale of books on Shoten
   </td>
  </tr>
  <tr>
   <td>Barcode
   </td>
   <td>A unique identifier assigned to each book
   </td>
  </tr>
  <tr>
   <td>Button
   </td>
   <td>A user interface element that allows a student to click and inform the system to take the required action  
   </td>
  </tr>
  <tr>
   <td>Book Inventory
   </td>
   <td>Symbolises the database of objects of class book
   </td>
  </tr>
  <tr>
   <td>Software
   </td>
   <td>Refers to Shoten.
   </td>
  </tr>
  <tr>
   <td>Student Representative Body
   </td>
   <td>A body elected by students intended to scrutinize the SRS on behalf of the students
   </td>
  </tr>
  <tr>
   <td>RAM
   </td>
   <td>Random-access memory
   </td>
  </tr>
</table>




    3. 
**Intended Audience and Reading Suggestions**
The intended audience of this SRS document will be the clients who want the software to be built, the authorities of IIT Kharagpur who will be validating the software and the technical professionals developing the software.Indirect audience will include the student representative body and book stores and printing stores which have collaborated with the institute for sale of books on Shoten.

This Software Requirements Specification document is divided in to multiple subsections. The first section includes explanations of the Purpose, Conventions(handles the description of project specific words, acronyms and abbreviations that will be used in the document), Scope and References of the document. The second section of the document is separated into the following five different sections, each detailing specific details of system uses and their corresponding actions: Product Perspective, Product Functions, User Characteristics,Operating Environment, Design and Implementation Constraints , Assumptions and Dependencies and User Documentation.. The third section is an enumerated listing of system’s external interface requirements. The fourth section encompasses all of the non-functional requirements described for this system. In the fifth section there exists a Prototype of the system along with a sample scenario that graphically describes the use of the system. The sixth section contains a listing of all related reference materials used in this document. 



    4. 
**Product Scope**
The objective of this project is to create and implement a website for the Shoten which is an online bookstore. The application will be used primarily by students of IIT Kharagpur. The application will allow users to create and maintain individual secured accounts authenticated by  institute ERP, search the bookstore database for textbooks, and make secured online purchases.

Students will also be able to lend, and borrow books from other students on payment basis.The system also includes the local bookshops and printing shops for ordering or printing books, along with delivery service.The students as well as the bookshops will be able to contribute to the bookstore database sharing book details to be shared.

 	Users will also be able to contact site administrators. The application makes borrowing, lending ,purchasing  and printing textbooks quicker, easier, and more convenient. 



    5. 
**References**


*   Template has been borrowed from -

    IEEE Std 830-1998 , IEEE Recommended Practice for Software Requirements Specifications.

*   Associated webpages - 
    *   Library IITKGP([http://www.library.iitkgp.ac.in/](http://www.library.iitkgp.ac.in/))
    *   &lt;Reference of Local BookStores and Printing Stores> Will be updated after first revision
*   Institute Identity Authentication - 
    *   ERP([https://erp.iitkgp.ac.in](https://erp.iitkgp.ac.in))



2. 
**Overall Description**


    6. 
**Product Perspective**
This product is an entirely new product.  It is not a component of a larger system however the system is extended by explicit use of institute ERP System for authentication purposes. The _Shoten _online bookstore system will interact with a payment portal in order to process purchases from the application.  The system will also interact with the bookstore’s Inventory database, which records the quantity of books available for sale or lend in the inventory.

The application must be available to students of institute[1.3] must work correctly in both Google Chrome and Mozilla Firefox. As stated by the customer, there are no hardware or software requirements beyond these including, but not limited to, memory or specific software packages that need to be utilized nor software packages that need not be utilized.



    7. 
**Product Functions**
_Shoten _will provide a number of functions, each is listed below.



*   Account Registration
*   Account Login
*   Search
*   Select whether to rent or buy a book or print.
*   Add or delete to Shopping Cart
*   Checkout
*   Put on a Restock Request 
*   Update Account Information
*   View order and shipping status
*   View Account Information
*   Account Logout
*   Help



    8. 
**User Classes and Characteristics**
System identifies the following user classes:

**2.3.1 Student :** 

	2.3.1.1 Description : Student registered with the institute

	2.3.1.2 Use Cases: 



*   Create an account in the system.
*   Login and logout of the system.
*   Search for the required book or a print shop.
*   Buy or rent a book or request a print from a print shop.
*   Sell or rent a book.
*   Add books to cart.
*   Add a print to car.
*   Pay the seller or receive payment for selling or renting books and printing.
*   Contact the seller for a restock request.
*   Update account information.
*   View account information.
*   View order and shipping status.

 \
**2.3.2 Book Store :**

**	**2.3.2.1 Description: Book stores collaborating with the institute for sale of books on Shoten  

2.3.2.2 Use Cases:



*   Create an account in the system.
*   Display available books.
*   Sell or rent books as required by the customer.
*   Contact the customer.
*   Receive payment from the customer.
*   Deliver books to the customer.

            

**2.3.2 Print Shop :**


    2.3.2.1 Description:     Printing shops collaborating with the institute for printing of books 


            through Shoten.

	2.3.2.2 Use Cases:



*   Create an account in the system.
*   Display printing rates.
*   Print the soft copies provided by the customer.
*   Contact the customer.
*   Receive payment from the customer.
*   Deliver print-outs to the customer.

**2.3.3 Admin:            ** \
	2.3.3.1 Description:  The entity to whom the software will be handed over after production.

2.3.3.2 Use Cases:



*   Authenticate user account details
*   Manage Sales.					



    9. 
**Operating Environment**
Minimum System Requirements : 



*   Operating System : 
    *   Windows 7 or higher, OS X  10.11 or higher.
    *   Linux Ubuntu 16.04 or higher version.
*   Java version 1.8(recommended)
*   _Shoten _does not have any other specific software requirements

Minimum Hardware Requirements :



*   A properly assembled PC unit with :
    *   RAM : At Least 512 MB vRAM.
*   Shoten does not have any other specific hardware requirements.      	

Language : Java , JSP , SQL ,HTML , CSS.

Web Browser supported Google Chrome , Mozilla Firefox.

Server Application : Apache Tomcat 8.0.15



    10. 
**Design and Implementation Constraints**
The Server side will require a high-speed Internet connection to deal with multiple customers visiting the portal network simultaneously and the presence of a single payment service systems necessary for processing a customer's purchases.This will create a constraint on the number of payments processed by the system at a point of time to the limit if the payment server we will be using. On the Client side there is no connection speed restrictions, but they will need to be running Internet Explorer 5.0 or above and a java version 1.8  or above .  The Windows 7 or higher operating systems will be required for our software to run efficiently.

The project's delivery date of 5/31/19.  The development of this software will require a minimum of ten hours per week during the next one and a half months, which will amount to a total of sixty hours. 

A strong password ; i.e. a password that meets a number of conditions that are set in place so that user's passwords cannot be easily guessed by an attacker; should be set as the application is not using 128 bit data encryption standards for Login Portal. Generally, these rules include ensuring that the password contains a sufficient number of characters and contains not only lowercase letters but also capitals, numbers, and in some cases, symbols.

Other constraints are:



*   Cannot implemented as an Android/IOS App
*   No other languages except English is used in this implementation
*   Security features haven’t been introduced.



    11. 
**User Documentation**
The components delivered alongside the software (soft copy):



*   Licence-Terms and Conditions
*   User Manuals for software

A Slide Show presentation would be provided to the user representatives so that they can use to explain the same to others



    12. 
**Assumptions and Dependencies**
Since Shoten requires Internet access, it is assumed that the end user has a connection to the Internet. It is also assumed that the user has a web browser able to display the website or a latest java version 1.8 to display the application.



3. 
**External Interface Requirements**
**3.1. System Interfaces: **

The system will interface with the following two systems: 

1. A payment processing system:  The system will access the payment  processing system via its web services API. 

2. The Books Inventory database: The system will interact with the inventory database managed by SQL.

**3.2. User Interfaces: **

The system will provide the ability for students and faculty to access the Shotem Bookstore application via the Internet. 

• Students will be allowed to search only after login. 

• The payment transaction will include reserving and purchasing textbooks

• The Users must be required to login at all times in order to perform any transaction. Once logged in the user will be able to update required textbook information per the availability, and make any changes to their personal online account. 

• Administrators will also be required to login at all times. However, they will have limit access via the web-interface only being able to pull predeﬁned reports. The administrators will have to logon to a host machine inside the Shoten Online Bookstore network in order to draft any changes.

**3.3. Hardware Interfaces: **

The desktop used should have Core i3 7th generation processor for both client and server ends.

**3.4. Software Interfaces:**

The front-end of software will interact with a database that stores the information necessary for the system to operate. The DBMS must be able to provide, on request data concerning the book details and user data. Additionally, it should take and archive data provided to it by the system maintained on the main server.

**3.5. Communication Interfaces: **

Communication function requires HTTP for the local server.



4. 
**System Features**
This subsection presents the identified functional requirements for the _Shoten_. Where possible, the requirements have been demarcated based on their relevance to the users of the system.

**4.1. Account Registration**

**Description : **

The first-time users(students/sellers) of Shoten have to create(register) an account in the system, in order to use Shoten.

**Stimulus**: Click "Register" Button

REQ-1. The system shall allow a non-registered user to create a secure account. 

REQ-2. The system shall require the following information from the user: Name, Institute Roll Number (in case of Students only),Shop ID(In case of Bookstores) , Mobile Number , Email ID.

REQ-3. The system shall assign the user a username and ask for a password.

REQ-4. The system shall conﬁrm the password is acceptable. 

REQ-5. The system shall store the information in the database. 

**4.2. Account Login **

**Description : **

The users have to log into their account whenever they want to use Shoten.

**Stimulus**: Click "Login" Button

REQ-1. The system shall allow a registered user to log-in to their account. 

REQ-2. The system shall require a username and password from the user.

REQ-3. The system will verify the username and password, and the user will be considered “logged-in”.

**4.3. Search**

**Description : **

The users can search for the book of their choice as well as a print shop.

**4.3.1. Search a Book **

**Stimulus**: Click "Search a Book" Button


    REQ-1. The system shall allow a user to search for books by title, author or ISBN number.


    REQ-2. The search results will include a list of matching books with picture of the front cover, along with the title, author, price, availability, and condition of the book. 

**4.3.2. Search a Print Shop**

**Stimulus**: Click "Search a Print Shop" Button


    REQ-1. The system shall allow a user to search for print shops.


    REQ-2. The search results will include a list of available print shops with there opening time , closing time and rates. 

**4.4.  Add to Shopping Cart**

**Description : **

The users have to add the books of their choice to their shopping carts, in order to purchase/rent them. The shopping cart shall display the list of books selected by the user and the total cost of the books.

**Stimulus**: Click "Add to Shopping Cart" Button

REQ-1. The system shall allow a registered and logged-in user to temporarily save books that are being considered for purchase into a list associated with their account

REQ-2. When viewing the shopping cart list, the system shall display the total price of the books in the cart. 

**4.5.  Delete **

**Description : **

The user can delete books added to the shopping cart as per his/her requirement. The shopping cart shall indicate the list of books left in the cart after the deletion operation and their total cost.

**Stimulus**: Click "Delete from Shopping Cart" Button

REQ-1. The system shall allow a registered and logged-in user to remove any unwanted books from their shopping cart. 

REQ-2. The system shall provide the user a way to select one of the books in his/ her cart for deletion.

REQ- 3. After the user has indicated the particular book to be deleted from their shopping cart, the stored list representing the shopping cart should be updated by removing the list, and the display should be updated to show only the books remaining in the cart. 

**4.6.  Rent**

**Description : **

The users can rent books of their choice.

**Stimulus**: Click "Rent" Button

REQ-1. The system shall allow a registered and logged-in user to rent-out books that are in their shopping cart.

REQ-2 The system shall prompt the user to enter time period for renting out the books in the cart.

REQ-3. The system shall display rent charged for the period of rental and individual rent of the books in the shopping cart. 

REQ-4. The system shall allow the user to enter their delivery information.

REQ-5. After a successful transaction user system shall prompt the user to enter their payment information.

REQ-6. On a successful transaction the books (titles and prices and quantities) will be displayed to the screen. 

**4.7. Purchase**

**Description : **

The users can purchase books of their choice.

**Stimulus**: Click "Purchase" Button

REQ-1. The system shall allow a registered and logged-in user to purchase books that are in their shopping cart.

REQ-2. The system shall display total cost of the books in the shopping cart. 

REQ-3. The system shall allow the user to enter their delivery information.

REQ-4. After a successful transaction user system shall prompt the user to enter their payment information.

REQ-5. On a successful transaction the books (titles and prices and quantities) will be displayed to the screen. 

**4.8 Print**

**Description : **

The users can print books of their choice.

**Stimulus**: Click "Print" Button

REQ-1. The system shall allow a registered and logged-in user to request a print from a chosen print shop.

REQ-3. The system shall prompt the user to enter the url of the google drive link of the soft copy to be printed.

REQ-3.  The system shall display the total cost of printing the soft copy.

REQ-4. The system shall allow the user to enter their delivery information.

REQ-5. After a successful transaction user system shall prompt the user to enter their payment information.

REQ-6. On a successful transaction the delivery status will the displayed.

**4.9 Add Book**

**Description : **

The users(students/bookstores) can add books on Shoten which are for sale/rent.

**Stimulus**: Click "Add Book" Button

REQ-1. The system shall allow a registered and logged-in user , bookstores and printing stores to add books they want to sell / print / rent-out.

REQ- 2 The user shall be prompted to fill in a form with all details associated with the class ‘Book’ : name , quantity ,  options for lending or selling , ISBN number , author , price on rental basis , price for selling.

REQ-3. The system shall allow the user to enter their payment acceptance details like bank account number , IFSC Code etc.

**4.10 Request a Restock**

**Description : **

The users can get the contact information of the sellers in order to communicate with the sellers and request a restock.

**Stimulus**: Click "Request s Restock" Button

REQ-1. The system shall allow a user to view various methods of contacting the sellers(bookstore ,printstore or the student sharing the book). 

REQ-2. The system shall display the store address, telephone number, email address, and directions on how to get to the the sellers(bookstore ,printstore or the student sharing the book). 

REQ-3. The system should also display a map showing the location of the bookstores and printing stores.

**4.11.  Update Account Information**

**Description : **

The users can update their account information on Shoten so as to provide their most recent credentials.

**Stimulus**: Click "Update Account Information" Button

REQ-1. The system shall allow a user to update the information in their account. 

REQ-2. The user shall be allowed to view and change their name, mailing address, billing address, payment information.

REQ-3. The user shall be able to change their password by entering the old one once, and a new one twice. 

**4.12.View Delivery Status **

**Description : **

The users can view the delivery status of their order.

**Stimulus**: Click "View Delivery Status" Button

REQ-1. The system shall allow a registered and logged-in user to view the shipping status of orders they have placed within the last 30 days.

REQ-2. The user must enter a conﬁrmation number to view the shipping status of their order. 

REQ-3. The system shall then display the shipping date, mailing address, projected delivery date, and status (in transit, delivered, etc.)

**4.13.View Account Purchase History**

**Description : **

The user can view the list of books purchased by them in the past. The purchase history shall also depict the date and cost of the past orders.

**Stimulus**: Click "View Account Purchase History" Button

REQ-1. The system shall allow a registered and logged-in user to view purchases made with their account within the last two years. 

REQ-2. The system shall display the date of purchase, payment mode.

REQ-3. The system shall display the title of the book, price, and quantity for each book purchased in a given order. 

**4.14. Account Logout **

**Description : **

The user can log out of their account after use.

**Stimulus**: Click "Logout" Button

REQ-1. The system shall allow the registered and logged-in user to exit his/her account, so that access to operations requiring a user to be logged in are now disabled. 

**4.15. Help **

**Description : **

The user can see an overview of how to use Shoten.

**Stimulus**: Click "Help" Button

REQ-1. The system shall allow the user to view an overview of how to use the various operations deﬁned above. 

REQ-2. The system must allow the user to select one of the operations by name. 

REQ-3. The system shall then display information on how to use that operation. 

 \
 \




5. 
**Other Nonfunctional Requirements**


    13. 
**Performance Requirements**
The performance requirements are as follows: 

• System login/logout shall take less than 5 seconds.

• Searches shall return results within 10 seconds.

• Orders shall be processed within 10 seconds. 

• System shall support 1,000 simultaneous users.



    14. 
**Safety Requirements**
The system admin will not be answerable for any discrepancies in cash transactions during product delivery between the users.

Any misleading or incorrect details regarding the book added to the Book database will lead to a temporary or permanent ban to the _Shoten_.



    15. 
**Security Requirements**
A strong password ; i.e. a password that meets a number of conditions that are set in place so that user's passwords cannot be easily guessed by an attacker; should be set as the application is not using any data encryption standards for Login Portal. Generally, these rules include ensuring that the password contains a sufficient number of characters and contains not only lowercase letters but also capitals, numbers, and in some cases, symbols.

The system uses third party payment API .Users will need to follow the security requirements as mentioned by the payment application.



    16. 
**Software Quality Attributes**


*   **Correctness : **The correctness of the information displayed on the software will depend on the users/sellers . The system admin will not be held responsible for any discrepancies in the information displayed regarding any book.The software system should undergo feature testing, load testing, and regression testing prior to release and/or deployment.
*   **Flexibility : **The software has the flexibility  of functioning on multiple operating systems.
*   **Maintainability : **The maximum person-time required to fix a security defect (including regression testing and documentation update) must not exceed two person days. Otherwise, the software system must be taken offline or the offending feature disabled.The developers will periodically update the software based upon the feedback of the users.
*   **Portability : **The software can be transferred across systems using any data storage device such as a flash drive or a hard drive.
*   **Interoperability : **The software has interoperability within the institutes network.
*   **Reusability : **Version 1.1 of Shoten has been implemented as an application over the internal network of the institute. It can be implemented as a fully fledged online website operable on the world wide web. 



    17. 
**Business Rules**
The system will have a Super-User role and a User role defined for accessing and interacting with the system.Super-User role must account for the data explorer, data curator, and administrator . The User role will account for the data explorer account-type requirements described in Section 4. The following business rules must apply to the super-user and user roles.

** 5.5.1 Super-User Role **



*   Supervises back-end system configurations
*   Maintains all schemas and templates 
*   Maintains all user groups and user accounts 
*   Maintains all user queries 

**5.5.2 User Role **



*   Performs the features allowed in system features[4].



6. 
**Other Requirements**


*   _Shoten_ is a copyright trademark of Shoten, IIT Kharagpur.
*   _Shoten_ will be released under a Library , IIT Kharagpur.
*   Licensing requirements: Applicable
*   Legal, Copyright and Other notices: All rights reserved by our organization.
*   Applicable Standards: It should be as per the industry standards

**Appendix A: Glossary**

**SRS : **

A software requirements specification (SRS) is a comprehensive description of the intended purpose and environment for[ ](https://searchmicroservices.techtarget.com/definition/software)the software under development. The SRS fully describes what the software will do and how it will be expected to perform

**RAM :**

RAM is an acronym for random access memory, a type of computer memory that can be accessed randomly.

**PC :**

PC is an acronym for personal computer.

**Server :**

A server is a computer or computer program which manages access to a centralized resource or service in a network.

**API :**

API is an acronym for Advanced Programming Interface. It is a set of functions and procedures allowing the creation of applications that access the features or data of an operating system, application, or other service.

**HTTP :**

**HTTP** means HyperText Transfer Protocol. **HTTP** is the underlying protocol used by the World Wide Web and this protocol defines how messages are formatted and transmitted, and what actions Web servers and browsers should take in response to various commands.

**Appendix C: To Be Determined List**

List of the TBD (to be determined) references that remain in the SRS so they can be tracked to closure:



*   The data set of books and corresponding relevant details as provided by the local book stores and printing stores.
*   Contact list of library management staff to verify any books details in case of any discrepancies.
