1, [root@linux ~]# top [-d] | top [-bnp]
参数：
-d ：后面可以接秒数，就是整个程序画面更新的秒数。预设是 5 秒；

-b ：以批次的方式执行 top ，还有更多的参数可以使用喔！

通常会搭配数据流重导向来将批次的结果输出成为档案。

-n ：与 -b 搭配，意义是，需要进行几次 top 的输出结果。

-p ：指定某些个 PID 来进行观察监测而已。

在 top 执行过程当中可以使用的按键指令：

? ：显示在 top 当中可以输入的按键指令；

P ：以 CPU 的使用资源排序显示；

M ：以 Memory 的使用资源排序显示；

N ：以 PID 来排序喔！

T ：由该 Process 使用的 CPU 时间累积 (TIME+) 排序。

k ：给予某个 PID 一个讯号 (signal)

r ：给予某个 PID 重新制订一个 nice 值。

2, linux系统性能衡量

  @1：iostat(iostat - Report Central Processing Unit (CPU) statistics and input/out‐put statistics for devices and partitions.)
  iostat可以显示CPU和I/O系统的负载情况及分区状态信息. 
  avg-cpu段:
  %user: 在用户级别运行所使用的CPU的百分比.
  %nice: nice操作所使用的CPU的百分比.
  %sys: 在系统级别(kernel)运行所使用CPU的百分比.
  %iowait: CPU等待硬件I/O时,所占用CPU百分比.
  %idle: CPU空闲时间的百分比.
  Device段:
  tps: 每秒钟发送到的I/O请求数.
  Blk_read /s: 每秒读取的block数.
  Blk_wrtn/s: 每秒写入的block数.
  Blk_read:   读入的block总数.
  Blk_wrtn:  写入的block总数.
