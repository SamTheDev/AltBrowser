private-scrollbars
rowIndexToVerticalScrollBarValue: aRowIndex
	| numberOfRows |
	numberOfRows := self container maxShowIndex.
	numberOfRows = 0
		ifTrue: [ ^ 0.0 ].
	^ ((aRowIndex / numberOfRows) asFloat max: 0.0) min: 1.0