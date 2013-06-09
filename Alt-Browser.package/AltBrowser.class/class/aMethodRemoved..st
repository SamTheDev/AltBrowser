updating
aMethodRemoved: anEvent
	"Ok, a method was removed. Don't forget the method may be in multiple places."

	"Change this code; search for places where the method is visible (extensions and protocols)."

	"Bug: when removing a method, the method having already been removed from the system makes the search for the parent fail... :palm:"

	| mCNodes |
	mCNodes := OrderedCollection new.
	self rootItems
		do: [ :root | 
			| res |
			res := root findAllClass: anEvent methodClass.
			res notNil
				ifTrue: [ mCNodes addAll: res ] ].
	mCNodes
		do: [ :each | 
			| pNode |
			pNode := each findMethodCategory: anEvent protocol in: anEvent methodClass.
			(anEvent protocol = #'as yet unclassified' and: [ pNode isNil ])
				ifTrue: [ self aNodeToRebuilt: each ]
				ifFalse: [ self aNodeToRebuilt: pNode ] ]