private-scrollbars
recalculateVerticalScrollBarVisibilityIfHidden
	"Switch on or off the vertical scroll bar. Expect a resize of the container?"

	self container calculateExactVisibleRows >= model size
		ifTrue:
			[ (self submorphs includes: self verticalScrollBar)
				ifTrue:
					[ self verticalScrollBar value: 0.
					self verticalScrollBarValue: 0.
					self removeMorph: self verticalScrollBar ].
			^ true ]
		ifFalse:
			[ (self submorphs includes: self verticalScrollBar)
				ifFalse:
					[ self resizeVerticalScrollBar.
					self addMorph: self verticalScrollBar ].
			^ false ]