import Foundation

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var cache = [String]()
    var cacheCount = 0
    
    if cacheSize == 0 {
        cacheCount = cities.count * 5
        return cacheCount
    }
    
    for i in 0..<cities.count{
        if cache.contains(cities[i].lowercased()){
            cache.remove(at: cache.firstIndex(of: cities[i].lowercased())!)
            cache.append(cities[i].lowercased())
            cacheCount += 1
        }else{
            if cache.count == cacheSize{
                cache.removeFirst()
                cache.append(cities[i].lowercased())
                cacheCount += 5
            }else{
                cache.append(cities[i].lowercased())
                cacheCount += 5
            }
        }
    }
    return cacheCount
}