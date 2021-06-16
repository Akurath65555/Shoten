# Software Requirements

# Specification

## for

# Shoten

```
Version 1.1 approved
```
```
Prepared by
```
```
Amatya Sharma (17CS30042)
```
```
Udit Desai (17CS30044)
```
```
IIT Kharagpur
```

## Table of Contents

## Table of Contents

**Appendix A: Glossary**

**Appendix B: Analysis Models**

- Document Heading
- Table of Contents
- Revision History
   - 1. Introduction
   - 1.1 Purpose
   - 1.2 Document Conventions
   - 1.3 Intended Audience and Reading Suggestions
   - 1.4 Product Scope
   - 1.5 References
- 2.Overall Description
   - 2.1 Product Perspective
   - 2.2 Product Functions
   - 2.3 User Classes and Characteristics
   - 2.4 Operating Environment
   - 2.5 Design and Implementation Constraints
   - 2.6 User Documentation
   - 2.7 Assumptions and Dependencies
- 3.External Interface Requirements
- 4.System Features
- 5.Other Nonfunctional Requirements
   - 5.1 Performance Requirements
   - 5.2 Safety Requirements
   - 5.3 Security Requirements
   - 5.4 Software Quality Attributes
   - 5.5 Business Rules
- 6.Other Requirements


## Revision History

**Name Date Reason For Changes Version**

Shoten 07/03/2019 First Version of the Software 1.

```
17/03/2019 Evaluation Errors 1.
```

### 1. Introduction

### 1.1 Purpose

Defininganddescribingthefunctionsandspecificationsof Shoten,Version1.1istheprimary
goal of this Software Requirements Specification(SRS). This Software Requirements
Specifications clearly illustrates, in clear terms, the system’s primary uses and required
functionalityasspecifiedbyourcustomer.TheintendedaudienceofthisSRSdocumentwillbe
theclientswhowant thesoftwareto bebuilt,theauthoritiesofIIT Kharagpurwhowillbe
validating the software and the technical professionalsdeveloping the software.

### 1.2 Document Conventions

ThestandardfontusedthroughoutthedocumentisTimesNewRoman,withfontsize12.The
titlesofthevarioussectionsofthisSRSdocumenthavebeenrepresentedinbold,withfontsize
14.Importantpartsofthedocumenthavebeenindicatedinbold.Thenameofsoftware _Shoten_ is
always mentioned in _Italics._

This document uses the following definitions, acronymsand abbreviations:

```
Shoten The name of Application for online book
store
```
```
IIT Kharagpur, IIT KGP Indian Institute of Technology, Kharagpur
```
```
Institute Indian Institute of Technology, Kharagpur
```
```
ERP Enterprise Resource Planning, student
information portal of IIT KGP
```
```
Assembled PC A modular type of computer that can be
assembled using hardware components
storing and processing data,
```
```
Book stores Bookstoreswhichhavecollaboratedwiththe
institute for sale of books on Shoten
```
```
Barcode A unique identifier assigned to each book
```
```
Button Auserinterfaceelementthatallowsastudent
to click and informthe system to take the
required action
```
```
Book Inventory Symbolises the database ofobjects ofclass
```

```
book
```
```
Software Refers to Shoten.
```
```
Student Representative Body A body elected by students intended to
scrutinize the SRS on behalf of the students
```
```
RAM Random-access memory
```
### 1.3 Intended Audience and Reading Suggestions

TheintendedaudienceofthisSRSdocumentwillbetheclientswhowantthesoftwaretobe
built,theauthoritiesofIIT Kharagpurwhowillbe validatingthesoftwareandthetechnical
professionals developingthesoftware.Indirectaudiencewillincludethestudentrepresentative
bodyandbookstoresandprintingstoreswhichhavecollaboratedwiththeinstituteforsaleof
books on Shoten.
ThisSoftwareRequirementsSpecificationdocumentisdividedintomultiplesubsections.
ThefirstsectionincludesexplanationsofthePurpose,Conventions(handlesthedescriptionof
projectspecificwords,acronymsandabbreviationsthatwillbeusedinthedocument),Scopeand
Referencesofthedocument.Thesecondsectionofthedocumentisseparatedintothefollowing
five different sections,eachdetailingspecific detailsofsystem usesandtheir corresponding
actions: Product Perspective,Product Functions,UserCharacteristics,Operating Environment,
Design and Implementation Constraints , Assumptions and Dependencies and User
Documentation.. The third section is an enumerated listing of system’s external interface
requirements.Thefourthsectionencompassesallofthenon-functionalrequirementsdescribed
forthissystem.InthefifthsectionthereexistsaPrototypeofthesystemalongwithasample
scenariothatgraphicallydescribestheuseofthesystem.Thesixthsectioncontainsalistingof
all related reference materials used in this document.

