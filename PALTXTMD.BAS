'In text mode color values or interpreted as follows by the PALETTE statement:
'Bit:   Meaning:
'  0    low blue
'  1    low green
'  2    low red
'  3    high blue
'  4    high green
'  5    high red
DEFINT A-Z
DECLARE SUB DefineColor (ColorV, Red1, Green1, Blue1, Red2, Green2, Blue2)
PALETTE
SCREEN 0
WIDTH 80, 25
CLS

DefineColor 0, 1, 1, 1, 1, 1, 1

SUB DefineColor (ColorV, Red1, Green1, Blue1, Red2, Green2, Blue2)
 Green1 = (Green1 * 2) ^ 1
 Red1 = (Red1 * 2) ^ 2
 Blue2 = (Blue2 * 2) ^ 3
 Green2 = (Green2 * 2) ^ 4
 Red2 = (Red2 * 2) ^ 5

 PALETTE ColorV, Red2 OR Green2 OR Blue2 OR Red1 OR Green1 OR Blue1
END SUB

