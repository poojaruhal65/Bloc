geometry transform
scaleTo: aFactorPoint
	self 
		deprecated: 'Use Transformation Builder instead'
		on: 	'15 October 2017' 
		in: 'Pharo-7.0+alpha.build.171.sha.df95d5fd8faa4c6bfd3537e26d67bb2c37daf99f (32 Bit)'.

	self transform
		origin: (BlAffineTransformationPositionOrigin position: 0@0);
		scaleBy: (BlVector x: aFactorPoint asPoint x y: aFactorPoint asPoint y z: 1);
		apply