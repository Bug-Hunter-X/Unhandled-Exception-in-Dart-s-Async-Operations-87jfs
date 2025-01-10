# Unhandled Exception in Dart's Async Operations

This repository demonstrates a common error in Dart asynchronous operations: not properly handling exceptions that occur within `async` functions.  The `bug.dart` file shows an example of such an error, while `bugSolution.dart` provides a corrected version.

**Problem:**

In the initial example (`bug.dart`), an exception is caught within the `try-catch` block.  However, the exception is then simply printed to the console using `print('Error: $e');` and the function completes without further action.  This can lead to unexpected behavior or silent failures in your application.

**Solution:**

The solution (`bugSolution.dart`) addresses this issue by using the `rethrow` keyword. This ensures that the exception is re-thrown and can be handled by the caller of `fetchData()`. This allows for a more robust and reliable error handling mechanism.  The caller can then decide how to handle the exception based on its context.