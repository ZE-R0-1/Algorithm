def solution(answers):
    supo_1 = [1, 2, 3, 4, 5]
    supo_2 = [2, 1, 2, 3, 2, 4, 2, 5]
    supo_3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    correct = [0, 0, 0]
    
    for i in range(len(answers)):
        if answers[i] == supo_1[i%len(supo_1)]:
            correct[0] += 1
        if answers[i] == supo_2[i%len(supo_2)]:
            correct[1] += 1
        if answers[i] == supo_3[i%len(supo_3)]:
            correct[2] += 1
    
    max_correct = max(correct)
    answer = []
    for i in range(len(correct)):
        if correct[i] == max_correct:
            answer.append(i+1)
    
    return answer