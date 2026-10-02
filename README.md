
Wallpapers generated via WebGPU
----

Demo https://webgpu.art/wallpapers/ .


### Workflow

使用 Calcit 0.27.0、Caps 0.1.1、Node.js 24、Yarn 4.18.0：

```sh
caps --ci
corepack yarn install --immutable
caps verify --toolchain
corepack yarn dev
```

需要持续编译时，在另一个终端执行 `corepack yarn watch`。源码使用 `calcit.cirru`、`deps.cirru`；`js-out/`、`dist/` 不纳入版本控制。现有图片数据、原图地址和 Source 链接保留。

`corepack yarn build` 生成前端资源；CI 通过 `VITE_BASE_URL` 设置 `https://cos-sh.tiye.me/WebGPU-Art/wallpapers/`，使用 COS action v1.2.0 的 `public-base-url` 启用内置逐文件校验，不另加校验脚本。

部署需要 `COS_BUCKET`、`COS_SECRET_ID`、`COS_SECRET_KEY` 及原有 `rsync_private_key`。上传前检查提交是否仍是 main HEAD，PR 仅检查和构建；原服务器部署目录和现有图片存储路径不变。

生产工作流串行且不中途取消：上传开始后即使 main 有新提交，也先完成当前版本的 COS 和服务器部署，再处理队列中的新版本。HEAD 检查用于跳过尚未开始上传的过期构建，不承诺部署时刻与 main 原子同步；不重复查询来缩小但无法消除该时间窗口。

Respo、Reel、UI 和 js-ffi 暂用兼容 Calcit 0.27 的已发布预发布版本；不引用浮动 main 或模块提交 hash，后续优先升级兼容正式版。

### License

MIT
