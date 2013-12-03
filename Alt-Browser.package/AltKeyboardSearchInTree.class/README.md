This command opens a text field and allow for typing on the fly in it, with the underlying tree being used for the search.

Target behavior:
- On every key track down which tree node starts with the prefix and select it.
(take in account full or visible names?)
- On tab or /, complete the current tree node and open it; restart the search from that prefix ?
- On delete, if on prefix, delete prefix entirely and restart a level above.
- On CR, close text entry and select

Use a StringMorphEditor, it has the logic for disappearing and is single line. StringMorphEditor is tied to a StringMorph, so there are a few things which are incorrect; it requires a subclass (or a more abstract superclass, in fact).

Look into how to catch all keys: done (on: #keyStroke send: to:).

Behavior is fairly specific to the way the tree is handled, but should show a nice blueprint about searching with on the fly dialog creation.

StringMorphEditor should have bounds at start, something default.