			INCLUDE	"P16F877.inc"
AUX1		EQU		20h
			ORG		00h
			GOTO	CONFIG
			ORG		04h
			GOTO	INT_TIMER

CONFIG		BCF		STATUS,RP1
			BCF		STATUS,RP0
			MOVLW	FFh
			MOVWF	PORTA
			MOVWF	PORTD
			MOVWF	PORTE
	  		BSF		STATUS,RP0

	  		MOVLW	00h
			MOVWF	TRISD
	
			MOVLW	A0h
			MOVWF	INTCON
	
			MOVLW	38h
			MOVWF	OPTION_REG

			MOVLW	06h
			MOVWF	ADCON1
	
	  		MOVLW	E0h
			MOVWF	TRISE
	
	  		MOVLW	DFh
			MOVWF	TRISA
	
	  		MOVLW	0Fh
			MOVWF	TRISB
	
	  		MOVLW	00h
			MOVWF	TRISC

	  		BCF		STATUS,RP0
	
	 		MOVLW	30h
	
	   		MOVWF	FSR
	
	  		MOVLW	03h
			MOVWF	INDF
	  		INCF	FSR,F
	
	  		MOVLW	9Fh
			MOVWF	INDF
	  		INCF	FSR,F
	
	  		MOVLW	25h
			MOVWF	INDF
	  		INCF	FSR,F
	
	  		MOVLW	0Dh
			MOVWF	INDF
	  		INCF	FSR,F
	
	  		MOVLW	99h
			MOVWF	INDF
	  		INCF	FSR,F
	
	  		MOVLW	49h
			MOVWF	INDF
	  		INCF	FSR,F
	
	  		MOVLW	41h
			MOVWF	INDF
	  		INCF	FSR,F
	
	  		MOVLW	1Fh
			MOVWF	INDF
	  		INCF	FSR,F
	
	  		MOVLW	01h
			MOVWF	INDF
	  		INCF	FSR,F
	
	  		MOVLW	09h
			MOVWF	INDF
	  		INCF	FSR,F
	
	  		MOVLW	11h
			MOVWF	INDF
	  		INCF	FSR,F
	
	  		MOVLW	C1h
			MOVWF	INDF
	  		INCF	FSR,F
	
	  		MOVLW	63h
			MOVWF	INDF
	  		INCF	FSR,F
	
	  		MOVLW	85h
			MOVWF	INDF
	  		INCF	FSR,F
	
	  		MOVLW	61h
			MOVWF	INDF
	  		INCF	FSR,F
	
	  		MOVLW	71h
			MOVWF	INDF
	  		INCF	FSR,F
	
	 		MOVLW	FEh
	
	   		MOVWF	INDF

PRINC		MOVLW	FFh
			MOVWF	PORTA
			MOVWF	PORTD
			MOVWF	PORTE
			MOVWF	PORTC

PRINC1		MOVLW	30h
			MOVFW	FSR
			MOVLW	FDh
			MOVFW	TMR0
			BCF		PORTE,0

PRINC2		MOVFW	INDF
			MOVWF	PORTD
	
			GOTO	PRINC2

INT_TIMER	MOVLW	FD4h
			MOVWF	TMR0
			INCF	FSR,F
			MOVFW	FSR
			XORLW	41h
			BTFSC	STATUS,Z
			GOTO	REINICIE
			BCF		INTCON,T0IF
			RETFIE

REINICIE	MOVLW	30h
			MOVWF	FSR
			BCF		INTCON,T0IF
			RETFIE

			END
