printing
printOn: aStream
	aStream 
		nextPutAll: self class name;
		nextPut:$(;
		nextPutAll:'key: ';
		print: key;
		nextPutAll:'position: ';
		print: position;
		nextPutAll:'; screenPosition: ';
		print: screenPosition;
		nextPutAll:'; modifiers: ';
		print: modifiers;
		nextPutAll:'; button: ';
		print: button;
		nextPut:$)