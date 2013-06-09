querying
buildTreeShortcutsOn: aMorph with: aRequestor
	"This is an attempt at handling shortcuts... Which works, with the help of a custom KMDispatcher."

	(Pragma allNamed: #treeAreaCommand from: self class to: ABAbstractNode)
		do: [ :e | 
			(self perform: e selector)
				do: [ :c | 
					| command |
					command := c on: aRequestor treeModel for: aRequestor.
					command isEnabled
						ifTrue: [ command buildShortcut: aMorph ] ] ]