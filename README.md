# Notification-Library

Fiest, You will need to load the library

```lua
NotificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMinisterq/Notification-Library/Main/Library.lua"))()
```
Then you will be able to send a notification using the function SendNotification

Modes Are : 
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

https://streamable.com/xyszc1

![image](https://user-images.githubusercontent.com/86623018/210139030-eae98001-c44f-4ed0-aff1-cffb2dbcfc5e.png))

