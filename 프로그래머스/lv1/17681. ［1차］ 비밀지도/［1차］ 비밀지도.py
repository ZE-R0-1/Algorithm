def solution(n, arr1, arr2):
    answer = []
    arr1_b = []
    arr2_b = []
    for i in range(n):
        arr1_b.append(bin(arr1[i])[2:])
        arr2_b.append(bin(arr2[i])[2:])
        arr1_b[i] = ('0' * (n-len(arr1_b[i]))) + arr1_b[i]
        arr2_b[i] = ('0' * (n-len(arr2_b[i]))) + arr2_b[i]
        
        tmp = ''
        for m in range(n):
            if arr1_b[i][m] == '1' or arr2_b[i][m] == '1':
                tmp += '#'
            elif arr1_b[i][m] == '0' and arr2_b[i][m] == '0':
                tmp += ' '
        answer.append(tmp)
    return answer