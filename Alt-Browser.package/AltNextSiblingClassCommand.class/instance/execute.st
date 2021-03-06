execution
execute
	| found aClass aClassIndex siblings nextClass |
	aClass := requestor selectedNode item item.
	siblings := aClass superclass subclasses.
	aClassIndex := siblings indexOf: aClass.
	nextClass := siblings at: ((aClassIndex rem: siblings size) + 1).
	AltBrowser rootItems
		do: [ :each | 
			| res |
			(res := each findClass: nextClass) notNil
				ifTrue: [ found := res ] ].
	requestor selectPathForAbstractItem: found