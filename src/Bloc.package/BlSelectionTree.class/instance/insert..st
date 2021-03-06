tree - inserting
insert: aMonotoneTextSelection
	| theNeighbours newFrom newTo |
	
	aMonotoneTextSelection isEmpty
		ifTrue: [ ^ self ].
	
	self hasRoot
		ifFalse: [ root := (BlSelectionNode selection: aMonotoneTextSelection) parent: self. ^ self ].
		
	theNeighbours := self findOverlappingNeighbours: aMonotoneTextSelection.
	theNeighbours
		ifEmpty: [ self root insert: aMonotoneTextSelection. ^ self ].
		
	newFrom := theNeighbours first selection from min: aMonotoneTextSelection from.
	newTo := theNeighbours last selection to max: aMonotoneTextSelection to.
	
	theNeighbours reverseDo: #delete.
	self hasRoot
		ifFalse: [ root := (BlSelectionNode selection: (BlSelection from: newFrom to: newTo)) parent: self. ^ self ].
	self root insert: (BlSelection from: newFrom to: newTo)