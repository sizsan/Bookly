# Bookly

This repository contains the Ruby on Rails assessment (A2-1) for Coder Academy's GenTech program.

Group members:
- Jack Gronow
- Tony Huynh
- Natalie Sargent

### [Bookly App on Heroku](https://b00kly.herokuapp.com/)

### [GitHub Repository](https://github.com/sizsan/Bookly)

## Project Description

### Problem Definition & Purpose
<!-- 1. What is the need (i.e. challenge) that you will be addressing in your project?
2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving? -->
The initial purpose of Bookly arose when the development team observed the lack of localised and dedicated platforms on which students could exchange their textbooks. Many competitors who dominate the marketplace sphere often fail to tailor their products to student needs. The resulting product is often a convoluted and unintuitive website for students. While failing to understand their key demographic and charging disproportionately high fees, a void was created in the marketplace. It was because of this demand for a student-centric textbook marketplace that Bookly was created.

During the development process, the team came to fully grasp the generic and modular nature of the application design. By a unanimous vote, it was decided that the application be tailored to the general public selling books of all kinds.

Starting from its humble beginnings, targeting students, the development team of Bookly eventually recognised that everyone could benefit from a book-specific marketplace that operates on a no/low-fee model. Business models behind the dominating marketplaces have changed over time, many move to subscription-based services while others increase payment fees in order to fund other financial ventures. Whenever this business model shift occurs on an industry-wide level, there is a new drive in demand for simpler alternatives. Bookly fulfills this demand with a no-nonsense book exchange marketplace that does what it does best, provide a platform for those wishing to buy and sell books.

### Functionality & Features
<!-- 3. Describe the project you will be conducting and how your App will address the needs. -->
The driving influence and philosophy behind Bookly is to focus on one purpose and to excel at that purpose. A marketplace on which people can exchange books is simple in design but incredibly difficult to implement with many minor considerations that affect the user experience and overall quality of the product.

Contrasting with generic marketplaces, Bookly focuses on books and allows users to list books for sale or place an order with minimal impediments. A user need not spend more time than necessary in order to list a book as being for sale. Similarly, a user will find very few steps in between logging in to Bookly and placing an order for a book that they have just found. This straightforward implementation resolves any qualms that a user might have in navigating a more convoluted marketplace competitor in achieving the same objective as on Bookly.

### Screenshots
![alt text](image.jpg)

### Tech Stack
- HTML
- Sass / CSS
- Bulma
- JavaScript
- Ruby on Rails
- Heroku

### Instructions to Setup, Configure and Use the App

Installing Ruby:
1. Ensure Ruby is installed by entering the following command in Terminal: `ruby --version`
    - If a valid Ruby version is not returned, refer to the following link to install Ruby for your operating system: https://www.ruby-lang.org/en/downloads/

Downloading the Application:
1. Navigate to the GitHub repository as linked above; and
2. Either **clone** or **download ZIP** of the application.

Installing Gems:
1. Ensure you have **Bundler** installed by opening Terminal and entering the following command:  `bundler --version`
    - If Bundler is not installed and an error is returned, enter the following command to install: `gem install bundler`
2. Navigate to the root directory of the application and install the required gems with: `bundle install`

Database Setup:
1. Bookly's repository contains the default database configuration in `database.example.yml`.
2. Ensure your Terminal's path is in `/Bookly/config` and enter the following command to copy the contents of this default configuration into a separate file to be used by Rails: `cp database.example.yml database.yml`
3. If necessary, change the settings within `database.yml` to match the credentials of your PostgreSQL setup.

Running the Application on your localhost
1. Ensure you are in the application's root directory and enter the following command to run the application within your browser: `rails server`

