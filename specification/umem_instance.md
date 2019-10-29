
# Redis 与 Memcache 机型表

## Redis
1)简介：UCloud 云内存 Redis 提供主备版 Redis 和分布式版 Redis 两种架构，基于高可靠双机热备架构及可平滑扩展的集群架构，满足高读写性能场景及弹性扩缩容的业务需求。
2)内存(单位 GB): 主备版支持 1, 2, 4, 6, 8, 12, 16, 24, 32; 分布式版支持 16 到 1000 且必须被 4 整除。

<table><tr><th colspan="1">Category</th><th colspan="2">Active-Standby</th><th colspan="2">Distributed</th></tr><tr><th rowspan="18">Redis</th><th>InstanceType</th><th>Memory</th><th>InstanceType</th><th>Memory</th></tr><tr><td>redis-master-1</td><td>1</td><td>redis-distributed-16</td><td>16</td> </tr><tr><td>redis-master-2</td><td>2</td><td>redis-distributed-20</td><td>20</td> </tr><tr><td>redis-master-4</td><td>4</td><td>redis-distributed-24</td><td>24</td> </tr><tr><td>redis-master-6</td><td>6</td><td>redis-distributed-28</td><td>28</td> </tr><tr><td>redis-master-8</td><td>8</td><td>...</td><td>...</td> </tr><tr><td>redis-master-12</td><td>12</td><td>redis-distributed-996</td><td>996</td> </tr><tr><td>redis-master-16</td><td>16</td><td>redis-distributed-1000</td><td>1000</td> </tr><tr><td>redis-master-24</td><td>24</td></tr><tr><td>redis-master-32</td><td>32</td> </tr></table>

## Memcache
1)简介：云内存 Memcache 是基于内存的缓存服务，支持海量小数据的高速访问。云内存 Memcache 可以极大缓解后端存储的压力，提高网站或应用的响应速度。云内存 Memcache 支持 Key-Value 的数据结构，兼容 Memcached 协议的客户端都可与云内存 Memcache 进行通信。
2)内存(单位 GB): 主备版支持 1, 2, 4, 8, 16, 24, 32。

<table><tr><th colspan="1">Category</th><th colspan="2">Active-Standby</th></tr><tr><th rowspan="18">Memcache</th><th>InstanceType</th><th>Memory</th></tr><tr><td>memcache-master-1</td><td>1</td> </tr><tr><td>memcache-master-2</td><td>2</td> </tr><tr><td>memcache-master-4</td><td>4</td></tr><tr><td>memcache-master-8</td><td>8</td> </tr><tr><td>memcache-master-16</td><td>16</td> </tr><tr><td>memcache-master-24</td><td>24</td></tr><tr><td>memcache-master-32</td><td>32</td> </tr></table>
