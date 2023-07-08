
# Property Rental Application

This is a Property Rental Application developed using PL/SQL queries. The application facilitates the process of renting properties between owners and tenants. It allows users to register as owners or tenants, add properties, manage rental details, and perform various operations related to property rentals.

## Table of Contents
- [Introduction](#introduction)
- [Domain Description](#domain-description)
- [Functionality](#functionality)
- [Installation](#installation)
- [Usage](#usage)

## Introduction

The Property Rental Application (PRA) is designed to help a Property Rental Agency mediate between property owners and tenants across multiple cities in India. The application allows owners to register their properties for rent and tenants to search and rent available properties. The application is managed by a DBA and has additional user roles such as managers with specific privileges.

## Domain Description

The Property Rental Agency scenario involves the following entities and relationships:

- Users: The application users include owners, tenants, DBA, and managers. Users have unique IDs, personal information, and login credentials.
- Properties: Properties can be residential or commercial, each with a unique ID. Each property is associated with an owner and has details such as address, area, number of bedrooms (for residential properties), and other facilities.
- Rentals: Rental details are captured when a property is rented to a tenant. Information includes rent per month, start date, end date, annual rent hike percentage, agency commission, and other relevant data.

## Functionality

The Property Rental Application provides the following functionality:

1. User Management:
   - DBA can add, delete, and modify user accounts.
   - Managers can add, modify, and delete property records.
   - Owners can add, delete, and update their property records.

2. Property Rentals:
   - Admin and managers can add rental details after a property is rented by a tenant.
   - Rent history for each property can be generated as a report.

3. Property Search:
   - Users can search for available properties for rent based on city, locality, and price range.

4. Property Status:
   - Users can check the status of a property using its unique ID.

## Installation

To install and set up the Property Rental Application, follow these steps:

1. Clone the repository from GitHub: `git clone https://github.com/your/repository.git`
2. Install the required dependencies and libraries.
3. Set up the database schema and tables using the provided SQL scripts.
4. Configure the application settings and database connection.
5. Build and run the application.

## Usage

Once the application is installed and running, users can perform the following actions:

1. Users can register as owners or tenants.
2. Owners can add their properties for rent and manage their property records.
3. Tenants can search for available properties and submit rental applications.
4. Admin and managers can manage property rental details.
5. Users can generate reports on rent history and property availability.