### Network Infrastructure
<!-- 4. Describe the network infrastructure the App may be based on.
https://devcenter.heroku.com/articles/http-routing 
https://devcenter.heroku.com/articles/dynos
https://www.heroku.com/dynos-->
For this application we used Heroku for our HTTP routing. We chose this cloud service as it handles all of our routing for us through the use of web, worker and one-off dynos. Heroku handles incoming requests by sending them to a load balancer that offers SSL (Secure Socket Layer) termination, from there the request is sent to a router which then determines where the web dynos for the application will be located. Once a web dyno has been selected the router established a TCP connection with then dyno then forwards the HTTP request to said dyno. Once the web dyno has received the HTTP request the request is put into a queue and the web dyno returns a success message to the user. Then a worker dyno picks up the request and runs any process defined in the users procfile that aren't defines as 'web'. The worker dynos then return a result and then saves to a database.
<!--Jacck-->

### Third Party Software and Services
<!-- 5. Identify and describe the software to be used in your App.
10. Detail any third party services that your App will use.
(20 points) Identify and describe any third party software and services used by your app. 
   - Include services used to deploy your app, to upload content through your app, or to accept payment through your app (10 points)
   - List all gems used and their purpose (10 points) -->

<!--Tony-->
- Cloudinary
- Stripe
- Gems

### Database

#### Database Selection
<!-- 6. Identify the database to be used in your App and provide a justification for your choice. -->
For this project we decided to use PostgreSQL to manage our database. The initial reason for this decision was that everyone in our development team already had a familiarity with PostgreSQL and its application to rails. Furthermore upon further examination of PostgreSQL we discovered that it was our one of the most advanced database management systems available. The pros of Postgres being that it is flexible, highly extensible, and offers strong security. Postgres allows the us to set specific parameters this means that we were able to put custom limits on fields that required a users input. Another great feature that postgres offers is that it is highly extensible, enabling us to make continuous changes to our database for example if we wanted to add a new datatype we can do that through postgres simply by asking it to create an extension. Postgres also offer great security features, it provides parameter security as well as app security. Another arguably great thing about postgres is that is an open source project meaning that if were to run into a problem there is a vibrant and independent community to aid us. On the other hand Postgres has some draw backs when compared to newer NoSQL databases. The drawbacks being that ot hasa slower performance and is very strict towards querying data. However for the purposes of this application the pros far out weigh the cons.

<!--Jacck-->

#### Production Database Setup
<!-- 7. Identify and describe the production database setup (i.e. postgres instance). -->
   For our rails application we used postgres as our production database instance (environment). However to setup the database our team used the in build rails helpers to generate migration scripts that we then ran using "rails db:migrate". WE generated these migration scripts to create, edit and remove tables from our database. This setup method was selected because we already had a basic understanding of migration scripts and their application to postgreSQL.      
<!--Jacck-->

## Design Documentation

### Design Process

### Arhitecture and High-Level Design
<!-- 8. Describe the architecture of your App.
9. Explain the different high-level components (abstractions) in your App.
(20 points) Describe the high level components of your app and how they work together.
Include the following:
-A diagram showing the high level components, how the user interacts with those components, and how they interact with each other (10 points)
-A brief description of each high level component (10 points) -->

<!--Natalie-->

### Data Structure of Marketplace Apps
<!-- 11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb). -->

<!--Tony / Natalie-->

### User Stories
- US1 - As a User I can post an advert for my chosen book.
- US2 - As a User I can search for a specfic book.
- US3 - As a User I can view a list of books availbe for sale.
- US4 - As a User I can order a book. 
- US5 - As a User I can add photos to my adverts.
- US6 - As a Seller I can delete my adverts

### Unified Modeling Language (UML) Diagram
![alt text](image.jpg)

<!--Natalie-->

### Wireframes
<!-- 16. Provide Wireframes for your App. -->
![alt text](image.jpg)

<!--Natalie-->

## Planning Process
<!-- 17. Describe the way tasks are allocated and tracked in your project. -->

To plan this we used trello and daily meetups to ensure everyone was up to date and knew what their task for the day was.

### Project Plan & Timeline

#### Week 1

##### Day 1
- Settle on an idea for our marketplace application
- Begin skeletons of the App, README, ERD, Trello
- Implement a CSS framework (i.e. Bulma)

