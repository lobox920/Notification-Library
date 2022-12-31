# Notification-Library

Fiest, You will need to load the library

```lua
NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/main/Library.lua"))()
```
Then you will be able to send a notification using the function SendNotification

Themes Are : 
> Success
Warning
Error
Info

And you can send Notification using this :
```lua
NotificationLibrary:SendNotification("Info", "I'm a cool message", 3)
--NotificationLibrary:SendNotification(Theme, Message, Duration)
```
Sending an notification with all theme would be this :
```lua
NotificationLibrary:SendNotification("Success", "I'm a cool message", 3)

NotificationLibrary:SendNotification("Warning", "I'm a cool message", 3)

NotificationLibrary:SendNotification("Error", "I'm a cool message", 3)

NotificationLibrary:SendNotification("Info", "I'm a cool message", 3)
```
