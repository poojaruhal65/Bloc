pulse
doUpdateLayout
	"Start layouting process"

	"first we measure.."
	self root measure: (BlExtentMeasurementSpec new
		widthSpec: (self root layout
			measurementSpecFor: (BlMeasurementSpec new beExact: self width)
			usedSize:  0
			resizer: BlLayoutMatchParentResizer new);
		heightSpec: (self root layout
			measurementSpecFor: (BlMeasurementSpec new beExact: self height)
			usedSize:  0
			resizer: BlLayoutMatchParentResizer new)).
	"...then we layout in measured during previous step bounds"
	self root applyLayoutIn: self root measuredBounds