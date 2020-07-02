
# UHost Instance 机型表

## 通用型 N

- 简介：提供最灵活自由的CPU、内存、磁盘组合。适合计算、存储、网络等均衡的场景。

- CPU平台支持：Intel IvyBridge/Haswell/Broadwell/Skylake

- CPU内存组合（支持配比2:1-1:12)

- 单位：CPU - 核数 Memory - GB

- 范围：CPU: 1-32, Memory: 1-128

<table><tr><th colspan="1">Category</th><th colspan="3">High CPU（1:1）</th><th colspan="3"> Basic（1:2）</th><th colspan="3"> Standard（1:4）</th><th colspan="3"> High Memory（1:8）</th><th colspan="3"> Customized（2:1-1:12）</th></tr><tr><th rowspan="18">Normal (N) </th><th>InstanceType</th><th>CPU</th><th>Memory</th><th>InstanceType</th><th>CPU</th><th>Memory</th><th>InstanceType</th><th>CPU</th><th>Memory</th><th>InstanceType</th><th>CPU</th><th>Memory</th><th>InstanceType</th><th>CPU</th><th>Memory</th></tr><tr><td>n-highcpu-1</td><td>1</td><td>1</td><td>n-basic-1</td><td>1</td><td>2</td><td>n-standard-1</td><td>1</td><td>4</td> <td>n-highmem-1</td><td>1</td><td>8</td><td>n-customized-2-1</td><td>2</td><td>1</td></tr><tr><td>n-highcpu-2</td><td>2</td><td>2</td><td>n-basic-2</td><td>2</td><td>4</td><td>n-standard-2</td><td>2</td><td>8</td> <td>n-highmem-2</td><td>2</td><td>16</td><td>n-customized-2-14</td><td>2</td><td>14</td> </tr><tr><td>n-highcpu-4</td><td>4</td><td>4</td><td>n-basic-4</td><td>4</td><td>8</td><td>n-standard-4</td><td>4</td><td>16</td> <td>n-highmem-4</td><td>4</td><td>32</td> <td>n-customized-4-18</td><td>4</td><td>18</td></tr><tr><td>n-highcpu-6</td><td>6</td><td>6</td><td>n-basic-6</td><td>6</td><td>12</td><td>n-standard-6</td><td>6</td><td>24</td> <td>n-highmem-6</td><td>6</td><td>48</td><td>...</td><td>...</td><td>...</td></tr> <tr><td>n-highcpu-8</td><td>8</td><td>8</td><td>n-basic-8</td><td>8</td><td>16</td><td>n-standard-8</td><td>8</td><td>32</td> <td>n-highmem-8</td><td>8</td><td>64</td><td>n-customized-4-48</td><td>4</td><td>48</td> </tr> <tr><td>n-highcpu-10</td><td>10</td><td>10</td><td>n-basic-10</td><td>10</td><td>20</td><td>n-standard-10</td><td>10</td><td>40</td> <td>n-highmem-10</td><td>10</td><td>80</td><td>...</td><td>...</td><td>...</td> </tr> <tr><td>n-highcpu-12</td><td>12</td><td>12</td><td>n-basic-12</td><td>12</td><td>24</td><td>n-standard-12</td><td>12</td><td>48</td> <td>n-highmem-12</td><td>12</td><td>96</td> </tr> <tr><td>n-highcpu-14</td><td>14</td><td>14</td><td>n-basic-14</td><td>14</td><td>28</td><td>n-standard-14</td><td>14</td><td>56</td> <td>n-highmem-14</td><td>14</td><td>112</td> </tr> <tr><td>n-highcpu-16</td><td>16</td><td>16</td><td>n-basic-16</td><td>16</td><td>32</td><td>n-standard-16</td><td>16</td><td>64</td> <td>n-highmem-16</td><td>16</td><td>128</td> </tr> <tr><td>n-highcpu-18</td><td>18</td><td>18</td><td>n-basic-18</td><td>18</td><td>36</td><td>n-standard-18</td><td>18</td><td>72</td></tr> <tr><td>n-highcpu-20</td><td>20</td><td>20</td><td>n-basic-20</td><td>20</td><td>40</td><td>n-standard-20</td><td>20</td><td>80</td></tr> <tr><td>n-highcpu-22</td><td>22</td><td>22</td><td>n-basic-22</td><td>22</td><td>44</td><td>n-standard-22</td><td>22</td><td>88</td></tr> <tr><td>n-highcpu-24</td><td>24</td><td>24</td><td>n-basic-24</td><td>24</td><td>48</td><td>n-standard-24</td><td>24</td><td>96</td></tr> <tr><td>n-highcpu-26</td><td>26</td><td>26</td><td>n-basic-26</td><td>26</td><td>52</td><td>n-standard-26</td><td>26</td><td>104</td></tr> <tr><td>n-highcpu-28</td><td>28</td><td>28</td><td>n-basic-28</td><td>28</td><td>56</td><td>n-standard-28</td><td>28</td><td>112</td></tr> <tr><td>n-highcpu-30</td><td>30</td><td>30</td><td>n-basic-30</td><td>30</td><td>60</td><td>n-standard-30</td><td>30</td><td>120</td></tr> <tr><td>n-highcpu-32</td><td>32</td><td>32</td><td>n-basic-32</td><td>32</td><td>64</td><td>n-standard-32</td><td>32</td><td>128</td></tr> </table>

## 快杰型 O

