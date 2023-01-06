# pub-sub-queue

Functional requirements of this system have been described below.

- Create your own queue that will hold messages in the form of JSON(Standard library with queue implementation were not allowed).
- There can be more than one queue at any given point of time.
- There will be one publisher that can generate messages to a queue.
- There are multiple subscribers that will listen to queues for messages.
- Subscribers should not be tightly coupled to the system and can be added or removed at runtime.
- Subscriber can consume the messages in batches if the queue has more than one message and it should be configurable.
- There must be a retry mechanism for handling error cases when some exception occurs in listening/processing a message, that must be retried.
