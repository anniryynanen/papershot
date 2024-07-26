extends Node2D
## A node that takes screenshots of its viewport.

signal screenshot_saved(image: Image, path: String)
signal io_error(error: Error, path: String)

## Folder to save screenshots in.
@export var folder: String:
    set(value):
        folder = value
        if not folder.ends_with("/"):
            folder += "/"

## Shortcut for taking a screenshot.
@export var shortcut: Shortcut


func _input(event: InputEvent) -> void:
    if not shortcut:
        return

    for shortcut_event: InputEvent in shortcut.events:
        if shortcut_event.is_match(event):
            get_viewport().set_input_as_handled()

            if event.is_pressed() and not event.is_echo():
                take_screenshot()


func take_screenshot() -> Error:
    var path: String = _get_path()
    var image: Image = get_viewport().get_texture().get_image()

    var err: Error = image.save_jpg(path, 0.9)
    if err:
        io_error.emit(err, path)
    else:
        screenshot_saved.emit(image, path)
    return err


func _get_path() -> String:
    var datetime: String = Time.get_datetime_string_from_system(false, true).replace(":", "-")
    var millis: String = str(roundi(fmod(Time.get_unix_time_from_system(), 1.0) * 1000.0))
    return folder + "Screenshot " + datetime + "-" + millis + ".jpg"