### 1.4 Product Scope

TheobjectiveofthisprojectistocreateandimplementawebsitefortheShotenwhichisan
online bookstore. The applicationwillbe usedprimarilybystudents ofIITKharagpur.The
applicationwillallowuserstocreateandmaintainindividualsecuredaccountsauthenticatedby
institute ERP, search the bookstore database for textbooks,and make secured online purchases.
Students willalsobe abletolend,andborrowbooksfromotherstudentsonpayment
basis.Thesystemalsoincludesthelocalbookshopsandprintingshopsfororderingorprinting
books, along with delivery service.The students as wellas the bookshops will be able to
contribute to the bookstore database sharing bookdetails to be shared.
Users will also be able to contact siteadministrators. Theapplicationmakes
borrowing, lending ,purchasing and printing textbooksquicker, easier, and more convenient.


### 1.5 References

```
● Template has been borrowed from -
IEEE Std 830-1998 , IEEE Recommended Practice for Software Requirements
Specifications.
● Associated webpages -
○ Library IITKGP(http://www.library.iitkgp.ac.in/)
○ <ReferenceofLocalBookStoresandPrintingStores>Willbeupdatedafterfirst
revision
● Institute Identity Authentication -
○ ERP(https://erp.iitkgp.ac.in)
```

## 2.Overall Description

### 2.1 Product Perspective

Thisproductisanentirelynewproduct. Itisnotacomponentofalargersystemhoweverthe
system isextendedbyexplicituse ofinstituteERPSystem forauthenticationpurposes.The
_Shoten_ onlinebookstoresystemwillinteractwithapaymentportalinordertoprocesspurchases
from theapplication. Thesystem willalso interactwith thebookstore’sInventorydatabase,
which records the quantity of books available forsale or lend in the inventory.
Theapplicationmustbeavailabletostudentsofinstitute[1.3]mustworkcorrectlyinboth
Google Chrome and Mozilla Firefox. As stated by the customer,there arenohardwareor
softwarerequirementsbeyondtheseincluding,butnotlimitedto,memoryorspecificsoftware
packages that need to be utilized nor software packagesthat need not be utilized.

### 2.2 Product Functions

_Shoten_ will provide a number of functions, each islisted below.

```
● Account Registration
● Account Login
● Search
● Select whether to rent or buy a book or print.
● Add or delete to Shopping Cart
● Checkout
● Put on a Restock Request
● Update Account Information
● View order and shipping status
● View Account Information
● Account Logout
● Help
```
### 2.3 User Classes and Characteristics

System identifies the following user classes:

**2.3.1 Student :**
2.3.1.1 Description : Student registered with theinstitute
2.3.1.2 Use Cases:
● Create an account in the system.
● Login and logout of the system.
● Search for the required book or a print shop.


```
● Buy or rent a book or request a print from a print shop.
● Sell or rent a book.
● Add books to cart.
● Add a print to car.
● Paythesellerorreceivepaymentforsellingorrentingbooksand
printing.
● Contact the seller for a restock request.
● Update account information.
● View account information.
● View order and shipping status.
```
**2.3.2 Book Store :**
2.3.2.1 Description: Bookstorescollaborating withtheinstituteforsaleofbookson
Shoten
2.3.2.2 Use Cases:
● Create an account in the system.
● Display available books.
● Sell or rent books as required by the customer.
● Contact the customer.
● Receive payment from the customer.
● Deliver books to the customer.

**2.3.2 Print Shop :**
2.3.2.1 Description: Printing shops collaboratingwith the institute for printing of books
through Shoten.
2.3.2.2 Use Cases:
● Create an account in the system.
● Display printing rates.
● Print the soft copies provided by the customer.
● Contact the customer.
● Receive payment from the customer.
● Deliver print-outs to the customer.

**2.3.3 Admin:**
2.3.3.1 Description: The entity to whom the software will be handed over after
production.
2.3.3.2 Use Cases:
● Authenticate user account details
● Manage Sales.

### 2.4 Operating Environment

