# Markdown
## 基础语法
### Code
#### 语法
行内代码
```markdown
行内代码`print("hello world")`
```
#### 预览
行内代码`print("hello world)`
### Part
如果正文中你有多部分要分点，注意符号不能相同
### Table
#### 语法
```markdown
| segment 1 | segment 2 |
| :-: | :-: |
| content 1 | content 2 |
```
#### 预览
| segment 1 | segment 2 |
| :-: | :-:|
| content 1 | content 2 |

### Highlight
#### 语法
```markdown
<mark>highlight content<mark>
```
#### 预览
<mark>highlight content<mark>

### 收起
#### 语法
```markdown
<details>
<summary>点击展开/收起</summary>
文字内容
</details>
```
#### 预览
<details>
<summary>点击展开/收起</summary>
text content
</details>

## 扩展语法
### 提示框
#### 语法
```markdown
!!! note ""
    note content
```
#### 预览
!!! note
    note content
### 内部引用
#### 语法
```markdown
[内部引用](#内部引用)
```
#### 预览
[内部引用](#内部引用)

