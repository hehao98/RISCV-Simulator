yuv目录中的dem1.yuv和dem2.yuv是两个单帧的yuv文件,lab 4.1用这两个就行,大小都是1920*1080(width*height),截取于parkscene.yuv文件;
parkscene.yuv是一个240帧的yuv文件.yuv文件可以用yuvplayer播放.
lab4.1两个程序应该分别生成两个84帧的yuv文件(题目要求中的85应该改成84),用yuvplayer播放应该可以看到每一帧渐变的效果.
lab4.1应该统计出加速处理前所用的时间,以及分别用mmx,sse2,avx加速处理后所用的时间,并对比分析.
实验报告中应该有对于处理结果yuv文件的截图.
yuv.cpp为4.1的模板,仅供参考.

lab4.2的扩展要求对于有能力的同学可以尝试去做.

祝大家期末顺利!!