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
- Ruby and .erb
- Ruby on Rails
- PostgreSQL
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

<!-- Tony
- Cloudinary
- Stripe
- Gems -->

Bookly makes use of several third party software and services for varying purposes.

#### Cloudinary
Cloudinary provides a file upload and storage service whereby users can upload images and videos to a secure cloud storage system. By employing Cloudinary, the development team avoids having to build and maintain any infrastructure.

Databases excel at storing small pieces of data in significant numbers but are not optimised to hold large chunks of data, such as media files. While it is entirely possible to store media files in a local folder when working locally, the files in said local folder cannot be uploaded when services such as Heroku are employed for deployment since they are not designed to store files long term.

In configuring Bookly to integrate with Cloudinary's service, two gems were added to the application which include `cloudinary` and `activestorage-cloudinary-service`. Subsequently, Cloudinary was configured within `storage.yml` where API keys were set. Cloudinary was then set as the upload service of the application in `config/environments/production.rb`.

#### Stripe
Stripe is a complete payments platform that was integrated into Bookly in order to accept payments online via credit card. By using this third party platform, the development team can offer users unmatched convenience with security, features that are arguably essential to a marketplace application.

It is an industry standard that credit card details ought not to be stored on our servers as Bookly is not compliant with the Payment Card Industry Data Security Standard, much like many other marketplaces who also use third party payment platforms.

Thus, Stripe was added to Bookly in the form of a Ruby gem and a checkout session to be placed in a controller. Following the successful completion of payment, Stripe will redirect the users away from that third party service to a page on Bookly. This provides for a seamless transition between Bookly and Stripe that improves usability.

#### Gems
Aside from Cloudinary and Stripe as mentioned above, other gems were used for the development of Bookly.

##### RSpec
RSpec is a Domain Specific Language testing tool used to test Ruby code. It formed a large part of the testing process which is discussed in greater detail under **Testing Process**.

##### GoogleBooks
The GoogleBooks gem forms an essential part of Bookly's back end code where it acts as an intermediary between the Rails application and Google Books' servers. The gem queries the Google API to search for publications in the Google Books repository, having found a match it will assist the application in acquiring information on a specific book and hold a copy of that data in Bookly's own database within the `books` table.

##### Devise
Devise is a flexible authentication solution for Rails based on Warden. It was adopted as the authentication system for Bookly since it is relatively easy to integrate. The gem hashes and stores passwords in the database to validate the authenticity of a user while signing in. It is generally advisable not to store passwords in plaintext. With Devise, the development team can easily store encrypted credentials instead which further secures user data should a breach of security occur.

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

### Unified Modeling Language (UML) Diagram
![alt text](image.jpg)

Natalie

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

### Communication
The development team constantly communicated with each other every day on Slack.

![Slack Chat](docs/communication.gif)

### Agile Methodology
<!-- 18. Discuss how Agile methodology is being implemented in your project. -->

Natalie

### Source Control
<!-- 19. Provide an overview and description of your Source control process. -->

Source control proved to be one of the more challenging aspects during the development of Bookly. The group members all lacked experience in working with teams of more than two, thus the early stages of planning largely consisted of establishing a consistent workflow that all members had to abide by.

The consensus largely consisted of opinions favouring the Feature Branch Workflow. As the workflow used by many companies for in-house development, the Feature Branch Workflow favours the idea that all feature development take place in a feature branch instead of the `master` branch. This workflow ensures that the main codebase remains undisturbed while multiple developers are working on a particular feature.

Basic source control process as followed by the team:
1. Having ensured that the master branch is up to date with `git pull origin master`, create and checkout to a new branch with `git checkout -b <branch>`;
2. After completing changes of the branch, add and commit those changes on the local repository, then push them to the branch with `git push origin <branch>`;
3. The author of those changes create a pull request on GitHub, requesting a review by the other two developers;
4. Once reviewed by the other developers, one of those parties will then merge those changes with `master`.

### Testing Process
<!-- 20. Provide an overview and description of your Testing process. -->

The development team of Bookly underwent a thorough testing process that constantly ensured the quality and integrity of the application remain intact. Testing consisted of both manual testing and unit testing.

#### Manual Testing
The development team executed manual test cases to discover bugs in the Rails application. Manual testing is a necessity as it allows developers to understand the feasibility of automated testing. In the case of Bookly, the developers continually tested each component of the application as they were being created, whether it be the controllers, models or views. A record of the manual testing process can be found below.

![Manual Testing](docs/manual_testing.png "Manual Testing Spreadsheet")

#### Unit Testing
Unit testing consists of testing individual components of the application but differs from manual testing in that it is often automated. RSpec, the behaviour-driven development framework, was used for this project to ensure that all components matched a consistent design as defined in the test files. The output of said automated tests can be found below.