Minimum System Requirements :
● Operating System :
○ Windows 7 or higher, OS X 10.11 or higher.


```
○ Linux Ubuntu 16.04 or higher version.
● Java version 1.8(recommended)
● Shoten does not have any other specific software requirements
```
Minimum Hardware Requirements :
● A properly assembled PC unit with :
○ RAM : At Least 512 MB vRAM.
● Shoten does not have any other specific hardware requirements.
Language : Java , JSP , SQL ,HTML , CSS.
Web Browser supported Google Chrome , Mozilla Firefox.
Server Application : Apache Tomcat 8.0.

### 2.5 Design and Implementation Constraints

TheServersidewillrequireahigh-speedInternetconnectiontodealwithmultiplecustomers
visitingtheportalnetworksimultaneouslyandthepresenceofasinglepaymentservicesystems
necessaryforprocessingacustomer'spurchases.Thiswillcreateaconstraintonthenumberof
paymentsprocessedbythesystematapointoftimetothelimitifthepaymentserverwewillbe
using.OntheClientside thereisno connectionspeedrestrictions, butthey willneedtobe
runningInternetExplorer5.0oraboveandajavaversion1.8 orabove. TheWindows 7 or
higher operating systems will be required for oursoftware to run efficiently.
Theproject'sdeliverydateof5/31/19. Thedevelopmentofthissoftwarewillrequirea
minimumoftenhoursperweekduringthenextoneandahalfmonths,whichwillamounttoa
total of sixty hours.
Astrongpassword;i.e.apasswordthatmeetsanumberofconditionsthataresetinplace
sothatuser'spasswordscannotbeeasilyguessedbyanattacker;shouldbesetastheapplication
isnotusing 128 bitdataencryptionstandardsforLoginPortal.Generally,theserulesinclude
ensuring that thepassword containsa sufficientnumberofcharactersandcontainsnot only
lowercase letters but also capitals, numbers, andin some cases, symbols.

Other constraints are:
● Cannot implemented as an Android/IOS App
● No other languages except English is used in thisimplementation
● Security features haven’t been introduced.

### 2.6 User Documentation

The components delivered alongside the software (softcopy):
● Licence-Terms and Conditions
● User Manuals for software
ASlideShowpresentationwouldbeprovidedtotheuserrepresentativessothattheycanuseto
explain the same to others


### 2.7 Assumptions and Dependencies

SinceShoten requiresInternetaccess,itisassumedthattheenduserhasaconnectiontothe
Internet.Itisalsoassumedthattheuserhasawebbrowserabletodisplaythewebsiteoralatest
java version 1.8 to display the application.


## 3.External Interface Requirements

**3.1. System Interfaces:**
The system will interface with the following two systems:
1.Apaymentprocessingsystem: Thesystemwillaccessthepayment processingsystemviaits
web services API.
2.TheBooksInventorydatabase:Thesystemwillinteractwiththeinventorydatabasemanaged
by SQL.

**3.2. User Interfaces:**
Thesystemwillprovide theability forstudents andfaculty toaccesstheShotemBookstore
application via the Internet.

- Students will be allowed to search only after login.
- The payment transaction will include reserving andpurchasing textbooks
- TheUsers must berequiredtologinatalltimesinordertoperformanytransaction.Once
loggedintheuserwillbeabletoupdaterequiredtextbookinformationpertheavailability,and
make any changes to their personal online account.
- Administratorswillalsoberequiredtologinatalltimes.However,theywillhavelimitaccess
viatheweb-interfaceonlybeingabletopullpredefinedreports.Theadministratorswillhaveto
logon to a host machine insidetheShoten OnlineBookstore network inorder todraftany
changes.

**3.3. Hardware Interfaces:**
The desktop used should have Core i3 7th generationprocessor for both client and server ends.

**3.4. Software Interfaces:**
Thefront-endofsoftwarewillinteractwithadatabasethatstorestheinformationnecessaryfor
thesystemtooperate.TheDBMSmustbeabletoprovide,onrequestdataconcerningthebook
detailsanduserdata.Additionally,itshouldtakeandarchivedataprovidedtoitbythesystem
maintained on the main server.

**3.5. Communication Interfaces:**
Communication function requires HTTP for the localserver.


## 4.System Features

Thissubsectionpresentstheidentifiedfunctionalrequirementsforthe _Shoten_ .Wherepossible,
the requirements have been demarcated based on theirrelevance to the users of the system.

