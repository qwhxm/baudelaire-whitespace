/*
A visual poem generator inspired by visual poem "Baudelaire" by Jiří Kolář.	

(Excuse the unreadability of the comments - they cannot contain spaces or newlines without affecting the actual program code.)		
*/
  						
/*prepareASCIIcodesOfInstructionsText*/push  0  
push  69E 	   	 	
store		 push  1 	
push  110n 		 			 
store		 push  2 	 
push  116t 			 	  
store		 push  3 		
push  101e 		  	 	
store		 push  4 	  
push  114r 			  	 
store		 push  5 	 	
push  32SPC 	     
store		 push  6 		 
push  97a 		    	
store		 push  7 			
push  32SPC 	     
store		 push  8 	   
push  119w 			 			
store		 push  9 	  	
push  119o 		 				
store		 push  10 	 	 
push  114r 			  	 
store		 push  11 	 		
push  100d 		  	  
store		 push  12 		  
push  32SPC 	     
store		 push  13 		 	
push  97a 		    	
store		 push  14 			 
push  110n 		 			 
store		 push  15 				
push  100d 		  	  
store		 push  16 	    
push  32SPC 	     
store		 push  17 	   	
push  112p 			    
store		 push  18 	  	 
push  114r 			  	 
store		 push  19 	  		
push  101e 		  	 	
store		 push  20 	 	  
push  115s 			  		
store		 push  21 	 	 	
push  115s 			  		
store		 push  22 	 		 
push  32SPC 	     
store		 push  23 	 			
push  69E 	   	 	
store		 push  24 		   
push  110n 		 			 
store		 push  25 		  	
push  116t 			 	  
store		 push  26 		 	 
push  101e 		  	 	
store		 push  27 		 		
push  114r 			  	 
store		 push  28 			  
push  58: 			 	 
store		 push  29 			 	
push  10\n 	 	 
store		 push  30 				 
push  0NULL  
store		 /*printInstructions*/push  0  
call
 	printText				
/*readLineFromInput*/push  34 	   	 
push  0  
store		 push  35 	   		
call
 	readLine					
/*printNewline*/push  10 	 	 
outputchar	
  /*prepareMatrixCoordinates*/push  32 	     
push  1 	
store		 push  33 	    	
push  1 	
store		 mainLoop()
      
/*determineRelativeCoordinateX|x_{r}=if(x<=stringLength)then{x}else{x-2*(x-stringLength)+1}*/push  31 					
push  32 	     
retrieve			push  34 	   	 
retrieve			subtract	  	push  1 	
subtract	  	jumpifneg
		ifClauseNo1     
/*elseClauseNo1*/push  32 	     
retrieve			duplicate 
 push  34 	   	 
retrieve			subtract	  	push  2 	 
multiply	  
subtract	  	push  1 	
add	   jump
 
afterIfNo1      
ifClauseNo1()
       
push  32 	     
retrieve			afterIfNo1()
        
/*saveRelativeXCoordinateToHeapForLater*/store		 push  31 					
retrieve			/*determineRelativeCoordinateY|sameFormulaAsForX*/push  33 	    	
retrieve			push  34 	   	 
retrieve			subtract	  	push  1 	
subtract	  	jumpifneg
		ifClauseNo2       
/*elseClauseNo2*/push  33 	    	
retrieve			duplicate 
 push  34 	   	 
retrieve			subtract	  	push  2 	 
multiply	  
subtract	  	push  1 	
add	   jump
 
afterIfNo2        
ifClauseNo2()
         
push  33 	    	
retrieve			afterIfNo2()
          
/*determineCharacterIndex,printCharacter|k=min{x_{r},y_{r}}*/duplicate 
 push  31 					
retrieve			subtract	  	jumpifnegative
		ifClauseNo3         
/*elseClauseNo3:k=x_{r}*/discard 

push  34 	   	 
add	   retrieve			outputchar	
  jump
 
afterIfNo3          
/*k=y_{r}*/ifClauseNo3()
           
push  34 	   	 
add	   retrieve			outputchar	
  discard 

afterIfNo3()
            
/*printSpace*/push  32 	     
outputchar	
  /*updateXCoordinate*/push  32 	     
duplicate 
 retrieve			push  1 	
add	   store		 /*updateYCoordinateIfNeeded*/push  32 	     
retrieve			push  34 	   	 
retrieve			push  2 	 
multiply	  
subtract	  	push  1 	
subtract	  	jumpifneg
		afterIfNo4           
/*elseClauseNo4:printNewline,setXCoordinateTo1,updateYCoordinate*/push  10 	 	 
outputchar	
  push  32 	     
push  1 	
store		 push  33 	    	
duplicate 
 retrieve			push  1 	
add	   store		 push  33 	    	
retrieve			push  34 	   	 
retrieve			push  2 	 
multiply	  
subtract	  	push  1 	
subtract	  	jumpifneg
		afterIfNo4           
/*elseClauseNo5:exit*/exit


afterIfNo4()
             
/*jumpBackToTheBeginningOfTheLoop*/jump
 
mainLoop    
exit


/*printsStringFromHeapStartingAtGivenAddressEndingAtFirstZero*/printText()
  				
duplicate 
 retrieve			duplicate 
 jumpifzero
	 printTextReturn				 
outputchar	
  push  1 	
add	   jump
 
printText				
/*returnSubroutineForTheprintTextRoutine*/printTextReturn()
  				 
discard 

discard 

return
	
/*storesLineFromInputToHeapStartingAtGivenAddress*/readLine()
/*alsoStoresNumberOfCharacters(stringLength)atAdress34*/  					
duplicate 
 readchar	
	 duplicate 
 retrieve			push  10 	 	 
subtract	  	jumpifzero
	 readLineReturn					 
push  1 	
add	   /*updateCharacterCount*/push  34 	   	 
duplicate 
 retrieve			push  1 	
add	   store		 jump
 
readLine					
/*returnSubroutineForThereadLineRoutine*/readLineReturn()
  					 
discard 

return
	



                               HEAP ADDRESS USAGE
0 - 30      instructions text
31          temporary storage of the relative x coordinate
32          horizontal matrix coordinate (x)
33          vertical matrix coordinate (y)
34          input string length
35 - inf    input string
