conditions
condition: aCZEntry
	^ (aCZEntry hasField: #month)
		ifFalse: [ false ]
		ifTrue: [ #(jan feb mar apr may jun jul aug sep oct nov dec ) includes: (aCZEntry at: #month) rawValue ]