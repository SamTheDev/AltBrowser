updating
aClassRemoved: anEvent
	"Note: Just say if we match. This will work even if we are an extension. But what happens if we are an extension on the class side?"

	^ anEvent classRemoved == self itemClass or: [ self itemClass isMeta and: [ anEvent classRemoved class == code ] ]