```ruby

===================================
Tue 30 Jul 23:20:15 AEST 2019
===================================


Advert
  creates new adverts with correct fields

Book
  creates new questions with correct fields

User
  creates a new user with correct fields

BooksController
  routing
    routes to #index
    routes to #new
    routes to #show
    routes to #edit
    routes to #create
    routes to #update via PUT
    routes to #update via PATCH
    routes to #destroy

Finished in 0.07638 seconds (files took 0.84083 seconds to load)
11 examples, 0 failures



===================================
Wed 31 Jul 11:12:23 AEST 2019
===================================


BooksController
  GET #index
    returns a success response
  GET #show
    returns a success response
  GET #new
    returns a success response
  POST #create
    with valid params
      creates a new Book

Advert
  creates new adverts with correct fields

Book
  creates new books with correct fields

User
  creates new adverts with correct fields

Books
  GET /books
    works!

BooksController
  routing
    routes to #index
    routes to #new
    routes to #show
    routes to #edit
    routes to #create
    routes to #update via PUT
    routes to #update via PATCH
    routes to #destroy

books/index
  renders a list of books

books/new
  renders new book form

books/show
  renders attributes in <p>

Finished in 1.91 seconds (files took 0.87056 seconds to load)
19 examples, 0 failures



===================================
Mon 5 Aug 15:59:30 AEST 2019
===================================


AdvertsController
  GET #index
    returns a success response
  GET #show
    returns a success response
  GET #new
    returns a success response
  POST #create
    with valid params
      creates a new Advert
      redirects to the created advert
    with invalid params
      returns a success response
  DELETE #destroy
    destroys the requested advert
    redirects to the adverts list

BooksController
  GET #index
    returns a success response
  GET #show
    returns a success response
  GET #new
    returns a success response
  POST #create
    with valid params
      creates a new Book
      redirects to the created book
    with invalid params
      returns a success response

Advert
  creates new adverts with correct fields

Book
  creates new books with correct fields

User
  creates new adverts with correct fields

Adverts
  GET /adverts
    works!

Books
  GET /books
    works!

AdvertsController
  routing
    routes to #index
    routes to #new
    routes to #show
    routes to #edit
    routes to #create
    routes to #update via PUT
    routes to #update via PATCH
    routes to #destroy

BooksController
  routing
    routes to #index
    routes to #new
    routes to #show
    routes to #edit
    routes to #create
    routes to #update via PUT
    routes to #update via PATCH
    routes to #destroy

books/index
  renders a list of books

books/new
  renders new book form

books/show
  renders attributes in <p>

Finished in 2.8 seconds (files took 0.84801 seconds to load)
38 examples, 0 failures



===================================
Mon 5 Aug 22:06:24 AEST 2019
===================================


AdvertsController
  GET #index
    returns a success response
  GET #show
    returns a success response
  GET #new
    returns a success response
  POST #create
    with valid params
      creates a new Advert
      redirects to the created advert
    with invalid params
      returns a success response
  DELETE #destroy
    destroys the requested advert
    redirects to the adverts list

BooksController
  GET #index
    returns a success response
  GET #show
    returns a success response
  GET #new
    returns a success response
  POST #create
    with valid params
      creates a new Book
      redirects to the created book
    with invalid params
      returns a success response

Advert
  creates new adverts with correct fields

Book
  creates new books with correct fields

User
  creates new adverts with correct fields

Adverts
  GET /adverts
    works!

Books
  GET /books
    works!

AdvertsController
  routing
    routes to #index
    routes to #new
    routes to #show
    routes to #edit
    routes to #create
    routes to #update via PUT
    routes to #update via PATCH
    routes to #destroy

BooksController
  routing
    routes to #index
    routes to #new
    routes to #show
    routes to #edit
    routes to #create
    routes to #update via PUT
    routes to #update via PATCH
    routes to #destroy

adverts/index
  renders a list of adverts

adverts/new
  renders new advert form

adverts/show
  renders attributes in <p>

books/index
  renders a list of books

books/new
  renders new book form

books/show
  renders attributes in <p>

Finished in 3.6 seconds (files took 0.84266 seconds to load)
41 examples, 0 failures



===================================
Tue 6 Aug 09:37:14 AEST 2019
===================================


AdvertsController
  GET #index
    returns a success response
  GET #show
    returns a success response
  GET #new
    returns a success response
  POST #create
    with valid params
      creates a new Advert
      redirects to the created advert
    with invalid params
      returns a success response
  DELETE #destroy
    destroys the requested advert
    redirects to the adverts list

BooksController
  GET #index
    returns a success response
  GET #show
    returns a success response
  GET #new
    returns a success response
  POST #create
    with valid params
      creates a new Book
      redirects to the created book
    with invalid params
      returns a success response

Advert
  creates new adverts with correct fields

Book
  creates new books with correct fields

Order
  creates new orders with correct fields

User
  creates new adverts with correct fields

Adverts
  GET /adverts
    works!

Books
  GET /books
    works!

Orders
  GET /orders
    works!

AdvertsController
  routing
    routes to #index
    routes to #new
    routes to #show
    routes to #edit
    routes to #create
    routes to #update via PUT
    routes to #update via PATCH
    routes to #destroy

BooksController
  routing
    routes to #index
    routes to #new
    routes to #show
    routes to #edit
    routes to #create
    routes to #update via PUT
    routes to #update via PATCH
    routes to #destroy

OrdersController
  routing
    routes to #index
    routes to #new
    routes to #show
    routes to #edit
    routes to #create
    routes to #update via PUT
    routes to #update via PATCH
    routes to #destroy

adverts/index
  renders a list of adverts

adverts/new
  renders new advert form

adverts/show
  renders attributes in <p>

books/index
  renders a list of books

books/new
  renders new book form

books/show
  renders attributes in <p>

Finished in 3.66 seconds (files took 0.84835 seconds to load)
51 examples, 0 failures
```

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

