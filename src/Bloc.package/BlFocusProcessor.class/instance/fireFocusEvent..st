event firing
fireFocusEvent: anElement
	"Send focus event that doesn't bubble, perform simple direct dispatch to the target.
	Note: when dispatching events there is no need to attach target element to the event - it is anyway dispatched
	in the context of the target (bubbling does not happen)"
	self
		dispatchEvent: self newFocusEvent
		target: anElement