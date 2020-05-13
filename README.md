# README
Names: Alejandra Izquierdo. Santiago Figueroa


Usernames: alejandraIzquierdo. SantiagoFigueroaMc

Ruby v 2.6.5

1\. Get all events created by certain user. 

2\. Get all users belonging to an organization.

3\. Get all public events in an organization.

4\. Get all private events in an organization.

5\. Get all guests that have been invited to a certain event.

6\. Get all guests that have voted for a date option in a certain event.

7\. Get all comments written by users on a specific event.

8\. Get all comments written by a specific user on all events.

9\. Get all users with administrative privileges in an organization.

10\. Get all users with administrative privileges in the system.

11\. Users should have a unique username and/or email address, so we will attempt to create two users with the same 
unique attribute.

This is done by restricting the field with validates :uniquenes=true

12\. E-mail addresses should be well-formed. We will attempt to try to update a model containing an ill-formatted email 
address.

This is checked in the model with a format and a regex.

13\. Explain what should happen model-wise if an event is deleted and guests have already cast votes. Explain how your 
model layer is well-behaved in this scenario.

14\. Explain what should happen model-wise if an organization is deleted and events have been already created within 
the organization. Explain how your model layer is well-behaved in this scenario.

15\. Explain what should happen model-wise if a user is deleted and the user has already created organizations, events 
and/or comments. Explain how your model layer is well-behaved in this scenario.

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