##### Day 2
- Finalise the ERD
- Plan the Models
- Populate database with test data

##### Day 3
- Finalise wireframes
- Create relationships between Models
- Define a clear purpose for each Controller

#### Week 2

##### Day 1
- Implement Models
- Begin manual testing
- Plan Controllers

##### Day 2
- Implement Controllers
- Implement User Authentication with Devise

##### Day 3
- Finish MVP
- Finish RSpec testing

#### Week 3

##### Day 1
- Begin docmentation
- Finalise the MVP with negative testing

##### Day 2
- Work through the documentation

##### Day 3
- Complete any remaining tasks on the Trello Board

### Trello Board
![Starting](docs/Trello1.png)
![Begining](docs/Trello2.png)
![Priorities](docs/Trello3.png)
![Week 3](docs/Trello4.png)
![Sizing](docs/Trello5.png)



### Agile Methodology
<!-- 18. Discuss how Agile methodology is being implemented in your project. -->

<!--Natalie-->

### Source Control
<!-- 19. Provide an overview and description of your Source control process. -->

<!--Tony-->

### Testing Process
<!-- 20. Provide an overview and description of your Testing process. -->

<!--Tony-->

## Information Security and User Data

### Information System Security Requirements
<!-- 21. Discuss and analyse requirements related to information system security.
(30 points) Discuss information security requirements and discuss what you will do to address those requirements, or would do in a future release of the application (beyond MVP) -->
The information security requirements that are related to information systems are 'Authentication and Authorisation', 'Data Backups', 'Encryption', and 'Third Party Vendor Security'. The following list is made up of the required information security for an information system however they are multiple other requirements that further the strength of an applications security to am information system. 

### Authentication and Authorisation
This requirement is focused on identifying a users unique system, controlling a users privileges and ensure that all sensitive data is secure and encrypted. The reason the each user has to be identified is to prevent a user from signing up with a bot to spam the database with information causing all manor of complications. After the user has been identified they are then able to sign-up, doing so requires a password. Passwords fall under the category of sensitive data. This is another aspect of the authentication side of this requirement, encrypting sensitive data for the user that is thn used to protect their account. Once a user has signed-up they are assigned the absolute minimum amount of privileges needed to use the application. Applying such heavy restrictions to the users privileges means that we have less pages to add authentication to saving our team time. In our application we chose to use the cloud service 'Devise' to handle our 'Authentication and Authorisation'. 

### Encryption
Encrypting data is one of the best ways to prevent users from gaining access to sensitive data. This method of security is used to disguise sensitive data like API keys to third party services, passwords and specific portions of code to the user. For this project we did a very small amount of manual encryption with just our Stripe and CLoudinary API keys being in the Credentials file provided by Rails. The rails credentials file can only be decrypted with the unique 'master.key' file that was shared around our team making it possible for us all to use the API keys in the credentials file. However this was not the only encryption that our application used as we were using multiple Cloud service each with their own inbuilt encryption protocols. It is recommended that if we published this application much more information would need to be encrypted. For example ids, crucial source code (unless w released this application as open source).

### Data Backups 
Another requirement of information security is having backups of all the data that is stored on the system. This security measure ensures that the users crucial data (ie their account) wont be lost if an error occurs that causes us to reset our database. These backups offer a level of safety and security to our data that cannot be gained any other way. For this application we chose to backup all our source code on Github which included the Devise files that stored the users encrypted account information.   
### Third Party Vendors.
Out sourcing to a third party vendor is a great way to save time and resources however for each addition cloud service that is used by an application that application looses can only be as secure as the aforementioned cloud service. This is why it is important that when out sourcing to only provide the vendor with the minimum amount of privilege and data. Doing this ensures that you aren't leaving an application open to unnecessary levels of risk. Another aspect of third party vendor security is ensure that the connection between an applications local server and the third parties server are secure. An easy way to do this is through the use of API keys for encryption purposes. However these precaution are meaningless if the vendor itself is insecure. The third party services that are used in this application are Stipe, Cloudinary and Heroku. All of these services offer strong reliable security. In the future we would upgrade out subscriptions to Heroku, Cloudinary and Stripe as we would need more space on their servers with if we had an increase in user traffic.

