import sublime, sublime_plugin

class GetCursorPosCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        for region in self.view.sel():
            cursor_pos = region.b
            print(self.view.rowcol(cursor_pos))