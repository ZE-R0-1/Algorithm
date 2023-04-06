def solution(n):
    n_str = str(n)
    sorted_str = sorted(n_str, reverse=True)
    answer = int(''.join(sorted_str))
    return answer