<!--Jack-->

### Methods to Protect Information and Data
<!-- 22. Discuss methods you will use to protect information and data.
(20 points) Discuss requirement for information security and how your project addresses them (for example, using devise for authentication/authorization). For top points, discuss other options to protect data, benefits and tradeoffs, and why you chose what you did in your project. -->
The methods that we used to protect our data were devise, heroku, cloudinary, stripe and the credentials file provided by rails to encrypt our sensitive data ie API keys.

### Devise (Authentication And Authorisation)
### Our initial reason for choosing devise was because it was quite easy to implement and came with its own views for signing up and logging in as well as a few built in methods that made tailoring the UI to each individual user much simpler. After doing some further research we discovered that devise was in fact a very viable option for user authentication as it uses strong encryptions and strict validations to keep its information safe. Devise uses an authentication model that is responsible for sending the users passwords to a hash that is then encrypted and validating the authenticity of a user while signing in. To encrypt the passwords Devise generates a random string that is then fed to the development database for a rails application. Devise also validates the users inputs based on default requirements like default password length and validation for emails. Overall Devise is an incredibly secure, easy to use cloud service for adding Authentication to a rails application.

### Heroku (Network Security)
Heroku employs many different methods of security to protect their servers along with the users information and their network. These methods include 'Firewalls', 'Spoofing and Sniffing Protections', 'System and Customer Authentication' and 'Application Isolation'. The heroku firewalls are designed to restrict access to systems from external networks and internal systems."By default, all access is denied and only explicitly allowed ports and protocols are allowed based on business need." This excessive limitation helps Heroku with another method of security. Application isolation in Heroku is done through the use of dynos that are randomly selected by an algorithm run by Heroku. Isolating each user application in their own environment prevents a myriad of stability and security issues. These issues being DDoss and Spoofing and Sniffing. This is because each environment is protected with a firewall that will not deliver traffic to an interface is not directed addressed to. Heroku protects its connection to the postgres database through an incredibly strong encryption called SSL. 


