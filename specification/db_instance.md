
# DB Instance 机型表

## 高可用型 HA

### MySQL/Percona DB

- 简介：高可用版提供双主热备架构，避免因宕机或硬件故障造成的数据库不可用，且高可用版使用InnoDB引擎对于主从同步及容灾更佳。
- 内存：支持 2, 4, 6, 8, 12, 16, 24, 32, 48, 64, 96, 128, 192, 256, 320 (单位 GB)

<table><tr><th colspan="1">Category</th><th colspan="2">Mysql</th><th colspan="2">Percona</th></tr><tr><th rowspan="18">Mysql/Percona DB</th><th>InstanceType</th><th>Memory</th><th>InstanceType</th><th>Memory</th></tr><tr><td>mysql-ha-1</td><td>1</td><td>percona-ha-1</td><td>1</td> </tr><tr><td>mysql-ha-2</td><td>2</td><td>percona-ha-2</td><td>2</td> </tr><tr><td>mysql-ha-4</td><td>4</td><td>percona-ha-4</td><td>4</td> </tr><tr><td>mysql-ha-6</td><td>6</td><td>percona-ha-6</td><td>6</td> </tr><tr><td>mysql-ha-8</td><td>8</td><td>percona-ha-8</td><td>8</td> </tr><tr><td>mysql-ha-12</td><td>12</td><td>percona-ha-12</td><td>12</td> </tr><tr><td>mysql-ha-16</td><td>16</td><td>percona-ha-16</td><td>16</td> </tr><tr><td>mysql-ha-24</td><td>24</td><td>percona-ha-24</td><td>24</td> </tr><tr><td>mysql-ha-32</td><td>32</td><td>percona-ha-32</td><td>32</td> </tr><tr><td>mysql-ha-48</td><td>48</td><td>percona-ha-48</td><td>48</td> </tr><tr><td>mysql-ha-64</td><td>64</td><td>percona-ha-64</td><td>64</td> </tr><tr><td>mysql-ha-96</td><td>96</td><td>percona-ha-96</td><td>96</td> </tr><tr><td>mysql-ha-128</td><td>128</td><td>percona-ha-128</td><td>128</td> </tr><tr><td>mysql-ha-192</td><td>192</td><td>percona-ha-192</td><td>192</td> </tr><tr><td>mysql-ha-256</td><td>256</td><td>percona-ha-256</td><td>256</td> </tr><tr><td>mysql-ha-320</td><td>320</td><td>percona-ha-320</td><td>320</td> </tr></table>

### PostgreSQL DB

- 简介：UDB PostgreSQL 多道防线保障了数据的安全可靠，高可靠性硬件保障了存储的数据有保障；PostgreSQL 的高可用实例保证了有多个数据的冗余存储。
- 内存：支持 2, 4, 6, 8, 12, 16, 24, 32, 48, 64, 96, 128 (单位 GB)

<html>
 <head></head>
 <body>
  <table>
   <tbody>
    <tr>
     <th colspan="1">Category</th>
     <th colspan="2">PostgreSQL</th>
    </tr>
    <tr>
     <th rowspan="18">PostgreSQL DB</th>
     <th>InstanceType</th>
     <th>Memory</th>
    </tr>
    <tr>
     <td>postgresql-ha-2</td>
     <td>2</td>
    </tr>
    <tr>
     <td>postgresql-ha-4</td>
     <td>4</td>
    </tr>
    <tr>
     <td>postgresql-ha-6</td>
     <td>6</td>
    </tr>
    <tr>
     <td>postgresql-ha-8</td>
     <td>8</td>
    </tr>
    <tr>
     <td>postgresql-ha-12</td>
     <td>12</td>
    </tr>
    <tr>
     <td>postgresql-ha-16</td>
     <td>16</td>
    </tr>
    <tr>
     <td>postgresql-ha-24</td>
     <td>24</td>
    </tr>
    <tr>
     <td>postgresql-ha-32</td>
     <td>32</td>
    </tr>
    <tr>
     <td>postgresql-ha-48</td>
     <td>48</td>
    </tr>
    <tr>
     <td>postgresql-ha-64</td>
     <td>64</td>
    </tr>
    <tr>
     <td>postgresql-ha-96</td>
     <td>96</td>
    </tr>
    <tr>
     <td>postgresql-ha-128</td>
     <td>128</td>
    </tr>
   </tbody>
  </table>
 </body>
</html>

## 高可用 NVMe SSD (public beta)

- 简介: 高可用性 NVMe SSD 版本使用双主热备结构，这是新一代超高性能云磁盘产品，适用于具有高容量和低延迟要求的业务场景。
- 内存: 支持 2, 4, 8, 12, 16, 24, 32, 48, 64, 96, 128, 192, 256, 320 (单位 GB)
- 限制: 
    - 目前仅在部分可用区支持,详情请见[控制台](https://console.ucloud.cn/udb/mysql/create)
    - 目前仅支持部分 `engine` 和 `engine_version`, 暂时支持的有 `engine`: `mysql`; `engine_version`: `5.6`, `5.7`; 详情请见[控制台](https://console.ucloud.cn/udb/mysql/create)

<table><tr> <th colspan="1">Category</th> <th colspan="2">Mysql</th></tr><tr> <th rowspan="16">Mysql DB</th> <th>InstanceType</th> <th>Memory</th></tr><tr> <td>mysql-ha-nvme-2</td> <td>2</td></tr><tr> <td>mysql-ha-nvme-4</td> <td>4</td></tr><tr> <td>mysql-ha-nvme-8</td> <td>8</td></tr><tr> <td>mysql-ha-nvme-12</td> <td>12</td></tr><tr> <td>mysql-ha-nvme-16</td> <td>16</td></tr><tr> <td>mysql-ha-nvme-24</td> <td>24</td></tr><tr> <td>mysql-ha-nvme-32</td> <td>32</td></tr><tr> <td>mysql-ha-nvme-48</td> <td>48</td></tr><tr> <td>mysql-ha-nvme-64</td> <td>64</td></tr><tr> <td>mysql-ha-nvme-96</td> <td>96</td></tr><tr> <td>mysql-ha-nvme-128</td> <td>128</td></tr><tr> <td>mysql-ha-nvme-192</td> <td>192</td></tr><tr> <td>mysql-ha-nvme-256</td> <td>256</td></tr><tr> <td>mysql-ha-nvme-320</td> <td>320</td></tr></table>
