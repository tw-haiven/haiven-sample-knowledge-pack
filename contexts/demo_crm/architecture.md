---
key: architecture
title: Architecture
---

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
