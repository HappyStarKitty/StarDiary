Frontend
前端语言
HTML
HTML 介绍
超文本标记语言，定义内容结构和语义
大小写不敏感
文件基本结构
<!doctype html> <!-- HTML5标准网页声明 -->
<html> <!-- 根标签，代表整个网页 -->

<head> <!-- 头部标签，一般用来描述文档的各种属性和信息 -->
  <meta charset="UTF-8"> <!-- 设置字符集为 UTF-8 -->
  <tltle>Page Title <!-- 设置浏览器的标题 -->
</head>

<body>
  Page Content
</body>

</html>
元素由开始标签、内容、结束标签构成，可分为块级元素和内联元素
%块级元素
<p>段落元素</p>
<i>斜体文本</i>
<a>超链接</a>
%内联元素
<em>斜体元素</em>
<strong>强调元素</strong>
HTML 元信息
空元素可用来嵌入一些东西
<img
src=""
alt=""/>
CSS 和 JS 分别使用 <link> 和 <script> 元素
Lang 属性设定主语言
HTML 文本处理基础
标题元素标签 <h1> 到 <h6>
无序列表标签 <ul> 
有序列表标签 <ol>
列表项目 <li>
创建超链接
<p>
  我创建了一个指向
  <a href="https://www.mozilla.org/zh-CN/">Mozilla 主页</a>的链接。
</p>

<!--图片链接-->
<a href="https://developer.mozilla.org/zh-CN/">
  <img src="mdn_logo.svg" alt="MDN Web 文档主页" />
</a>

文档片段
<h2 id="Mailing_address">邮寄地址</h2>
<p>本页面底部可以找到<a href="#Mailing_address">公司邮寄地址</a>。</p>
文本格式进阶
描述列表 列表用 <dl> 闭合，每一项用 <dt> 闭合，每个描述用 <dd> 闭合
块引用 使用 <blockqutoe> ，在 cite 属性中用 URL 指向引用资源
行内引用 类似，使用 <q>
缩略语 <abbr>
地址 <address>
上标 <sup> 下标 <sub>
标记代码 <code>
保留空白字符 <pre>
标记具体变量名 <var>
标记键盘输入 <kdd>
标记程序输出 <samp>
标记时间和日期 <time>
文档与网站架构
页眉 <header>
导航栏 <nav>
主内容 <main>
侧边栏 <aside>
页脚 <footer>
<span> 和 <div>
换行 <br>
主题性中断 <hr>
HTML 调试
HTML 表格

CSS
层叠样式表，设计风格和布局
一些属性
- Transform
- Back-ground-image 使用特定的渐变值
- Color 使用特定的 rgb 和 hsl 值
- 单位长度 
  - px 为固定像素 
  - em 相对于父元素 
  - rem 相对于根元素
  - 后两者适用于响应式布局
Color font-size
CSS 的组成
外部样式表 
内部样式表  <style>
内联
层叠规则 类选择器 > 元素选择器 较早出现的选择器 > 较晚出现的选择器
函数 函数名+括号 如 clac() rotate()
@规则 如@import @media
注释
/*-------------------*/
Css 如何工作
1. 浏览器载入 HTML 文件
2. 将 HTML 文件转化成一个 DOM
3. 拉去资源
4. 进行解析
5. 渲染树布局
6. 着色
CSS 基础
控制继承
Inherit 开启继承
Initial 初始值
revert 重置
Revert-layer 重置为上一个层叠层建立值
Unset 自然继承和inherit一样，否则和 initial 相同

样式化文本
CSS 排版
Java Script
JavaScript 第一步
API 应用程序接口
<script>
Let 创建变量 const 创建常量
比较运算符 ===全等 !==不相等
事件监听器
事件处理器
控制台打印 console.log(string);
${} 可以包裹变量或表达式
查找子字符串 indexOf()
toLowerCase toUpperCase 大小写转换
split() toString 数组转字符串
Push() pop() 在数组末尾添加或删除一个项目
Unshift() shift（） 作用在数组开始
Join()
replace()
random

JavaScript 基础
匿名函数 function event(){} === (event)=>
Map 数组映射
JavaScript 对象介绍
面向对象
类与实例 继承 封装
使用 JSON
JavaScript 对象表示法
parse() 以文本字符串接收 JSON 对象作为参数，并返回响应对象
stringify() 接收一个对象作为参数，返回一个对应的 JSON 字符串
异步 JavaScript
fetch() 发起 HTTP 请求
getUserMedia() 访问用户的摄像头和麦克风
showOpenFilePicker() 请求用户选择文件以供访问
worker 在单独执行的线程中运行一些任务
客户端 Web API
Api 抽象复杂的代码，并提供一些简单的接口规则直接使用
Svg 可缩放矢量图形
<canvas> 创建 2D 或 3D 场景
beginPath() 绘制路径
moveTo() 钢笔移动到另一个坐标点
fill() 填充颜色绘制新的填充形状
视频 <video>
音频 <audio>
Fetch API
网络请求方式
基本使用
- fetch() 函数接受一个 URL 作为参数,返回一个 Promise 对象。
- 通过 .then() 链式调用,可以对返回的响应进行处理,如将响应体转换为 JSON 数据。
- .catch() 用于捕获请求过程中的错误。
传递请求选项
- 通过在 fetch() 函数的第二个参数中传递一个对象,可以指定请求的选项,如 HTTP 方法、请求头、请求体等。
处理JSON响应
- 在处理响应时,可以先检查响应状态码是否成功,然后再将响应体转换为 JSON 格式。
异步/await语法糖
- 使用 async/await 语法可以更简洁地处理异步操作,避免嵌套的 .then() 链。