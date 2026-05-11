---
title: "Markdown 示例"
description:
  '摄影：<a class="underline" href="https://unsplash.com/es/@adrigeo_?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Adrianna Geo</a> 来自 <a href="https://unsplash.com/es/fotos/una-pintura-en-el-techo-de-un-edificio-1rBg5YSi00c?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash" class="underline">Unsplash</a>
  '
icon: "1"
pubDate: "Jul 08 2022"
heroImage: "/src/assets/adriana.webp"
---

此示例来自 https://markdown-it.github.io/

---

**广告 :)**

- **[pica](https://nodeca.github.io/pica/demo/)** - 浏览器端高质量快速图片缩放。
- **[babelfish](https://github.com/nodeca/babelfish/)** - 开发者友好的
  i18n 方案，支持复数形式和简洁语法。

你会喜欢这些项目的！

---

# h1 标题 8-)

## h2 标题

### h3 标题

#### h4 标题

##### h5 标题

###### h6 标题

## 水平分割线

---

---

---

## 排版替换

启用 typographer 选项查看效果。

(c) (C) (r) (R) (tm) (TM) (p) (P) +-

test.. test... test..... test?..... test!....

!!!!!! ???? ,, -- ---

"智能引号，双引号" 和 '单引号'

## 强调

**这是粗体文本**

**这是粗体文本**

_这是斜体文本_

_这是斜体文本_

~~删除线~~

## 引用

> 引用也可以嵌套...
>
> > ...通过使用额外的 > 符号紧挨在一起...
> >
> > > ...或者用空格分隔箭头。

## 列表

无序列表

- 以 `+`、`-` 或 `*` 开头创建列表
- 子列表通过缩进 2 个空格实现：
  - 改变标记符号会强制开始新列表：
    - Ac tristique libero volutpat at
    * Facilisis in pretium nisl aliquet
    - Nulla volutpat aliquam velit
- 非常简单！

有序列表

1. Lorem ipsum dolor sit amet
2. Consectetur adipiscing elit
3. Integer molestie lorem at massa

4. 你可以使用顺序编号...
5. ...或者所有编号都用 `1.`

从指定序号开始：

57. foo
1. bar

## 代码

行内 `代码`

缩进代码

    // 一些注释
    line 1 of code
    line 2 of code
    line 3 of code

代码块

```
示例文本在此...
```

语法高亮

```js
var foo = function (bar) {
  return bar++;
};

console.log(foo(5));
```

## 表格

| 选项   | 描述                                                                     |
| ------ | ------------------------------------------------------------------------ |
| data   | 数据文件路径，用于提供传递给模板的数据。                                   |
| engine | 用于处理模板的引擎。默认使用 Handlebars。                                 |
| ext    | 用于目标文件的扩展名。                                                    |

右对齐列

| 选项   |                                                                     描述 |
| -----: | -----------------------------------------------------------------------: |
|   data | 数据文件路径，用于提供传递给模板的数据。                                   |
| engine |    用于处理模板的引擎。默认使用 Handlebars。                               |
|    ext |                                      用于目标文件的扩展名。                |

## 链接

[链接文本](http://dev.nodeca.com)

[带标题的链接](http://nodeca.github.io/pica/demo/ "标题文本！")

自动转换链接 https://github.com/nodeca/pica （启用 linkify 查看）

## 图片

![Minion](https://octodex.github.com/images/minion.png)
![Stormtroopocat](https://octodex.github.com/images/stormtroopocat.jpg "The Stormtroopocat")

与链接一样，图片也支持脚注语法

![Alt text][id]

稍后在文档中定义 URL 位置：

[id]: https://octodex.github.com/images/dojocat.jpg "The Dojocat"

## 插件

`markdown-it` 的杀手级功能是对
[语法插件](https://www.npmjs.org/browse/keyword/markdown-it-plugin) 的强大支持。

### [表情](https://github.com/markdown-it/markdown-it-emoji)

> 经典标记：:wink: :cry: :laughing: :yum:
>
> 快捷方式（颜文字）：:-) :-( 8-) ;)

参见 [如何更改输出](https://github.com/markdown-it/markdown-it-emoji#change-output) 使用 twemoji。

### [下标](https://github.com/markdown-it/markdown-it-sub) / [上标](https://github.com/markdown-it/markdown-it-sup)

- 19^th^
- H~2~O

### [\<ins>](https://github.com/markdown-it/markdown-it-ins)

++插入文本++

### [\<mark>](https://github.com/markdown-it/markdown-it-mark)

==标记文本==

### [脚注](https://github.com/markdown-it/markdown-it-footnote)

脚注 1 链接[^first]。

脚注 2 链接[^second]。

行内脚注^[行内脚注文本] 定义。

重复脚注引用[^second]。

[^first]: 脚注 **可以包含标记**

    以及多个段落。

[^second]: 脚注文本。

### [定义列表](https://github.com/markdown-it/markdown-it-deflist)

术语 1

: 定义 1
带延迟续行。

术语 2 带 _行内标记_

: 定义 2

        { 一些代码，属于定义 2 }

    定义 2 的第三段。

_紧凑风格：_

术语 1
~ 定义 1

术语 2
~ 定义 2a
~ 定义 2b

### [缩写](https://github.com/markdown-it/markdown-it-abbr)

这是一个 HTML 缩写示例。

它会转换 "HTML"，但保持部分匹配如 "xxxHTMLyyy" 等不变。

\*[HTML]: 超文本标记语言

### [自定义容器](https://github.com/markdown-it/markdown-it-container)

::: warning
_这里有龙_
:::
