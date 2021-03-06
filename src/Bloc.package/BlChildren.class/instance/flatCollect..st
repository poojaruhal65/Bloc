children - enumerating
flatCollect: aBlock
	"Evaluate aBlock for each of the receiver's elements and answer the
	list of all resulting values flatten one level. Assumes that aBlock returns some kind
	of collection for each element. Equivalent to the lisp's mapcan"
	<return: #Array>

	^ Array streamContents: [ :aStream |
		self do: [ :anElement | aStream nextPutAll: (aBlock value: anElement) ] ]