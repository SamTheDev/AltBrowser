execution
execute
	"Remove the package category."

	| item |
	item := requestor selectedNode item.
	item parentNode notNil
		ifTrue: [ item parentNode removeChildItem: item ]
		ifFalse: [ AltBrowser rootItems remove: item ].
	AltBrowser announcer announce: (AltNodeRemoved node: item)