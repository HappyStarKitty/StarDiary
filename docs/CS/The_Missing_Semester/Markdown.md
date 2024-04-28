# Markdown
## 基础语法
### 分点
如果正文中你有两部分要分点，注意符号不能相同
### 表格
```markdown
| biatou | biaotou |
| :- | :- |
| 表头 |  |
|  |  |
|  |  |

```

### 高亮
#### 语法
```markdown
<mark>文字内容<mark>
```
#### 预览
<mark>文字内容<mark>

### 收起
#### 语法
```markdown
<details>
<summary>点击展开/收起</summary>
文字内容
</details>
```
#### 预览

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Markdown Text Box</title>
<style>
.markdown-box {
  border: 1px solid #ccc;
  border-radius: 5px;
  padding: 10px;
  margin-bottom: 20px;
  background-color: #f9f9f9;
  font-family: Arial, sans-serif;
  line-height: 1.6;
}

.markdown-box p {
  margin: 0;
}

.markdown-box code {
  background-color: #f0f0f0;
  padding: 2px 5px;
  border-radius: 3px;
}

.markdown-box pre {
  background-color: #f0f0f0;
  padding: 10px;
  border-radius: 5px;
  overflow-x: auto;
}

</style>
</head>
<body>

<div class="markdown-box">
  <p>This is a paragraph with <code>inline code</code>.</p>
  <p>Here is a code block:</p>
  <pre><code>def greet():
    print("Hello, world!")
greet()</code></pre>
  <p>Markdown *italic* and **bold** text.</p>
</div>

</body>
</html>
