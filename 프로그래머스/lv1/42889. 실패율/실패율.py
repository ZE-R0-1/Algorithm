def solution(N, stages):
    fail_dict = {i:0 for i in range(1, N+1)}
    for stage in stages:
        if stage <= N:
            fail_dict[stage] += 1
    
    total_users = len(stages)
    fail_rate = []
    for i in range(1, N+1):
        if total_users == 0:
            fail_rate.append((i, 0))
        else:
            fail_rate.append((i, fail_dict[i]/total_users))
            total_users -= fail_dict[i]
    
    fail_rate.sort(key=lambda x: (-x[1], x[0]))
    answer = [x[0] for x in fail_rate]
    return answer
