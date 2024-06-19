# Redis Basics: Caching and Data Storage

## Project Overview

This project focuses on implementing basic Redis functionality in Python. We'll create a `Cache` class that interacts with a Redis server, store data, retrieve it, and track method calls. Additionally, we'll explore storing lists and implementing an expiring web cache.

## Table of Contents

1. **Installation**
   - Before running the code, ensure you have the following prerequisites:
     - Python 3.x
     - Redis server (installed and running)

2. **Cache Class**
   - The `Cache` class initializes a Redis client and provides methods for storing and retrieving data. Here's how to use it:
     ```python
     from redis import Redis
     import uuid

     class Cache:
         def __init__(self):
             self._redis = Redis()
             self._redis.flushdb()

         def store(self, data) -> str:
             """
             Stores input data in Redis and returns a unique key.
             """
             key = str(uuid.uuid4())
             self._redis.set(key, data)
             return key

         # Implement other methods (get, get_str, get_int) as described in the prompt.
         # ...

     # Example usage:
     cache = Cache()
     key = cache.store("Hello, Redis!")
     print(f"Stored data with key: {key}")
     ```

3. **Reading from Redis**
   - The `get` method retrieves data from Redis. You can optionally provide a conversion function (`fn`) to recover the original type.

4. **Incrementing Values**
   - We'll count method calls using a decorator. The `count_calls` decorator increments a counter for each method call.

5. **Storing Lists**
   - The `call_history` decorator records input parameters and output for a function. It uses Redis lists for storage.

6. **Retrieving Lists**
   - We'll implement a `replay` function to display the history of calls for a specific function.

7. **Expiring Web Cache** (Advanced)
   - In the advanced section, we'll create a `get_page` function that caches web content with a 10-second expiration time.
