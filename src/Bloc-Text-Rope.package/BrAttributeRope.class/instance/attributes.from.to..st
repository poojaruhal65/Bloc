rope - accessing
attributes: anAttributesCollection from: aStart to: anEnd
	| anAttributeRope |
	self assertAccess: aStart.
	self assertAccess: anEnd.

	anAttributesCollection
		ifEmpty: [ ^ self ].
	
	anAttributeRope := (self rope from: aStart to: anEnd)
		attributes: (self class mergeAttributes: self attributes and: anAttributesCollection)
		from: 1
		to: anEnd - aStart + 1.

	(aStart = 1 and: [ anEnd = self size ])
		ifTrue: [ ^ anAttributeRope ].

	aStart = 1 ifTrue: [ 
		^ self class
			concatenate: anAttributeRope
			and: (self from: anEnd + 1 to: self size) ].
	
	anEnd = self size ifTrue: [ 
		^ self class
			concatenate: (self from: 1 to: aStart - 1)
			and: anAttributeRope ].

	^ (self from: 1 to: aStart - 1) append: (anAttributeRope append: (self from: anEnd + 1 to: self size))