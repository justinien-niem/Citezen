conditions
postAction: aCZEntry
	(aCZEntry at: #month) isUndefined 
		ifTrue: [ aCZEntry at: #month put: 'UND' ]
		ifFalse: [ aCZEntry at: #month put: (aCZEntry at: #month) value, 'UND' ].
 	
	(#(janvier january) includes: (aCZEntry at: #month) rawValue)
		ifTrue: [ aCZEntry at: #month put: 'jan' ]
				