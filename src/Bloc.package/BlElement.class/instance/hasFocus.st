focus testing
hasFocus
	"Return true if I have or contain a focused element, false otherwise"
	<return: #Boolean>

	^ self isFocused or: [
		self children anySatisfy: [ :anElement | anElement hasFocus ] ]