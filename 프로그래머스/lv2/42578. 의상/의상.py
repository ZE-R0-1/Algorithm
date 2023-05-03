def solution(clothes):
    result = 1
    hash_map = dict()
    
    for wear, kind in clothes:
        hash_map[kind] = hash_map.get(kind, 0) + 1
        
    for kind in hash_map:
        result *= (hash_map[kind] + 1)
    
    return result - 1