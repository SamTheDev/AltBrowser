This class is the abstract class of all nodes used by the AltBrowser. Those nodes are abstract and are supposed to be used inside (wrapped) an AltTreeNodeModel.

It implements the following APIs and/or patterns :
- Wrapping over an abstract reference (code)
- Tree with a parentNode
- Children via a contents variable
- GUI direct actions:
	- accept (from the editor)
	- doubleClick (on the tree node)
	- drag and drop (on the tree node)
- menu and shortcuts commands
	- for both the tree view and the editor