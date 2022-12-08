tests
testMonthIn3Letters
	| entry |
	entry := self teamEntryMonthUncorrect.
	self assert: (CZRmodMonthIn3Letters new check: self teamEntryMonth).
	self deny: (CZRmodMonthIn3Letters new check: self teamEntryMonthUncorrect).
	self assert: (entry at: #month) value equals: 'jan'.
	self deny: (CZRmodMonthIn3Letters new check: self teamEntryMonthMissing)
	
	