# 0x01. NoSQL

This repository contains scripts and Python functions related to MongoDB, a popular NoSQL database. The tasks include creating databases, inserting documents, querying data, and performing various operations on collections.

## Table of Contents

1. [List all databases](#1-list-all-databases)
2. [Create or use a database](#2-create-or-use-a-database)
3. [Insert a document](#3-insert-a-document)
4. [List all documents](#4-list-all-documents)
5. [List documents with a specific name](#5-list-documents-with-a-specific-name)
6. [Count documents](#6-count-documents)
7. [Update documents](#7-update-documents)
8. [Delete documents by match](#8-delete-documents-by-match)
9. [List all documents in Python](#9-list-all-documents-in-python)
10. [Insert a document in Python](#10-insert-a-document-in-python)
11. [Change school topics](#11-change-school-topics)
12. [Find schools by topic](#12-find-schools-by-topic)
13. [Log stats](#13-log-stats)
14. [Regex filter (Advanced)](#14-regex-filter)
15. [Top students (Advanced)](#15-top-students)
16. [Log stats - new version (Advanced)](#16-log-stats-new-version)

---

### 1. List all databases

Script: `list_databases.js`

This script lists all databases in MongoDB.

---

### 2. Create or use a database

Script: `create_or_use_database.js`

This script creates or uses the database named `my_db`.

---

### 3. Insert a document

Script: `insert_document.js`

This script inserts a document into the `school` collection with the attribute `name` set to "Holberton school". The database name is passed as an option to the `mongo` command.

---

### 4. List all documents

Script: `list_all_documents.js`

This script lists all documents in the `school` collection. The database name is passed as an option to the `mongo` command.

---

### 5. List documents with a specific name

Script: `list_documents_by_name.js`

This script lists all documents in the `school` collection where the `name` attribute is "Holberton school". The database name is passed as an option to the `mongo` command.

---

### 6. Count documents

Script: `count_documents.js`

This script displays the number of documents in the `school` collection. The database name is passed as an option to the `mongo` command.

---

### 7. Update documents

Script: `update_documents.js`

This script adds a new attribute `address` with the value "972 Mission street" to all documents in the `school` collection where the `name` attribute is "Holberton school". The database name is passed as an option to the `mongo` command.

---

### 8. Delete documents by match

Script: `delete_documents_by_match.js`

This script deletes all documents in the `school` collection where the `name` attribute is "Holberton school". The database name is passed as an option to the `mongo` command.

---

### 9. List all documents in Python

Function: `list_all(mongo_collection)`

This Python function lists all documents in a given collection. If no documents exist, it returns an empty list. The `mongo_collection` parameter is the pymongo collection object.

---

### 10. Insert a document in Python

Function: `insert_school(mongo_collection, **kwargs)`

This Python function inserts a new document into a collection based on keyword arguments. It returns the new `_id`. The `mongo_collection` parameter is the pymongo collection object.

---

### 11. Change school topics

Function: `update_topics(mongo_collection, name, topics)`

This Python function changes all topics of a school document based on the school name. The `mongo_collection` parameter is the pymongo collection object. The `name` parameter is the school name to update, and the `topics` parameter is a list of topics.

---

### 12. Find schools by topic

Function: `schools_by_topic(mongo_collection, topic)`

This Python function returns a list of schools that cover a specific topic. The `mongo_collection` parameter is the pymongo collection object, and the `topic` parameter is the topic to search for.

---

### 13. Log stats

Script: `log_stats.py`

This Python script provides statistics about Nginx logs stored in MongoDB. It displays the total number of logs and the number of logs for each HTTP method (GET, POST, PUT, PATCH, DELETE). Additionally, it shows the count of logs with the method `