def convert(n, base):
    T = "0123456789ABCDEF"
    q, r = divmod(n, base)
    if q == 0:
        return T[r]
    else:
        return convert(q, base) + T[r]

def solution(n, t, m, p):
    answer = ""
    allStr = ""
    
    for i in range(100000):
        allStr += convert(i, n)
        
    while len(answer) < t:
        answer += allStr[p - 1]
        p += m
        
    return answer