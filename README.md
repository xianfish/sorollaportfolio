# 索罗亚作品集

![./preview.png](./preview.png)

欢迎来到我的个人作品集演示仓库！这个项目展示了个人作品集网站的一个示例，涵盖了我的作品、技能和项目等 Web 开发的各个方面。

- 已部署项目地址：[https://sorolla.netlify.app/](https://sorolla.netlify.app/)
- Astro 网页模板：<https://astro.build/themes/details/sorollaportfolio/>

## 📂 项目结构

- **public/**：包含公共资源，如图片和字体。
- **src/**：包含作品集的源代码。
- **.gitignore**：指定 Git 忽略的文件和目录。
- **astro.config.mjs**：Astro 配置文件。
- **package.json**：列出项目依赖和脚本。
- **tailwind.config.mjs**：Tailwind CSS 配置文件。
- **tsconfig.json**：TypeScript 配置文件。

### 🧭 /src 目录结构

`/src` 目录包含项目的主要源代码。以下是其结构概览：

```bash
src
├── assets
│   ├── adriana.webp
│   ├── euro.webp
│   ├── fran.webp
│   └── hero.webp
├── components
│   ├── BaseHead.astro
│   ├── Footer.astro
│   ├── FormattedDate.astro
│   ├── Header.astro
│   ├── HeaderLink.astro
│   ├── Hero.astro
│   └── WhatIDo.astro
├── consts.ts
├── content
│   └── blog
│       └── Markdown 格式的内容
├── content.config.ts
├── icons
│   ├── 1.svg
│   ├── 2.svg
│   ├── 3.svg
│   ├── 4.svg
│   ├── 5.svg
│   ├── beach.svg
│   ├── github.svg
│   ├── linkedin.svg
│   ├── paint.svg
│   └── web.svg
├── layouts
│   └── BlogPost.astro
├── pages
│   ├── about.astro
│   ├── blog
│   │   ├── index.astro
│   │   └── [...slug].astro
│   ├── index.astro
│   └── rss.xml.js
└── styles
    ├── global.css
    └── hamburgers.css
```

#### 说明

- **assets**：包含项目中使用的图片文件。
- **components**：包含使用 Astro 构建的可复用 UI 组件。
- **content**：包含 Markdown 格式的博客内容。
- **content.config.ts**：内容集合的配置文件。
- **icons**：包含项目中使用的 SVG 图标文件。
- **layouts**：包含布局组件。
  - `BlogPost.astro`：博客文章的布局组件。
- **pages**：包含网站的主要页面。
  - `blog/index.astro`：博客列表页。
  - `blog/[...slug].astro`：单篇博客文章的动态路由。
- **styles**：包含全局和组件级别的 CSS 文件。
  - `global.css`：项目的全局样式。
  - `hamburgers.css`：汉堡菜单的样式。

这种结构有助于组织项目文件，使项目更易于维护和扩展。

## 🚀 快速开始

在本地运行此项目：

1. **克隆仓库：**

   ```bash
   git clone https://github.com/jramma/sorollaportfolio.git
   cd sorollaportfolio
   ```

2. **安装依赖：**

   ```bash
   pnpm install
   ```

3. **启动开发服务器：**

   ```bash
   pnpm run dev
   ```

   应用将在 `http://localhost:4321` 可用。

## 🛠️ 技术栈

- **Astro**：现代静态网站构建工具。
- **Tailwind CSS**：实用优先的 CSS 框架。
- **TypeScript**：静态类型的编程语言。

## 📄 许可证

本项目基于 [MIT 许可证](LICENSE) 授权。
