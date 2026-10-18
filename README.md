
Wallpapers generated via WebGPU
----

Demo https://webgpu.art/wallpapers/ .


### Workflow

使用配对 Calcit / `@calcit/procs` **0.30.1-alpha.4**（编译器仍为预发布版本）、Caps 0.1.1、Node.js 24、Yarn 4.18.0：

```sh
caps --strict --ci
corepack yarn install --immutable
caps verify --toolchain
corepack yarn dev
```

需要持续编译时，在另一个终端执行 `corepack yarn watch`。源码使用 `calcit.cirru`、`deps.cirru`；`js-out/`、`dist/` 不纳入版本控制。现有图片数据、原图地址和 Source 链接保留。

`corepack yarn build` 生成前端资源；CI 通过 `VITE_BASE_URL` 设置 `https://cos-sh.tiye.me/WebGPU-Art/wallpapers/`，使用 COS action v1.2.0 的 `public-base-url` 启用内置逐文件校验，不另加校验脚本。

部署需要 `COS_BUCKET`、`COS_SECRET_ID`、`COS_SECRET_KEY` 及原有 `rsync_private_key`。同仓库 PR 在独立 `pr/<PR>/<run>/<attempt>/` 前缀上传并使用 Action 内置 verify 校验，提前覆盖合并后才会执行的公开访问检查；外部 fork PR 不使用部署 secrets。生产上传前仍检查提交是否为 main HEAD，rsync 仍仅在该生产检查通过后执行；原服务器部署目录和现有图片存储路径不变。

生产工作流串行且不中途取消：上传开始后即使 main 有新提交，也先完成当前版本的 COS 和服务器部署，再处理队列中的新版本。HEAD 检查用于跳过尚未开始上传的过期构建，不承诺部署时刻与 main 原子同步；不重复查询来缩小但无法消除该时间窗口。

Respo 0.16.122、Reel 0.6.39、UI 0.7.41 和 js-ffi 0.2.3 使用精确正式 tag。Actions 同样使用精确正式 tag；这按维护者选择接受 tag 可移动的风险，不等价于 SHA pin 的不可变性。

### 迁移注意事项

原图、缩略图参数、Source 地址、持久化 key 与服务器部署目录保持不变。旧 Map 读取显式处理 Option；缺失或类型错误的必填字段仍报错，可选 Source 地址仍允许 nil。Reel 的开放回调入口先检查输入，再交给具体类型的 updater；不伪造函数或状态类型。

开发页面加 `?mode=dev` 可显示 Reel（快捷键 `Meta+Alt+Shift+K`）。实际浏览器模式由 URL 参数控制，不是编译进程的 `mode` 环境变量。

```sh
calcit --check-only --all-defs
calcit fix --workflow strict --verify
corepack yarn build
```

项目当前没有 definition-attached tests；上述门禁不能替代页面回归。HUD 函数仍有一处显式宿主签名信任，开放状态/图片 Map 也仍含 Dynamic，不宣称类型债务清零。COS 证书或源图访问异常时，不关闭内置 verify 或更改图片存储路径绕过错误。

### License

MIT
