var bowlingScores = [ "Jane" : [190, 180, 172], "John" : [165, 156, 214] ]

bowlingScores

// pin counter mis-counted Jane's last game by 1
bowlingScores["Jane"]?[2]++

bowlingScores
