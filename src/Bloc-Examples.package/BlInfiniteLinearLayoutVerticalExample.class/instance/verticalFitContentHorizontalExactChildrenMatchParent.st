examples
verticalFitContentHorizontalExactChildrenMatchParent
	<gtExample>
	| aContainer aList aListWidth anItemHeight anItemCount chunksAdded |
	
	aListWidth := 200.
	anItemHeight := 50.
	anItemCount := 5.

	aContainer := self container.

	aList := self list.
	aList constraintsDo: [ :c |
		c vertical fitContent.
		c horizontal exact: aListWidth ].
	aList items: anItemCount.
	aList itemConstraintsDo: [ :c |
		c vertical exact: anItemHeight.
		c horizontal matchParent ].

	chunksAdded := 0.
	aList layoutDo: [ :anInfiniteLayout | anInfiniteLayout when: BlInfiniteLinearLayoutChunkAdded do: [ chunksAdded := chunksAdded + 1 ] ].

	aContainer addChild: aList.
	aContainer forceLayout.

	self assert: aList height equals: (anItemCount * anItemHeight).
	self assert: aList width equals: aListWidth.
	self assert: aList childrenCount equals: anItemCount.
	"in case of non exact infinite list, chunks are added twice;
	once during measurement and one more time during layout steps"
	self assert: chunksAdded equals: anItemCount * 2.

	self
		assert: (aList children collect: #extent)
		equals: (anItemCount timesCollect: [ aListWidth @ anItemHeight ]).

	^ aContainer