def solution(elements):
    temp = set()
    for i in range(len(elements)):
        new_list = elements[i:] + elements[:i]
        for j in range(1, len(elements) + 1):
            temp.add(sum(new_list[:j]))
    return len(temp)