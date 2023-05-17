import sys

print(sys.setrecursionlimit(10000))


def bfs(maps, x, y, value):
    if x >= len(maps[0]) or y >= len(maps) or x < 0 or y < 0:
        return value
    if maps[y][x] == "X":
        return value
    value += int(maps[y][x])
    maps[y][x] = "X"
    value = bfs(maps, x + 1, y, value)
    value = bfs(maps, x - 1, y, value)
    value = bfs(maps, x, y + 1, value)
    value = bfs(maps, x, y - 1, value)
    return int(value)


def solution(maps):
    maps = [list(map(str, i)) for i in maps]
    answer = []
    for i in range(len(maps)):
        for j in range(len(maps[0])):
            if maps[i][j] == "X":
                continue
            else:

                answer.append(bfs(maps, j, i, 0))

    return sorted(answer) if answer else [-1]