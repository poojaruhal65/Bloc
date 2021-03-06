order
privateActionIcon
	"Return the icon for this action"
	| anIcon |
	
	anIcon := (self iconNamed: #traitIcon) collectColors: [ :each | 
		(each mixed: 0.6 with: Color blue) lighter lighter lighter lighter alpha: each alpha ].

	^ IconicButton new 
			target: self traits first;
			actionSelector: #browse;
			labelGraphic: anIcon;
			color: Color transparent;
			extent: self iconExtent;
			helpText: 'Browse the overriden trait';
			borderWidth: 0