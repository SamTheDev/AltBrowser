updating
aMethodAdded: anEvent
	"Are we concerned by that event ? Yes if we are the right class and the right method category."

	(anEvent methodClass == self sourceClass and: [ anEvent protocol = self methodCategory ])
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ].
	^ false