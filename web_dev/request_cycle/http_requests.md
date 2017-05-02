# 9.1 / Release 0 - Find The Thing

### What are some common HTTP status codes?

**1xx: Informational (codes that start with a 1)**

Informational response codes. Rarely seen.

  * **100 -- Continue** : Everything is OK so far, client should proceed with request or ignore if already finished.

---

**2xx: Success (codes that start with a 2)**

Indicates request was received, understood, accepted, processed successfully.

  * **200 -- OK** : Standard success response. Specific meaning depends on the HTTP method: GET/HEAD/POST/TRACE
  * **201 -- Created** : A new resource has been created.
  * **202 -- Accepted** : Request accepted, but processing not completed.

---

**3xx: Redirection (codes that start with a 3)**

Redirection. Client must take additional action to complete the request.

  * **300 -- Multiple Choices** : E.g. client can choose from 3 resources returned by server.
  * **301 -- Moved Permanently** : All requests for this resource should now be directed to specified Resource.

---

**4xx: Client errors (codes that start with a 4)**

Intended for situations in which the **client** seems to have erred. (E.g. Requesting a page that no longer exists).

  * **400 -- Bad Request** : E.g. Server can't process due to apparent client error, like malformed syntax, invalid request message, too large.
  * **401 -- Unauthorized** : When authentication is needed and none is given.
  * **403 -- Forbidden** : Valid request, but server is refusing action. Commonly a permissions issue.
  * **404 -- Unauthorized** : Requested resource not found.

---

**5xx: Server errors (codes that start with a 5)**

Server is aware that it has encountered an error or otherwise incapable of performing the request.

  * **500 -- Internal Server Error** : Generic error message, given when an unexpected condition was encountered and no other information is available.
  * **503 -- Service Unavailable** : The web server is unavailable due to some circumstance e.g. it is restarting or in the middle of doing something (like down for maintenance).
  * **504 -- Gateway Timeout** : Indicates a proxy server timed out when trying to communicate with a secondary server.

---

### What is the difference between a GET request and a POST request? When might each be used?

The basic difference is in what they are typically used for:
  * **GET** Requests data from a specified resource. **For retrieving data.**
  * **POST** Submits data to be processed to a specified resource. ** For writing data.**

More detail:
  * **Both** convey data to the server.

**GET**
  * Default method for forms.
  * Data is sent via the URL, meaning there are restrictions on length of the data sent.
  * Not as secure / does not encrypt information.
  * Can be cached.

**POST**
  * Data not encrypted, but is hidden from view.
  * Data sent in separate header file (vs in the URL).
  * NOT cached.
  * No restriction on data type.

---

### What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

Cookies are small pieces of data sent by the server and saved in the client in order to manage stateful information, primarily: 
  * Session management (e.g. user login, shopping carts).
  * User preferences.
  * Tracking (e.g. analytics).

 When a HTTP requests is received, the server can optionally set a cookie by sending a Set-Cookie header with the response. From that point on, the cookie's value is sent alongside HTTP requests that are made to the same server. 