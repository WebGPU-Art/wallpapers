# Wallpapers 的 Calcit 开发约定

先读 [README](README.md) 和 [Respo 使用说明](llms/Respo.md)。工具链和模块版本以 deps.cirru、package.json、yarn.lock 为准；编译器 0.30.1-alpha.4 仍是预发布。

## 结构化源码

唯一 Snapshot 是 calcit.cirru；不创建 compact.cirru 或 package.cirru，也不提交 js-out/、dist/、.calcit/。禁止文本读取、替换或直接 patch Snapshot，使用当前 Calcit 的 query/tree/edit/config 命令。

首次修改前读取 `calcit docs agents --contract`，核对 `calcit -v`、`calcit query config`。命令以当前 `--help` 为准，旧 guidebook 不作为新 API 的证据。

```sh
calcit query defs app.main --signatures
calcit query def app.main/dispatch!
calcit query search '&map:get' --filter app.main --exact
```

先查看实际 subtree，再准备最小事务。用 `edit transaction --dry-run` 返回的 scoped_revision 对同一组操作执行 `--expect-revision`；失败后重新查询，不跳过冲突检查。格式化也先预览。不要把 cursor 视图标记写回源码。

## 类型和行为

- Map 读取使用 get 的 Option 合同；必填字段错误不能变成默认空数据，可选 Source 地址保留 nil。
- 宿主值使用已发布 js-ffi / Respo 入口；挂载节点用 respo.ffi.browser/query-selector，不伪造 DOM 类型。
- Reel 的开放回调在 reel-updater-adapter 检查实际输入，具体 updater 的合同不放宽。
- 真正的错误先确认所属模块并查已有 issue，再附最小复现上报；不修改共享缓存，不添加编译器硬编码规则。
- HUD 现有一处宿主函数签名信任与开放 Map 的 Dynamic 必须如实记录，不能用伪断言清零。

## 验收与部署

```sh
calcit --check-only --all-defs
calcit fix --workflow strict --verify
calcit test --list
corepack yarn build
```

当前无附带测试；不要把零测试当通过。页面还需检查默认模式、?mode=dev、Reel 开关和重绘。原图、Source、持久化 key、CDN 和服务器目录保持不变。

COS 只处理前端资源，继续使用 Action 自带 verify。不要添加重复上传验证脚本、concurrently 或额外 runner。PR 不部署生产；合并 main 会部署，须遵守维护者授权。精确正式 Action tag 可移动，不宣传为不可变供应链保护。
