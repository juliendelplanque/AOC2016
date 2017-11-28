initialization
initialize
	super initialize.
	self
		orientation: AOCNorth new;
		visitedPositions: OrderedCollection new;
		position: 0@0