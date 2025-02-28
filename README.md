<img src="https://raw.githubusercontent.com/anniryynanen/papershot/main/papershot-80x80.png" width="80"/>

Don't want to think about screenshots for every jam game? Papershot to the rescue!

Papershot is a node that takes screenshots of its viewport. Screenshots can be taken either by calling `Papershot.take_screenshot()`, or by configuring a shortcut. They're saved with filenames such as "Screenshot 2024-07-26 17-46-21-149.jpg".

If you use Papershot and would like more features or configuration options, open an issue or contact me.

Configuration options:
- `folder`: Folder to save screenshots in
- `shortcut`: Shortcut for taking a screenshot
- `file_format`: Format to save screenshots in, JPG or PNG

Signals:
- `screenshot_saved(image, path)`
- `io_error(error, path)`
