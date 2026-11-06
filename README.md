
Wallpapers generated via WebGPU
----

Demo https://webgpu.art/wallpapers/ .


### Workflow

使用配对的正式 Calcit / `@calcit/procs` **0.35.1**、Caps 0.1.1、Node.js 24、Yarn 4.18.0：

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

Respo 0.19.4、Reel 0.9.2、UI 0.15.1 和 js-ffi 0.2.13 使用精确正式 tag。Actions 同样使用精确正式 tag；这按维护者选择接受 tag 可移动的风险，不等价于 SHA pin 的不可变性。

### 0.35.1 使用者影响

升级后重新安装依赖并构建。原图、缩略图参数、Source 地址与存档格式继续沿用。图库记录使用 `Wallpaper`，可选来源使用 `Option<String>`。开发面板在 Respo 的受管理 memo 帧内渲染。

### 0.32.1 迁移记录

CLI 与 runtime 更新为 0.32.1，并用官方格式化迁移新的类型标注语法。
当前恢复存档成功后才注册自动保存和离页/可见性保存；坏存档恢复失败时仍报告原错误，
不会用默认值替代失败输入。正常存档格式、key 和 60 秒保存间隔保持不变。

19 个定义仅 main! 的恢复节点调整顺序，其余执行代码、schema 和元数据保持。
入口显式声明既有开放 dispatch 合同，Reel 匿名控制与原 Enum 检查/受检 updater 入口保留，
不把开放 callback 假标为单一名义 Op，也不放宽业务类型。UI 0.9.0 的 Router
0.9.0-alpha.4 沿用其已发布依赖图。

本轮 Caps strict 五个模块和工具链校验、Yarn immutable、198/198 全定义检查（含依赖）、
strict workflow（diagnostics=[]）与前端构建通过。新解析候选版本的 npm 包龄设为 60 分钟，
正常复用 yarn.lock 时不重新等待。移除原零包龄、
全局 Git 白名单和显式启用脚本配置。CLI 安装显式跟随 deps.cirru。
Dependabot 保留检查和构建，但不尝试使用普通部署 secrets 上传预览。

实际正常/开发模式、Reel 开关和重绘通过，页面原图卡片及 Source 链接保留，error/warn 为空。
已在独立回环来源用合成 workflow=|not-a-store 验证：启动仍报告原恢复错误，
超过原 60 秒周期、离页、再次启动与刷新后原文均保持，不回退默认数据。
该检查只证明实际拒绝恢复时不会启用保存，不等于完整存档结构验证。

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
