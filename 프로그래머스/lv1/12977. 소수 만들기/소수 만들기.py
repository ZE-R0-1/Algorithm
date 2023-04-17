def solution(nums):
    answer = 0

    for i in range(len(nums)):
        for j in range(i+1, len(nums)):
            for k in range(j+1, len(nums)):
                num_sum = nums[i] + nums[j] + nums[k]
                
                is_prime = True
                for n in range(2, int(num_sum ** 0.5) + 1):
                    if num_sum % n == 0:
                        is_prime = False
                        break
                        
                if is_prime:
                    answer += 1
        
    return answer