#### *Privacy Act 1988*

Australian businesses have been primarily governed by the *Privacy Act 1988* ("the Act") since an amendment was passed in 2000. The Act contains the 13 Australian Privacy Principles (APPs) which are the cornerstone of the privacy protection framework.

As summarised by the [Office of the Australian Information Commissioner](https://oaic.gov.au/privacy/australian-privacy-principles/), the APPs govern the standards, rights and obligations around:
- the collection, use and disclosure of personal information;
- an organisation or agency’s governance and accountability;
- integrity and correction of personal information; and
- the rights of individuals to access their personal information.

##### Our Obligations under Australian Law
Section 16 of the Act establishes than an Australian Privacy Principles (APP) entity must comply with the APP, said entity means an agency or organisation as defined in s 1. The threshold for constituting an 'organisation' lies in the requirement that the individual, body corporate, partnership, unincorporated association or trust have an annual turnover of more than AUD$3,000,000 for a financial year unless an exception within s 6D applies.

A party may constitute an 'organisation' and be held responsible under the APP should it be held accountable to the exceptions within the s 6D as mentioned above. The exceptions include businesses that provide a health service and hold health information, disclose personal information for profit, or are contracted service providers for a Commonwealth contract under s 6D(4).

As Bookly does not have an annual turnover above AUD$3,000,000 nor does it fall within the exceptions of s 6D, it ought not to constitute an 'organisation' under the act or be held responsible under the APP and *Privacy Act 1988*.

#### EU General Data Protection Regulation

The General Data Protection Regulation (GDPR) is a regulation that was approved by the European Union (EU) Parliament in 2016 and became enforceable as of 25 May 2018. The regulation primarily aims to give control to individuals over their personal data and to simplify the regulatory environment for international business.

The GDPR not only applies to organisations located within the EU, but also to organisations outside of the EU. While Bookly operates as a marketplace primarily targeting the Australian market, it is an online marketplace that is unrestricted by geographical boundaries and, in a strict sense, falls within the requirements as set out in the GDPR.

As Bookly can thereotically store personal data about EU citizens, it must comply with data subject rights which concern multiple aspects.

##### Consent
Processing personal data is generally prohibited with the exception that it is expressly allowed by law, or the data subject has consented to such processing. The requirements for the effectiveness of a valid legal consent are contained within Article 7 and further clarified by recital 32 of the GDPR. In essence, consent must be freely given, specific, informed and unambiguous. Regarding "freely given", consent must have been given on a voluntary basis without inappropriate pressure or influence that could have affected that choice. 

##### Breach Notification
Article 33 of the GDPR establishes that, in the case of a personal data breach, the controller must notify the personal data breach to the supervisory authority competent in according with Article 55 not later than 72 hours after having become aware of the breach. There will be an exception to the notification requirement where the breach is unlikely to result in a risk to the rights and freedoms of natural persons.

##### Right of Access
By virtue of Article 15 of the GDPR, a data subject shall have the right to obtain from the controller confirmation as to whether or not personal data concerning the data subject are being processed. If applicable, the controller must also allow access to the personal data.

##### Data Portability
Article 20 of the GDPR concerns the right to data portability. As stated within the article, the data subject shall have the right to receive his or her personal data to which he or she has provided to a controller. Specifically, this personal data must be provided in a structured, commonly used and machine-readable format where the data subject may transmit those data to another controller without hindrance.

##### Privacy by Design
Article 25 of the GDPR requires that controllers implement appropriate technical and organisational measures designed to implement data-protection principles, such as data minimisation, in an effective manner and to integrate necessary safeguards into the processing.

Most relevantly, the controller must implement appropriate technical and organisational measures to ensure that only personal data which are necessary for each specific purpose of the processing are processed.

Bookly, by design, collects a minimal amount of information to process orders. In order to use Bookly, a user must sign up for an account which will request first name, last name, username, email and password. Of these, last name and username are optional fields. Email and password are used for security and authentication purposes while first name is used for personalised prompts and messages. The development team stress that they are committed to open and transparent management of user data, information such as passwords are encrypted and not visible even to the developers themselves.

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
