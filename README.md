# TinyLogger
TinyLogger is a very small logger written in Swift. To log an info message with the default configuration, use `TinyLogger.log.info(msg: "YOUR MESSAGE")`. The available log types are info, warn, trace, error, and fatal. YOu can also specify the `format` and `dateFormat` parameters to change the log format.

# Format info
The default format is `%t [%f/%T]: %m`. In the format, %t is the timestamp. %f is the name of the source file. %T is the log type. %m is the log message. %F is the function log was called from (it is not in the default format but still exists).

# Importing
Just add the TinyLogger package to your project, import it, and start logging.

# Example
```
import Foundation
import TinyLogger // Imports TinyLogger
TinyLogger.log.info(msg: "Hello, World!", format: "%T [%t] %f: %m", dateFormat: "HH:MM:SS.SSSS") // Logs the message
```
