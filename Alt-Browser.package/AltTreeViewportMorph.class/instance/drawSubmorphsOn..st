drawing
drawSubmorphsOn: canvas
	"Move the submorph handling code in its place?"

	| x y rowsToDisplay rowSubviews selectionIndex dropIndex |
	self bounds ifNil: [ ^ self ].	"Nothing to show yet"
	self owner ifNil: [ ^ self ].
	x := self left + 2 - self leftOffset.
	y := self top.
	selectionIndex := self owner selectedRowIndex.
	dropIndex := self owner dropIndex.
	self updateItemsOrRows
		ifTrue:
			[ rowsToDisplay := self exposedItems.
			rowSubviews := OrderedCollection new: rowsToDisplay size + 1.
			rowsToDisplay
				keysAndValuesDo:
					[ :rowIndex :row | 
					row topLeft: x @ y.
					y := y + row height + 2.
					selectionIndex = rowIndex
						ifTrue: [ row color: self owner selectionColor ]
						ifFalse: [ row color: Color transparent ].
					dropIndex = rowIndex
						ifTrue: [ row highlightForDrop: true ]
						ifFalse: [ row highlightForDrop: false ].
					rowSubviews add: row ].
			submorphs := rowSubviews asArray ].
	super drawSubmorphsOn: canvas.
	needsRefreshRows := false