**4.1. Account Registration**

**Description :**
Thefirst-timeusers(students/sellers)ofShotenhavetocreate(register)anaccountinthesystem,
in order to use Shoten.

**Stimulus** : Click "Register" Button

REQ-1. The system shall allow a non-registered userto create a secure account.
REQ-2.Thesystemshallrequirethefollowinginformationfromtheuser:Name,InstituteRoll
Number (in case of Students only),Shop ID(In caseof Bookstores) , Mobile Number , Email ID.
REQ-3. The system shall assign the user a usernameand ask for a password.
REQ-4. The system shall confirm the password is acceptable.
REQ-5. The system shall store the information in thedatabase.

**4.2. Account Login**

**Description :**
The users have to log into their account wheneverthey want to use Shoten.

**Stimulus** : Click "Login" Button

REQ-1. The system shall allow a registered user tolog-in to their account.
REQ-2. The system shall require a username and passwordfrom the user.
REQ-3.Thesystem willverifytheusernameand password,and theuserwillbeconsidered
“logged-in”.

**4.3. Search**

**Description :**
The users can search for the book of their choiceas well as a print shop.

```
4.3.1. Search a Book
Stimulus : Click "Search a Book" Button
```
```
REQ-1. The system shall allow a user to searchforbooksbytitle,authororISBN
number.
```

```
REQ-2.Thesearchresultswillincludealistofmatchingbookswithpictureofthefront
cover, along with the title, author, price, availability,and condition of the book.
```
```
4.3.2. Search a Print Shop
Stimulus : Click "Search a Print Shop" Button
```
```
REQ-1. The system shall allow a user to search forprint shops.
REQ-2.Thesearchresultswillincludealistofavailableprintshopswiththereopening
time , closing time and rates.
```
**4.4. Add to Shopping Cart**

**Description :**
Theusershavetoaddthebooksoftheirchoicetotheirshoppingcarts,inordertopurchase/rent
them.Theshoppingcartshalldisplaythelistofbooksselectedbytheuserandthetotalcostof
the books.

**Stimulus** : Click "Add to Shopping Cart" Button

REQ-1.Thesystemshallallowaregisteredandlogged-inusertotemporarilysavebooksthatare
being considered for purchase into a list associatedwith their account
REQ-2.Whenviewingtheshoppingcartlist,thesystemshalldisplaythetotalpriceofthebooks
in the cart.

**4.5. Delete**

**Description :**
Theusercandeletebooksaddedtotheshoppingcartasperhis/herrequirement.Theshopping
cart shall indicate the list of books left in thecart after the deletion operation and their totalcost.

**Stimulus** : Click "Delete from Shopping Cart" Button

REQ-1.Thesystemshallallowaregisteredandlogged-inusertoremoveanyunwantedbooks
from their shopping cart.
REQ-2.Thesystemshallprovidetheuserawaytoselectoneofthebooksinhis/hercartfor
deletion.
REQ-3.Aftertheuserhasindicatedtheparticularbooktobedeletedfromtheirshoppingcart,
thestoredlist representingtheshoppingcartshouldbeupdatedbyremovingthelist,andthe
display should be updated to show only the books remainingin the cart.

**4.6. Rent**

**Description :**


The users can rent books of their choice.

**Stimulus** : Click "Rent" Button

REQ-1.Thesystemshallallowaregisteredandlogged-inusertorent-outbooksthatareintheir
shopping cart.
REQ-2Thesystemshallprompttheusertoentertimeperiodforrentingoutthebooksinthe
cart.
REQ-3.Thesystemshalldisplayrentchargedfortheperiodofrentalandindividualrentofthe
books in the shopping cart.
REQ-4. The system shall allow the user to enter theirdelivery information.
REQ-5.Afterasuccessfultransactionusersystemshallprompttheusertoentertheirpayment
information.
REQ-6.Onasuccessfultransactionthebooks(titlesandpricesandquantities)willbedisplayed
to the screen.

**4.7. Purchase**

**Description :**
The users can purchase books of their choice.

**Stimulus** : Click "Purchase" Button

REQ-1.Thesystemshallallowaregisteredandlogged-inusertopurchasebooksthatareintheir
shopping cart.
REQ-2. The system shall display total cost of thebooks in the shopping cart.
REQ-3. The system shall allow the user to enter theirdelivery information.
REQ-4.Afterasuccessfultransactionusersystemshallprompttheusertoentertheirpayment
information.
REQ-5.Onasuccessfultransactionthebooks(titlesandpricesandquantities)willbedisplayed
to the screen.

