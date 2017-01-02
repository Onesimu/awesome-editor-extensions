# atom.commands.dispatch(atom.views.getView(atom.workspace), 'tree-view:toggle')

atom.setFullScreen(true)
atom.commands.dispatch(atom.views.getView(atom.workspace), 'nuclide-home:toggle')

atom.commands.add 'atom-text-editor', 'markdown:paste-as-link', ->
  return unless editor = atom.workspace.getActiveTextEditor()
  selection = editor.getLastSelection()
  clipboardText = atom.clipboard.read()
  selection.insertText("[#{selection.getText()}](#{clipboardText})")
