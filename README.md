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
1. Ensure you are in the application's root directory and enter the following command to run the application within your browswer: `rails server`

### Network Infrastructure
<!-- 4. Describe the network infrastructure the App may be based on.
https://devcenter.heroku.com/articles/http-routing -->

Jack

### Third Party Software and Services
<!-- 5. Identify and describe the software to be used in your App.
10. Detail any third party services that your App will use.
(20 points) Identify and describe any third party software and services used by your app. 
   - Include services used to deploy your app, to upload content through your app, or to accept payment through your app (10 points)
   - List all gems used and their purpose (10 points) -->

Tony
- Cloudinary
- Stripe
- Gems

### Database

#### Database Selection
<!-- 6. Identify the database to be used in your App and provide a justification for your choice. -->

Jack
- Write about pros and cons of PostgreSQL as compared to other SQL database systems

#### Production Database Setup
<!-- 7. Identify and describe the production database setup (i.e. postgres instance). -->

Jack

## Design Documentation

### Design Process

### Arhitecture and High-Level Design
<!-- 8. Describe the architecture of your App.
9. Explain the different high-level components (abstractions) in your App.
(20 points) Describe the high level components of your app and how they work together.
Include the following:
-A diagram showing the high level components, how the user interacts with those components, and how they interact with each other (10 points)
-A brief description of each high level component (10 points) -->

Jack / Natalie

### Data Structure of Marketplace Apps
<!-- 11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb). -->

Tony / Natalie

### User Stories
    US1 - As a User I can Post an Advert for my chosen book.
    US2 - As a User I can search for a specfic book.
    US3 - As a User I can view a list of books availbe for sale.
    US4 - As a User I can order a book. 
    US5 - As a User I can add photos to my adverts.
    US6 - As a Seller I can delete my Adverts

### Unified Modeling Language (UML) Diagram
![alt text](image.jpg)

Natalie

### Wireframes
<!-- 16. Provide Wireframes for your App. -->
![alt text](image.jpg)

Natalie

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
![alt text](image.jpg)

### Agile Methodology
<!-- 18. Discuss how Agile methodology is being implemented in your project. -->

Natalie

### Source Control
<!-- 19. Provide an overview and description of your Source control process. -->

Tony

### Testing Process
<!-- 20. Provide an overview and description of your Testing process. -->

Tony

## Information Security and User Data

### Information System Security Requirements
<!-- 21. Discuss and analyse requirements related to information system security.
(30 points) Discuss information security requirements and discuss what you will do to address those requirements, or would do in a future release of the application (beyond MVP) -->

Jack

### Methods to Protect Information and Data
<!-- 22. Discuss methods you will use to protect information and data.
(20 points) Discuss requirement for information security and how your project addresses them (for example, using devise for authentication/authorization). For top points, discuss other options to protect data, benefits and tradeoffs, and why you chose what you did in your project. -->

Jack

### Legal Obligations for Data Protection
<!-- 23. Research what your legal obligations are in relation to handling user data.
(10 points) Research legal obligations for data protection and discuss. One place to look is GDPR requirements (there is a unit in canvas) -->

Tony

## Database design
<!-- (90 points) Discuss design of the database and data structures in the README 
Include: -->

### Relational Database Design
<!-- 1 (20 points) Understanding of relational database design (https://medium.com/@kimtnguyen/relational-database-schema-design-overview-70e447ff66f9)
   - Provide a description of relational databases and what is important in relational database design (10 points)
   - Discuss how your design takes into account relational database design practices, including normalisation (10 points) -->

- Natalie

### Database Entity Relationship Diagram
<!-- 14. Provide your database schema design.
2 (20 points) ERD
   - Complete ERD. Make sure it accurately reflects your design (10 points)
   - Demonstrate normalisation in your ERD (10 points) -->

Natalie

### Database Entities
<!-- 3 (20 points) Description of database entities
   - Define the entities in your ERD and how they are used in your app (10 points)
   - Describe the fields of the entities in the ERD, including data types, default values, required vs. optional, primary keys, and reasons for choices made on these items (10 points) -->

Natalie

### Database Relations
<!-- 12. Discuss the database relations to be implemented.
4 (20 points) Relationships
   - Identify relationships used including the type of relationships, as shown in the ERD (10 points)
   - Discuss why the chosen relationships are used including any alternatives considered (10 points) -->

Tony

### Database Models
<!-- 13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.
5 (10 points) Model discussion
   - Describe how models will implement the relationships given in the database design with ActiveRecord associations" -->

Jack

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
