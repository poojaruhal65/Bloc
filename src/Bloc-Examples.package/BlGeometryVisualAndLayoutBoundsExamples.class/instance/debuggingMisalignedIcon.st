debugging triangle and text
debuggingMisalignedIcon
	<gtExample>
	| aContainerElement |
	aContainerElement := self misalignedIcon.
	aContainerElement children first debug: true.
	^ aContainerElement