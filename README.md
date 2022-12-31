# Notification-Library

Fiest, You will need to load the library

```lua
NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Notification-Library/main/Library.lua"))()
```
Then you will be able to send a notification using the function SendNotification

Themes Are : 
```
Success
Warning
Error
Info
```
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
#Showcase Of This System :
<picture>
  <source media="(prefers-color-scheme: light)" srcset="[https://user-images.githubusercontent.com/25423296/163456779-a8556205-d0a5-45e2-ac17-42d089e3c3f8.png](https://streamable.com/xyszc1)">
</picture>
