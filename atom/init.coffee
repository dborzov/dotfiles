# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

atom.commands.add 'atom-text-editor', 'editor:dimonize', ->
  return unless editor = atom.workspace.getActiveTextEditor()
  return unless point = editor.getCursorBufferPosition()
  return unless b = editor.getBuffer()
  point.column = b.lineLengthForRow(point.row)
  text = " # ★★★"
  b.insert(point, "#{text}")

# abra cadabra
