CharSend(char, shiftChar) {
     global shifted
     shifted = true 
     If GetKeyState("Capslock", "T") { 
          If GetKeyState("Shift", "D") { 
               SendInput %char% 
               return 
          } 
          Else { 
               SendInput %shiftChar% 
               return 
          } 
     } 
     Else { 
          If GetKeyState("Shift", "D") { 
               SendInput %shiftChar% 
               return 
          } 
          Else { 
               SendInput %char% 
               return 
          } 
     } 
}