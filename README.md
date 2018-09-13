## EPUB 3 归档工具 

### 简介

该项目主要包含若干用来归档以及校验 epub 文件的脚本

### 用法

* 归档并验证多个文件夹

  `archive-all.sh source-root-dir [target-dir]`

  其中 `source-root-dir` 指定要被归档的 epub 数据文件夹所在父目录；`target-dir` 指定生成电子书的存放目录，如果不指定该参数，电子书存放在当前目录下

* 归档一个文件夹

  `archive-single.sh source-dir [target-dir]`

  其中 `source-dir` 指定要被归档的 epub 数据文件夹所在目录；`target-dir` 指定生成电子书的存放目录，如果不指定该参数，电子书存放在当前目录下

* 验证多个文件夹

  `validate-all.sh source-root-dir`

  其中 `source-root-dir` 指定要被校验的 epub 数据文件夹所在父目录

* 校验一个文件夹

  `validate-single.sh source-dir`

  其中 `source-dir` 指定要被校验的 epub 数据文件夹所在目录


注：上面每个 `.sh` 脚本都有对应的 `.bat` 版本可用，它们实现的功能是完成一致的

### 示例

项目 `examples` 目录中含有两个 epub 数据文件夹 `analects` 和 `mengzi`

* 全部归档 `examples` 文件夹中的 epub 文件夹

  `archive-all.sh examples`

* 归档 `examples/analects` 文件夹

  `archive-single.sh examples/analects`

* 校验 `examples` 下的全部 epub 文件夹

  `validate-all.sh examples`

* 校验 `examples/analects` 文件夹

  `validate-single.sh examples/analects`
