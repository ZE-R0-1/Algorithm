def solution(arr):
    answer = [0,0]
    l = len(arr)
    def recursion(arr,x,y,l):
        point = arr[x][y]
        for i in range(x,x+l):
            for j in range(y, y+l):
                if point != arr[i][j]:
                    recursion(arr,x,y,l//2)
                    recursion(arr,x+l//2,y,l//2)
                    recursion(arr,x,y+l//2,l//2)
                    recursion(arr,x+l//2,y+l//2,l//2)
                    return
        answer[point] += 1
    recursion(arr,0,0,l)
    return answer