def solution(cards1, cards2, goal):
    len_cards1, len_cards2 = len(cards1), len(cards2)
    index1, index2 = 0, 0
    for s in goal:
        if index1 < len_cards1 and s == cards1[index1]:
            index1 += 1
        elif index2 < len_cards2 and s == cards2[index2]:
            index2 += 1
        else:
            return 'No'
    return 'Yes'