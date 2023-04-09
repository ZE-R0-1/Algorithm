def solution(price, money, count):
    answer = -1
    
    total_cost = sum(price * i for i in range(1, count+1))

    
    if money >= total_cost:
        answer = 0
    else:
        answer = total_cost - money
    
    return answer