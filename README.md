# doom.d
doom-emacs 用户配置文件

## 手动安装 all-the-icons-install-fonts
https://github.com/domtronn/all-the-icons.el.git
## 字体显示的问题
安装成功之后运行 `M-x nerd-icons-install-fonts`
在windows平台中，这个命令会将字体下载到指定的目录中，需要手动安装对应的字体。
在doom emacs中还提供了 `doom doctor` 这个命令用来查看缺失的字体。

## Windows 平台插入剪贴板中的图片到文档中需要安装PasteEx
https://github.com/huiyadanli/PasteEx/releases

## 开启emoji的时候对应的文件下载缓慢
查看这个文件 https://github.com/iqbalansari/emacs-emojify/blob/master/data/emoji-sets.json  里面的内容，手动下载对应文件，然后解压到
`.emacs.d\.local\etc\emojis` 这个目录里面就可以了。

## windows平台安装ripgrep
`scoop install ripgrep`
## windows 平台安装 pandoc
`scoop install pandoc`
## windows 平台安装 graphviz
`scoop install graphviz`


