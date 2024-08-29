# doom.d
doom-emacs 用户配置文件

## 手动安装 all-the-icons-install-fonts
https://github.com/domtronn/all-the-icons.el.git
## 字体显示的问题
安装成功之后运行 `M-x nerd-icons-install-fonts`
  * [ ] 在windows平台中，这个命令会将字体下载到指定的目录中，需要手动安装对应的字体。
在doom emacs中还提供了 `doom doctor` 这个命令用来查看缺失的字体。


## 开启emoji的时候对应的文件下载缓慢
  * [ ] 查看这个文件 https://github.com/iqbalansari/emacs-emojify/blob/master/data/emoji-sets.json  里面的内容，手动下载对应文件，然后解压到
`.emacs.d\.local\etc\emojis` 这个目录里面就可以了。

# Windows平台使用的问题

## windows平台安装ripgrep
`scoop install ripgrep`
## windows 平台安装 pandoc
`scoop install pandoc`
## windows 平台安装 graphviz

`scoop install graphviz`

## Windows 平台插入剪贴板中的图片到文档中需要安装PasteEx
https://github.com/huiyadanli/PasteEx/releases

## 字体显示的问题
安装成功之后运行 `M-x nerd-icons-install-fonts`
  * [ ] 在windows平台中，这个命令会将字体下载到指定的目录中，需要手动安装对应的字体。
  在doom emacs中还提供了 `doom doctor` 这个命令用来查看缺失的字体。
## 使用 doom doctor 查看缺失的依赖

``` wikitext
 doom doctor                                                                                            
Package cl is deprecated                                                                                 
The doctor will see you now...                                                                           
                                                                                                         
> Checking your Emacs version...                                                                         
> Checking for Doom's prerequisites...                                                                   
> Checking for Emacs config conflicts...                                                                 
> Checking for missing Emacs features...                                                                 
  ! Emacs was not built with native compilation support                                                  
    Users will see a substantial performance gain by building Emacs with native compilation support,     
    availible in emacs 28+.You must install a prebuilt Emacs binary with this included, or compile Emacs 
    with the --with-native-compilation option.                                                           
> Checking for private config conflicts...                                                               
> Checking for common environmental issues...                                                            
> Checking for stale elc files...                                                                        
> Checking for problematic git global settings...                                                        
> Checking Doom Emacs...                                                                                 
  ✓ Initialized Doom Emacs 3.0.0-pre                                                                     
  ✓ Detected 45 modules                                                                                  
  ✓ Detected 181 packages                                                                                
  > Checking Doom core for irregularities...                                                             
    ! Warning: unable to detect fonts because fontconfig isn't installed                                 
  > Checking for stale elc files in your DOOMDIR...                                                      
  > Checking your enabled modules...                                                                     
    > :lang org                                                                                          
      ! Couldn't find gnuplot. org-plot/gnuplot will not work                                            
    > :lang python                                                                                       
      ! Couldn't find isort. Import sorting will not work.                                               
      ! Couldn't find pipenv. pipenv support will not work.                                              
      ! Couldn't find nosetests. Running tests through nose will not work.                               
      ! Couldn't find pytest. Running tests through pytest will not work.                                
      ! setuptools wasn't detected, which anaconda-mode requires                                         
    > :lang sh                                                                                           
      ! Couldn't find shellcheck. Shell script linting will not work                                     
                                                                                                         
There are 9 warnings!                                                                                    

```
列出缺失的内容之后，使用工具安装缺失的内容

``` sh
scoop install jq
scoop install gnuplot
scoop install shellcheck
```





