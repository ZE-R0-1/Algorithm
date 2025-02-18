//
//  main.swift
//  CodeSignal
//
//  Created by USER on 2/18/25.
//

import Foundation

func solution(yourLeft: Int, yourRight: Int, friendsLeft: Int, friendsRight: Int) -> Bool {

    let yourStrong = max(yourLeft, yourRight)
    let yourWeak = min(yourLeft, yourRight)
    
    let friendStrong = max(friendsLeft, friendsRight)
    let friendWeak = min(friendsLeft, friendsRight)
    
    return yourStrong == friendStrong && yourWeak == friendWeak
}

print(solution(yourLeft: 1, yourRight: 2, friendsLeft: 2, friendsRight: 1))