**4.8 Print**

**Description :**

The users can print books of their choice.

**Stimulus** : Click "Print" Button

REQ-1.Thesystemshallallowaregisteredandlogged-inusertorequestaprintfromachosen
print shop.
REQ-3.Thesystemshallprompttheusertoentertheurlofthegoogledrivelinkofthesoftcopy
to be printed.


REQ-3. The system shall display the total cost of printing the soft copy.
REQ-4. The system shall allow the user to enter theirdelivery information.
REQ-5.Afterasuccessfultransactionusersystemshallprompttheusertoentertheirpayment
information.
REQ-6. On a successful transaction the delivery statuswill the displayed.

**4.9 Add Book**

**Description :**
The users(students/bookstores) can add books on Shotenwhich are for sale/rent.

**Stimulus** : Click "Add Book" Button

REQ-1.Thesystemshallallowaregisteredandlogged-inuser,bookstoresandprintingstoresto
add books they want to sell / print / rent-out.
REQ- 2 Theusershallbepromptedtofillinaformwithalldetailsassociatedwiththeclass
‘Book’:name,quantity, optionsforlendingorselling,ISBNnumber,author,priceonrental
basis , price for selling.
REQ-3.Thesystem shallallowtheuserto entertheir paymentacceptancedetails likebank
account number , IFSC Code etc.

**4.10 Request a Restock**

**Description :**
Theuserscangetthecontactinformationofthesellersinordertocommunicatewiththesellers
and request a restock.

**Stimulus** : Click "Request s Restock" Button

REQ-1. The system shall allow a user to view various methods of contacting the
sellers(bookstore ,printstore or the student sharingthe book).
REQ-2. The system shall display the store address, telephone number, emailaddress, and
directions on how to get to the the sellers(bookstore,printstore or the student sharing the book).
REQ-3. The system should also display a mapshowing thelocationofthebookstoresand
printing stores.

**4.11. Update Account Information**

**Description :**
Theuserscanupdatetheiraccount informationonShotensoastoprovidetheirmostrecent

credentials.

**Stimulus** : Click "Update Account Information" Button


REQ-1. The system shall allow a user to update theinformation in their account.
REQ-2. The user shallbe allowedto view andchange theirname,mailing address,billing
address, payment information.
REQ-3.Theusershallbeabletochangetheirpasswordbyenteringtheoldoneonce,andanew
one twice.

**4.12.View Delivery Status**

**Description :**
The users can view the delivery status of their order.

**Stimulus** : Click "View Delivery Status" Button

REQ-1.Thesystemshallallowaregisteredandlogged-inusertoviewtheshippingstatusof
orders they have placed within the last 30 days.
REQ-2. The user must enter a confirmation number toview the shipping status of their order.
REQ-3.Thesystemshallthendisplaytheshippingdate,mailingaddress,projecteddeliverydate,
and status (in transit, delivered, etc.)

**4.13.View Account Purchase History**

**Description :**
Theusercanviewthelistofbookspurchasedbytheminthepast.Thepurchasehistoryshallalso
depict the date and cost of the past orders.

**Stimulus** : Click "View Account Purchase History" Button

REQ-1.Thesystemshallallowaregisteredandlogged-inusertoviewpurchasesmadewiththeir
account within the last two years.
REQ-2. The system shall display the date of purchase,payment mode.
REQ-3. The system shall displaythe title of thebook, price, and quantity for each book
purchased in a given order.

**4.14. Account Logout**

**Description :**
The user can log out of their account after use.

**Stimulus** : Click "Logout" Button


REQ-1.Thesystemshallallowtheregisteredandlogged-inusertoexithis/heraccount,sothat
access to operations requiring a user to be loggedin are now disabled.

**4.15. Help**

**Description :**
The user can see an overview of how to use Shoten.

**Stimulus** : Click "Help" Button

REQ-1.Thesystemshallallowtheusertoviewanoverviewofhowtousethevariousoperations
defined above.
REQ-2. The system must allow the user to select oneof the operations by name.
REQ-3. The system shall then display information onhow to use that operation.


## 5.Other Nonfunctional Requirements

### 5.1 Performance Requirements

The performance requirements are as follows:

