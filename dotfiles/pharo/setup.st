Author fullName: 'Damien Pollet'.

" UI behavior settings "
World submorphs do: [:each | each delete ].
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

