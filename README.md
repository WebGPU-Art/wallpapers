
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

部署需要 `COS_BUCKET`、`COS_SECRET_ID`、`COS_SECRET_KEY` 及原有 `rsync_private_key`。只有 main 当前提交上传生产资源，PR 仅检查和构建；原服务器部署目录和现有图片存储路径不变。

Respo、Reel、UI 和 js-ffi 暂用兼容 Calcit 0.27 的已发布预发布版本；不引用浮动 main 或模块提交 hash，后续优先升级兼容正式版。

### License

MIT
