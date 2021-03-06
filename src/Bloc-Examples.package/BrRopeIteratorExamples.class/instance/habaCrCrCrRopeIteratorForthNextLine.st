examples - haba,cr,cr,cr
habaCrCrCrRopeIteratorForthNextLine
	<gtExample>
	| nextLine anIterator |
	
	anIterator := self habaCrCrCrRopeIteratorThirdNextLine.
	
	self assert: anIterator hasNext.
	self assert: anIterator position equals: 3 + self haba size.
	
	nextLine := anIterator nextLine.
	
	self assert: nextLine collection isEmpty.
	self assert: anIterator position equals: 4 + self haba size.
	self assert: anIterator hasNext not.
	
	^ anIterator