### Why?
最近icloud默认的5G不够用了，上面显示有4.1G的照片。可是通过iphone、ipad、和mac的照片查看照片只有几十张，不可能占用4G的空间，于是订购了Apple的存储空间，这4G的空间占用被遗忘了。最近通过MacBooster 整理电脑时发现以前删除的图片竟然还存储在照片的资料库里面，通过打开照片程序不会显示这些图片，但是程序会把这些`已经删除`的照片上传到icloud中，导致空间占用。由于这些照片被放在嵌套多层的子目录中，寻找起来很麻烦，这个脚本将所有的照片都复制或移动到一个用户指定的文件夹中，方便后续对照片的操作。

### Installation
首先需要安装Node.js -> https://nodejs.org/en/download/
```bash
git clone git@github.com:ovack/collectpic.git
cd collectpic
npm install
```

### Usage

打开配置文件`conf.coffee`
```bash
将`sourceFilePath`的值设置为照片图库的地址
将`destinationPath`的值设置为目标路径
开始运行：
npm start
```
