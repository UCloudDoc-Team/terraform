
# Redis 与 Memcache 机型表

## Redis
1)简介：UCloud 云内存 Redis 提供主备版 Redis 和分布式版 Redis 两种架构，基于高可靠双机热备架构及可平滑扩展的集群架构，满足高读写性能场景及弹性扩缩容的业务需求。
2)内存(单位 GB): 主备版支持 1, 2, 4, 6, 8, 12, 16, 24, 32; 分布式版支持 16 到 1000 且必须被 4 整除。

| :::      |**类别（category）**| **机型（instance_type）**             | **Memory** |
^ **Redis 系列**  ^**主备版（active-standby）**| redis-master-1| 1      |
| :::      |:::| redis-master-2        | 2        |
| :::      |:::| redis-master-4        | 4        |
| :::      |:::| redis-master-6        | 6        |
| :::      |:::| redis-master-8        | 8        |
| :::      |:::| redis-master-12       | 12       |
| :::      |:::| redis-master-16       | 16       |
| :::      |:::| redis-master-24       | 24       |
| :::      |:::| redis-master-32       | 32       |
| :::      ^**分布式版（distributed）**|redis-distributed-16       | 16       |
| :::      |:::| redis-distributed-20      | 20       |
| :::      |:::| redis-distributed-24       | 24       |
| :::      |:::| redis-distributed-28      | 28      | 
| :::      |:::| ...      | ...      | 
| :::      |:::| redis-distributed-996     | 996      | 
| :::      |:::| redis-distributed-1000      | 1000      | 

## Memcache
1)简介：云内存 Memcache 是基于内存的缓存服务，支持海量小数据的高速访问。云内存 Memcache 可以极大缓解后端存储的压力，提高网站或应用的响应速度。云内存 Memcache 支持 Key-Value 的数据结构，兼容 Memcached 协议的客户端都可与云内存 Memcache 进行通信。
2)内存(单位 GB): 主备版支持 1, 2, 4, 8, 16, 24, 32。

| :::      |**类别（category）**| **机型（instance_type）**             | **Memory** |
^ **Memcache 系列**  ^**主备版（active-standby）**| memcache-master-1| 1      |
| :::      |:::| memcache-master-2        | 2        |
| :::      |:::| memcache-master-4        | 4        |
| :::      |:::| memcache-master-8        | 8        |
| :::      |:::| memcache-master-16       | 16       |
| :::      |:::| memcache-master-24       | 24       |
| :::      |:::| memcache-master-32       | 32       |
