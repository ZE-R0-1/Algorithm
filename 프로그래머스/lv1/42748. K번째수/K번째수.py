def solution(array, commands):
    answer = []
    
    for a in commands:
        ary = array[a[0]-1: a[1]]
        ary.sort()
        answer.append(ary[a[2]-1])
        
    return answer