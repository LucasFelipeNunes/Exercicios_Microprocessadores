		INCLUDE	"P16F877.INC"
		ORG		00h
  		GOTO	CONFIG
		ORG		04h
  		GOTO	INT_EXT

CONFIG	BCF		STATUS,RP1
		BCF		STATUS,RP0
  		MOVLW	FFh
		MOVWF	PORTA
		MOVWF	PORTD
		MOVWF	PORTE
  		BSF		STATUS,RP0
		MOVWF	PORTB

  		MOVLW	00h
		MOVWF	TRISD
		MOVWF	PORTC

  		MOVLW	90h
		MOVWF	INTCON

  		MOVLW	00h
		MOVWF	OPTION_REG

  		MOVLW	06h
		MOVWF	ADCON1

  		MOVLW	E0h
		MOVWF	TRISE

  		MOVLW	DFh
		MOVWF	TRISA
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
