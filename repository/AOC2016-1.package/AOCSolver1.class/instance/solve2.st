solving
solve2
	| first pos |
	first := true.
	pos := nil.
	[
		self solve
	] on: AOCAlreadyVisitedPositionNotification do: [ :notification |
		first ifTrue: [ 
			pos := notification position.
			first := false ].
		notification resume ].

	^ pos x abs + pos y abs