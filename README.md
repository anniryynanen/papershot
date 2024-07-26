Papershot is a node that takes screenshots of its viewport. Screenshots can be taken either by calling `Papershot.take_screenshot()`, or by configuring a shortcut. They're saved as JPGs with filenames such as "Screenshot 2024-07-26 17-46-21-149.jpg".

This was written so that I don't need to think about it for every Godot game I make. If you use it and would like more features or configuration options, open an issue or contact me and I'll see what I can do.

Configurable options:
- `folder`: Folder to save screenshots in
- `shortcut`: Shortcut for taking a screenshot

The node has two signals: `screenshot_saved(image, path)` and `io_error(error, path)`.
