def solution(lottos, win_nums):
    zeros, hit = 0, 0
    ranking = [6,6,5,4,3,2,1]
    for i in lottos:
        if i in win_nums:
            hit += 1
        if i == 0:
            zeros += 1
    answer = [ranking[hit + zeros], ranking[hit]]
    return answer