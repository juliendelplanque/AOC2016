solving
solve
	self inputData do: [ :instruction |
		instruction first = $L
			ifTrue: [ 
				self turnLeft. ].
		instruction first = $R
			ifTrue: [ 
				self turnRight ].
			
		self position: (self orientation move: instruction allButFirst asInteger from: self position) ].
	
	^ self position x abs + self position y abs