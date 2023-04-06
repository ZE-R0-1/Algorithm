def solution(x):
    digits_sum = sum(int(digit) for digit in str(x))
    return x % digits_sum == 0