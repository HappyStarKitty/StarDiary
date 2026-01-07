# Chrome Extensions

## Extensions
chrome://extensions

content-scripts

- 必须有`matches`键（Array），指定要加载脚本的URL格式
- 可以有`js`和`css`键（Array），列出要加载到匹配页面的脚本 
- 可以有`run_at`键（String），指定脚本何时注入
    - `"document_start"`：对应正在加载，DOM在加载中
    - `"document_end"`：对应可交互，DOM已完成加载，但脚本和图像资源可能仍在加载
    - `"document_idle"`：对应完成，文档及其所有资源已完成加载

```json
"content_scripts": [
  {
    "matches": ["*://*.mozilla.org/*"],
    "js": ["borderify.js"]
  }
]
```

host-permissions

读取或修改主机数据的API

```json
"host_permissions": [
  "*://developer.mozilla.org/*",
  "*://*.example.org/*"
]
```

CC98连续搜索会得到403和404两个http errcode。ctrl+R可以重载，执行搜索并清空文本框内容。

### content-script.js

内容脚本：
- 与网页内容交互
- 有限的API访问
- 网页环境隔离

### background.js

背景脚本：
- 扩展的核心逻辑
- 完整的Chrome API访问
- 跨标签页通信中枢

### API

监听fetch请求响应

1. 使用chrome.webRequest API
2. 内容脚本注入
3. 使用chrome.devtools.network API

获取组件关联的脚本代码

1. 获取HTML内嵌`<script>` document.querySelectorAll("script")
2. 获取onclick或onchange element.onclick.toString()
3. 获取addEventListener绑定的事件 getEventListeners(element)
4. 监听所有addEventListener绑定 Hook EventTarget.prototype.addEventListener
5. 寻找远程js文件 document.querySelectorAll("script[src]")

定位到发送请求的函数

1. 在Network面板查看请求的Initiator
2. Event Listener Breakpoints设置断点，捕获请求事件

嵌入子组件

## Chrome API

### webRequest
- webRequest

- webRequestBlocking
    - 注册屏蔽事件处理脚本

- webRequestAuthProvider
    - 使用onAuthRequired方法的必需条件

事件
- onReceivedHeaders

