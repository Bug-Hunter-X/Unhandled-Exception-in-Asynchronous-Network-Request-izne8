# Unhandled Exception in Asynchronous Network Request

This repository demonstrates a common error in Dart: neglecting to robustly handle exceptions that can occur during asynchronous operations, particularly network requests.  The provided `bug.dart` file shows an incomplete `try-catch` block.  The `bugSolution.dart` file offers an improved approach.

## Problem

The `fetchData` function uses `http.get` to fetch data from a remote API.  The initial implementation only prints an error message if something goes wrong.  There's no handling for non-JSON responses or other potential exceptions.  This can lead to application crashes or unexpected behavior.

## Solution

The solution provides a more comprehensive error handling strategy. It checks the response status code and handles exceptions more gracefully. It also includes logging which is useful for debugging.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`.  If the API is unreachable or returns an error, you'll see a simple error message, but the app continues to run.
3. Run `bugSolution.dart` to see how the improved exception handling works.