- 简介：计算、存储与网络性能卓越的最新一代云主机。适合全面需求场景。

- CPU平台支持：Intel Cascadelake, Amd Epyc2

- CPU内存组合（支持配比1:1-1:8）

- 单位：CPU - 核数 Memory - GB

- 限制:
    - 目前仅在部分可用区支持,详情请见[控制台](https://console.ucloud.cn/uhost/uhost/create)
    - 仅支持 `cloud_rssd` 云盘做为系统盘
    - 基础镜像仅支持高内核版
    - 范围： CPU: Intel 4-64, Amd 4-96;  Memory: Intel 4-512, Amd 4-768

<table><tr><th colspan="1">Category</th><th colspan="3">High CPU（1:1）</th><th colspan="3">Basic（1:2）</th><th colspan="3">Standard（1:4）</th><th colspan="3">High Memory（1:8）</th></tr><tr><th rowspan="8">OutStanding (O)</th><th>InstanceType</th><th>CPU</th><th>Memory</th><th>InstanceType</th><th>CPU</th><th>Memory</th><th>InstanceType</th><th>CPU</th><th>Memory</th><th>InstanceType</th><th>CPU</th><th>Memory</th></tr><tr><td>o-highcpu-2</td><td>2</td><td>2</td><td>o-basic-2</td><td>2</td><td>4</td><td>o-standard-2</td><td>2</td><td>8</td><td>o-highmem-2</td><td>2</td><td>16</td></tr><tr><td>o-highcpu-4</td><td>4</td><td>4</td><td>o-basic-4</td><td>4</td><td>8</td><td>o-standard-4</td><td>4</td><td>16</td><td>o-highmem-4</td><td>4</td><td>32</td></tr><tr><td>o-highcpu-8</td><td>8</td><td>8</td><td>o-basic-8</td><td>8</td><td>16</td><td>o-standard-8</td><td>8</td><td>32</td><td>o-highmem-8</td><td>8</td><td>64</td></tr><tr><td>o-highcpu-16</td><td>16</td><td>16</td><td>o-basic-16</td><td>16</td><td>32</td><td>o-standard-16</td><td>16</td><td>64</td><td>o-highmem-16</td><td>16</td><td>128</td></tr><tr><td>o-highcpu-32</td><td>32</td><td>32</td><td>o-basic-32</td><td>32</td><td>64</td><td>o-standard-32</td><td>32</td><td>128</td><td>o-highmem-32</td><td>32</td><td>256</td></tr><tr><td>o-highcpu-64</td><td>64</td><td>64</td><td>o-basic-64</td><td>64</td><td>128</td><td>o-standard-64</td><td>64</td><td>256</td><td>o-highmem-64</td><td>64</td><td>512</td></tr><tr><td>o-highcpu-96</td><td>96</td><td>96</td><td>o-basic-96</td><td>96</td><td>192</td><td>o-standard-96</td><td>96</td><td>384</td><td>o-highmem-96</td><td>96</td><td>768</td></tr></table>

## 高主频型 (C)

- 简介: CPU主频≥3.0GHz的机型，适合计算类业务，如高频交易、渲染、人工智能等。

- CPU平台支持: Intel Skylake

- CPU内存组合 (support ratio: 1:1-1:8)

- 单位: CPU-kernel Memory-GB

- 范围：CPU: 1-32, Memory: 1-128

- 限制:
    - 目前仅在部分可用区支持,详情请见[控制台](https://console.ucloud.cn/uhost/uhost/create)

<table><tr><th colspan="1">Category</th><th colspan="3">High CPU（1:1）</th><th colspan="3">Basic（1:2）</th><th colspan="3">Standard（1:4）</th><th colspan="3">High Memory（1:8）</th></tr><tr><th rowspan="8">High Frequency (C)</th><th>InstanceType</th><th>CPU</th><th>Memory</th><th>InstanceType</th><th>CPU</th><th>Memory</th><th>InstanceType</th><th>CPU</th><th>Memory</th><th>InstanceType</th><th>CPU</th><th>Memory</th></tr><tr><td>c-highcpu-1</td><td>1</td><td>1</td><td>c-basic-1</td><td>1</td><td>2</td><td>c-standard-1</td><td>1</td><td>4</td><td>c-highmem-1</td><td>1</td><td>8</td><tr><td>c-highcpu-2</td><td>2</td><td>2</td><td>c-basic-2</td><td>2</td><td>4</td><td>c-standard-2</td><td>2</td><td>8</td><td>c-highmem-2</td><td>2</td><td>16</td><tr><tr><td>o-highcpu-4</td><td>4</td><td>4</td><td>o-basic-4</td><td>4</td><td>8</td><td>o-standard-4</td><td>4</td><td>16</td><td>o-highmem-4</td><td>4</td><td>32</td></tr><tr><td>c-highcpu-8</td><td>8</td><td>8</td><td>c-basic-8</td><td>8</td><td>16</td><td>c-standard-8</td><td>8</td><td>32</td><td>c-highmem-8</td><td>8</td><td>64</td><tr><td>c-highcpu-16</td><td>16</td><td>16</td><td>c-basic-16</td><td>16</td><td>32</td><td>c-standard-16</td><td>16</td><td>64</td><td>c-highmem-16</td><td>16</td><td>128</td></tr><tr><td>c-highcpu-32</td><td>32</td><td>32</td><td>c-basic-32</td><td>32</td><td>64</td><td>c-standard-32</td><td>32</td><td>128</td></tr></table>
