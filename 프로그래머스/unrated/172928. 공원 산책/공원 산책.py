def solution(park, routes):
    W = len(park[0])
    H = len(park)
    sX = sY = 0
    
    
    for y, line in enumerate(park):
        x = line.find("S")
        if x != -1:
            sX = x
            sY = y
            break

    for route in routes:
        r = route.split(" ")
        dir = r[0]
        step = int(r[1])
        
        if dir == "E":
            if sX+step >= W : continue
            if "X" in park[sY][sX+1:sX+step+1]: continue
            sX += step
        elif dir == "W" :
            if sX-step < 0: continue
            if "X" in park[sY][sX-step:sX]: continue
            sX -= step
        elif dir == "S":
            if sY+step >= H: continue
            if "X" in [line[sX] for line in park][sY+1:sY+step+1] : continue
            sY += step
        elif dir == "N":
            if sY-step < 0: continue
            if "X" in [line[sX] for line in park][sY-step:sY]: continue
            sY -= step

    answer = [sY, sX]
    return answer