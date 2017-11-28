accessing
position: anObject
	| segments |
	position := anObject.
	self visitedPositions
		add: position.
	self visitedPositions size > 2
		ifFalse: [ ^ self ].
	
	segments := (self visitedPositions overlappingPairsCollect: [ :pointA :pointB | LineSegment from: pointA to: pointB ]).
	segments
			allPairsDo: [ :segmentA :segmentB |
				(segmentA intersectionWith: segmentB)
					ifNotNil: [ :intersection |
						(((segments indexOf: segmentA) + 1) = (segments indexOf: segmentB)
							or: [ ((segments indexOf: segmentA) - 1) = (segments indexOf: segmentB) ]) ifFalse: [
							AOCAlreadyVisitedPositionNotification new
								position: intersection;
								signal ] ] ]