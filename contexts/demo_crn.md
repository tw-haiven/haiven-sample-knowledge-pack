---
key: context
title: Demo CRN
---

You're part of a team building a web application that will allow salespeople in a company to organise their work and document their customer relationships.

Users: Sales Managers who are looking after a portfolio of restaurants/hotels/caterers/traders, looking to build a personal relationship and increase the revenue their respective customers are generating.

Cross-functional requirements:
- It needs to work on mobile phones and with unstable internet connection (aka “offline”)
- Needs to support internationalisation and localisation

Domain terminology:
- Contact: a visit of a customer, or a phone call, or an email. A sales manager usually takes notes of each contact
- Activity: synonym for "Contact"

The application consists of a web frontend and a backend with HTTP RESTful APIs, and has multiple integration points with other systems

# Core technology stack
* Frontend: JavaScript, ReactJS, Gulp, Browserify, Jest
* Backend: Java, Gradle, Guice, Jersey
* Persistence: Postgres, Solr for search indexing
* Deployment: Docker, Kubernetes

# Integration points with other systems
INTEGRATION: Existing CRM interface: customer data and activities, flat file exports in CSV, to provide master data for the Sales Force Application
* Customer data (export)
* Contacts data (export)
* Address data (export)
* Activities data (export and import) > visits, calls, …

INTEGRATION: Employee Active Directory login, to integrate for login functionality

Tech stack: typescript, react, redux, konvajs and react-konva. And vitest, react testing library for model, view model and related hooks, cypress component tests for view.

All code should be written in the tech stack mentioned above. Requirements should be implemented as React components in the MVVM architecture pattern.

2 types of view models:
* Shared view model. View model that represents states shared among local and remote users.
* Local view model. View model that represents states only applicable to local user

Common implementation strategies:
* Shared view model is implemented as Redux store slice. Tested in vitest.
* Local view model is implemented as React component props or states(by useState hook), unless for global local view model, which is also implemented as Redux store slice. Tested in vitest.
* Hooks are used as the major view helpers to retrieve data from shared view model. For most the case, it will use ‘createSelector’ and ‘useSelector’ for memorization. Tested in vitest and react testing library.
* Don’t dispatch action directly to change the states of shared view model, use an encapsulated view model interface instead. In the interface, each redux action is mapped to a method. Tested in vitest.
* View consists of konva shapes, implemented as React component via react-konva. Tested in cypress component tests

Patterns to be followed when testing the component:
* When writing a test, use describe instead of test
* Data-driven tests are preferred.
* When testing the view component, use a fake view model via the view model interface
