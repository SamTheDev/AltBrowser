actions
buildTreeMenu: aMenu on: aTarget with: aRequestor
	| t |
	t := false.
	((self pragmas: #treeAreaCommand from: self class to: AlTreeNode) sorted: [ :a :b | a selector < b selector ])
		do: [ :e | 
			t
				ifTrue: [ aMenu addLine ]
				ifFalse: [ t := true ].
			(self perform: e selector) do: [ :c | (c asClass on: aTarget for: aRequestor) addItemToMenu: aMenu ] ]