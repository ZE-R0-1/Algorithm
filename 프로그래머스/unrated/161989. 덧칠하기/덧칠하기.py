def solution(n, m, section):
    answer = 0
    
    while section:
        end = section[-1] -1
        start = end - m + 1
        
        if start < 0:
            start, end = 0, m-1
        answer += 1
        while start <= (section[-1] -1):
            section.pop()
            if not section:
                break
    return answer