- System login/logout shall take less than 5 seconds.
- Searches shall return results within 10 seconds.
- Orders shall be processed within 10 seconds.
- System shall support 1,000 simultaneous users.

### 5.2 Safety Requirements

The system admin will notbe answerableforany discrepanciesincash transactionsduring
product delivery between the users.
AnymisleadingorincorrectdetailsregardingthebookaddedtotheBookdatabasewillleadtoa
temporary or permanent ban to the _Shoten_.

### 5.3 Security Requirements

Astrongpassword;i.e.apasswordthatmeetsanumberofconditionsthataresetinplace
sothatuser'spasswordscannotbeeasilyguessedbyanattacker;shouldbesetastheapplication
is not using any data encryption standards for Login Portal.Generally, these rulesinclude
ensuring that thepassword containsa sufficientnumberofcharactersandcontainsnot only
lowercase letters but also capitals, numbers, andin some cases, symbols.
The system uses third party payment API .Users will need to follow the security
requirements as mentioned by the payment application.

### 5.4 Software Quality Attributes

```
● Correctness: Thecorrectnessoftheinformationdisplayedonthesoftwarewilldepend
ontheusers/sellers.Thesystemadminwillnotbeheldresponsibleforanydiscrepancies
in theinformationdisplayed regardinganybook.Thesoftwaresystemshouldundergo
feature testing, load testing, and regression testingprior to release and/or deployment.
● Flexibility : The software has the flexibility of functioning on multiple operating
systems.
● Maintainability: Themaximumperson-timerequiredtofixasecuritydefect(including
regression testing and documentation update) must not exceed two person days.
Otherwise, the software system must be taken offline or the offending feature
disabled.Thedeveloperswillperiodicallyupdatethesoftwarebaseduponthefeedbackof
the users.
```

```
● Portability : The software can betransferredacross systemsusingany datastorage
device such as a flash drive or a hard drive.
● Interoperability : The software has interoperabilitywithin the institutes network.
● Reusability: Version1.1 ofShotenhasbeenimplementedasanapplicationoverthe
internalnetworkoftheinstitute.Itcanbeimplementedasafullyfledgedonlinewebsite
operable on the world wide web.
```
### 5.5 Business Rules

ThesystemwillhaveaSuper-UserroleandaUserroledefinedforaccessingandinteracting
with the system.Super-User role must account for the data explorer, data curator, and
administrator. The Userrole will account for the data exploreraccount-type requirements
described in Section 4. The following business rulesmust apply to the super-user and user roles.
**5.5.1 Super-User Role**
● Supervises back-end system configurations
● Maintains all schemas and templates
● Maintains all user groups and user accounts
● Maintains all user queries

```
5.5.2 User Role
● Performs the features allowed in system features[4].
```

## 6.Other Requirements

```
● Shoten is a copyright trademark of Shoten, IIT Kharagpur.
● Shoten will be released under a Library , IIT Kharagpur.
● Licensing requirements: Applicable
● Legal, Copyright and Other notices: All rights reservedby our organization.
● Applicable Standards: It should be as per the industrystandards
```

## Appendix A: Glossary

#### SRS :

A software requirements specification (SRS)is acomprehensive descriptionof theintended
purposeandenvironmentforthesoftwareunderdevelopment.TheSRSfullydescribeswhatthe
software will do and how it will be expected to perform

**RAM :**

RAM is an acronymfor random access memory, a type of computer memory that canbe
accessed randomly.

**PC :**

PC is an acronym for personal computer.

**Server :**

Aserverisacomputerorcomputerprogramwhichmanagesaccesstoacentralizedresourceor
service in a network.

**API :**

APIisanacronymforAdvancedProgrammingInterface.Itisasetoffunctionsandprocedures
allowingthecreationofapplicationsthataccessthefeaturesor dataofanoperatingsystem,
application, or other service.

**HTTP :**

**HTTP** meansHyperTextTransferProtocol. **HTTP** istheunderlyingprotocolusedbytheWorld
Wide Weband thisprotocol defineshow messagesareformattedand transmitted,andwhat
actions Web servers and browsers should take in responseto various commands.

## Appendix C: To Be Determined List

ListoftheTBD(tobedetermined)referencesthatremainintheSRSsotheycanbetrackedto
closure:
● Thedatasetofbooksandcorrespondingrelevantdetailsasprovidedbythelocalbook
stores and printing stores.
● Contact list of library management staffto verify any booksdetails in case of any
discrepancies.


