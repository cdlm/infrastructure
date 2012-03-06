Author fullName: 'Damien Pollet'.

" Close workspaces "
World submorphs
    select: [:each | (each isKindOf: SystemWindow) and: [each model isKindOf: Workspace] ]
    thenDo: [:each | each delete ].

" UI behavior settings "
Debugger alwaysOpenFullDebugger: true.
TextEditorDialogWindow autoAccept: true.

" Font & appearance settings "
[ FreeTypeSystemSettings loadFt2Library: true ]
  onDNU: #loadFt2Library:
  do: [ :e| "ignore it" ].
FreeTypeFontProvider current updateFromSystem.

"StandardFonts defaultFont: (LogicalFont familyName: 'Lucida Grande' pointSize: 10) forceNotBold."
"GraphicFontSettings resetAllFontToDefault."
StandardFonts codeFont: (LogicalFont familyName: 'Consolas' pointSize: 10).

" Save the image "
FileStream stderr nextPutAll: '  done'; lf.
Smalltalk snapshot: true andQuit: true.

