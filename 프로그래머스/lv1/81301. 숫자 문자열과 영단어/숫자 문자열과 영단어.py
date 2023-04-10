def solution(s):
    numbers = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    answer = ''
    num = ''
    i = 0
    while i < len(s):
        if s[i].isdigit():
            answer += s[i]
        else:
            num += s[i]
            if num in numbers:
                answer += str(numbers.index(num))
                num = ''
        i += 1
        print(i)
        print(answer)
    return int(answer)