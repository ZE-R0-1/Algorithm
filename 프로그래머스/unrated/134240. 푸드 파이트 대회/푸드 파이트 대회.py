def solution(food):
    answer = '' 
    for i in range(1, len(food)):
        answer += str(i) * (food[i]//2)
        print(i)
        print(food[i])
        print(answer)
    return answer + '0' + answer[::-1]