### Rails Credentials File (Encryption)
A new feature (as of rails 5.2) is an encrypted credentials file. This file is encrypted with a unique key that is stored in the 'master.key' file. For out application we used this file to protected our API keys for Stripe and Cloudinary. The benefits of using the built-in rails encryption is that encrypted credentials are saved in a repository and only having one file. This saved us time as it was easier to manage ust having one file than decoding multiple. An exmaple of a master.key file can be found [here.](https://www.engineyard.com/blog/rails-encrypted-credentials-on-rails-5.2)

### Cloudinary/Stripe (Third Party Vendor Security)
Cloudinary and Stripe use very similar security methods to keep their service safe. In terms of application security they both use a secret API key to connect to an application. This key is stored in our credentials file and is encrypted by both services. I regards to  network security they differ slightly, Cloudinary a third party software called Dome9 to monitor network traffic to and from their servers whereas Stripe uses an SSL encryption for all of its HTTP requests. Both of these methods are viable and provide more than a reasonable amount of security.

### Backups 
To backup our application we used Github. Github is a trusted online storage platform that is used by many real world companies and therefore has more than enough security for our purposes. 
<!--Jack-->

### Legal Obligations for Data Protection
<!-- 23. Research what your legal obligations are in relation to handling user data.
(10 points) Research legal obligations for data protection and discuss. One place to look is GDPR requirements (there is a unit in canvas) -->

<!--Tony-->

## Database design
<!-- (90 points) Discuss design of the database and data structures in the README 
Include: -->

### Relational Database Design
<!-- 1 (20 points) Understanding of relational database design (https://medium.com/@kimtnguyen/relational-database-schema-design-overview-70e447ff66f9)
   - Provide a description of relational databases and what is important in relational database design (10 points)
   - Discuss how your design takes into account relational database design practices, including normalisation (10 points) -->

<!--Natalie-->

### Database Entity Relationship Diagram
<!-- 14. Provide your database schema design.
2 (20 points) ERD
   - Complete ERD. Make sure it accurately reflects your design (10 points)
   - Demonstrate normalisation in your ERD (10 points) -->

<!--Natalie-->

### Database Entities
<!-- 3 (20 points) Description of database entities
   - Define the entities in your ERD and how they are used in your app (10 points)
   - Describe the fields of the entities in the ERD, including data types, default values, required vs. optional, primary keys, and reasons for choices made on these items (10 points) -->

<!--Natalie-->

### Database Relations
<!-- 12. Discuss the database relations to be implemented.
4 (20 points) Relationships
   - Identify relationships used including the type of relationships, as shown in the ERD (10 points)
   - Discuss why the chosen relationships are used including any alternatives considered (10 points) -->

<!--Tony-->

### Database Models
<!-- 13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.
5 (10 points) Model discussion
   - Describe how models will implement the relationships given in the database design with ActiveRecord associations" -->

### Our projects database consisted of serval models, these models being 'Books', 'Advert', 'Order', and 'User'. 

### Users Model
### The Users model was the first one that our team chose to implement. This was to due to the fact that in previous projects we had implemented it later and found that putting functions behind devise was more work than just starting with it. This models associations were 'has_many :advert' and the standard connections that devise generated for us.
- has_many :adverts, The purpose of this connection was to allow a single user to create multiple adverts allowing them to advertise more than one book at a time.  

### Books Model 
### The second model that we implemented was the called 'Books'. This was because we chose to link our application to google books and needed a model to locally store the data we used for this application. This model was connected to the 'Adverts' model through a 'has_many :adverts' association. 
- has_many :adverts, This was due to the fact that multiple users could create an advert for the same book. 

### Adverts Model
After books we implemented the adverts model. This model unlike book has associations to more than one table, these connection being 'belongs_to :book' and 'belongs_to :user'.
- belongs_to :book, This association was created because we only wanted a user to be able to advertise one book per advert.
- belongs_to :user, The purpose of this connection was to ensure that only one user (:seller) would be attached to an advert. Only having one user attached to each advert allowed us to display their contact information and name easily. This also simplified our connection to the Stripe cloud service.
 
### Order Model
For the 'Order' model our team settled on two 'belongs_to' associations, one being to ':adverts' the other being to ':user'. The purpose of this model was to put the information for 'Stripe' in a single model making its a implementation much more simple.
- belongs_to :adverts, the connection to adverts enabled us to display the details of which advert the user had chosen buy, which then made it quite simple to send that information to 'Stripe'.
- belongs_to :user, The 'user' association was again designed to simplify our connection with 'Stripe'. 
<!--Jacck-->

___

## Short Answer Questions
1. What is the need (i.e. challenge) that you will be addressing in your project?
2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?
3. Describe the project you will be conducting and how your App will address the needs.
4. Describe the network infrastructure the App may be based on.
5. Identify and describe the software to be used in your App.
6. Identify the database to be used in your App and provide a justification for your choice.
7. Identify and describe the production database setup (i.e. postgres instance).
8. Describe the architecture of your App.
9. Explain the different high-level components (abstractions) in your App.
10. Detail any third party services that your App will use.
11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).
12. Discuss the database relations to be implemented.
13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.
14. Provide your database schema design.
15. Provide User stories for your App.
16. Provide Wireframes for your App.
17. Describe the way tasks are allocated and tracked in your project.
18. Discuss how Agile methodology is being implemented in your project.
19. Provide an overview and description of your Source control process.
20. Provide an overview and description of your Testing process.
21. Discuss and analyse requirements related to information system security.
22. Discuss methods you will use to protect information and data.
23. Research what your legal obligations are in relation to handling user data.
