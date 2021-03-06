examples - monotone selection
monotoneSelect_from_1_to_1
	<gtExample>
	| aMonotoneSelection |
	
	aMonotoneSelection := self monotoneSelection from: 1 to: 1.
	
	self assert: aMonotoneSelection from equals: 1.
	self assert: aMonotoneSelection to equals: 1.
	self assert: aMonotoneSelection displayString equals: '[1,1]'.
	self assert: aMonotoneSelection printString equals: '[1,1]'.
	self assert: aMonotoneSelection gtDisplayString equals: '[1,1]'.
	self assert: aMonotoneSelection isNotEmpty.
	self assert: aMonotoneSelection isEmpty not.
	
	self assert: aMonotoneSelection allSelections equals: { BlMonotoneSelection from: 1 to: 1 }.
	
	^ aMonotoneSelection