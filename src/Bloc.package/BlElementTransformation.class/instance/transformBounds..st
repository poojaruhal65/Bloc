bounds
transformBounds: aBounds
	"In-place transform given BlBounds according to my transformation.
	(local to global transformation)"
	<return: #BlBounds>

	^ self matrix transformBounds: aBounds