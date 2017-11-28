data
inputData
	"Parses input data to get a list of instructions to move on the map."
	^ (self rawInputData splitOn: $,)
		collect: #trimmed