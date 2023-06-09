# Design a unique hardware from zero using the Verilog HDL

## 初步计划

使用Verilog设计一个计时器，具有以下功能：

- 计时：每一秒钟自增1
- 可复位：按下复位键后计数清零
- [Optional] 暂停/继续按键
- [Optional] 亚秒级的小数表示

显示模块通过七段数码管实现。初步计划使用4个数码管，可以表示的范围为0s-9999s. 超时后从0s开始重复。

使用模块化设计。物理实现通过EDA软件生成。相关模块通过Verilog编写。

七段数码管（和小数点一起）有8路输出。利用视觉暂留效果，4个七段数码管依次点亮。

需要的模块：

- 2路转4路模块。2 bits unsigned integer decoder. 用于4个数码管之间的选通。
- 七段数码管驱动模块。通过输入的整数（0-9, 4 bits）表示相应的值。共阴极数码管。
- 整数分段表示模块。把输入的整数（0-9999, 16 bits）分到4个数码管分别表示。
- 自增模块。每秒自增，可复位。

## Verilog Compiler/Simulator 的选择

要求：

- 免费
- 轻量化
- 可靠

引起我注意的有两个：iverilog和verilator.

从初学者的角度出发iverilog安装和模拟似乎更简单，虽然它是个人开发者维护的。尝试安装并使用[iverilog](http://bleyer.org/icarus/).

安装和调试参考：https://zhuanlan.zhihu.com/p/367612172

## Verilog 实现

- 2路转4路模块：modules/dec224.v
- 七段数码管驱动模块：modules/seg_disp_drv.v


