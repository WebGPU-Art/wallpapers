# Wallpapers 的 Respo 使用说明

项目使用的精确正式模块版本见 [deps.cirru](../deps.cirru)，开发与部署见 [README](../README.md)。本文件不复制框架全套 API，也不维护旧 compact/cr 教程。

## 当前项目边界

- app.main：缓存挂载节点、维护 Reel、dispatch 与浏览器存储。挂载节点由 respo.ffi.browser/query-selector 返回；使用该框架的 DOM 能力边界，不直接把泛用 DOM host 断言成完整 Respo DOM。
- app.comp.container：编译期读取 content/images.cirru，倒序展示卡片。url/name 是必填 String；address 可缺失或 nil。保留原图 URL、缩略图参数、Source target 和卡片点击行为。
- app.updater 使用具体 Op。入口分别解码旧 Reel 控制和应用事件，更新器接收已校验的状态游标。
- app.schema：保持现有 :states/:cursor 数据结构；不以迁移为由改变状态树或持久化 key。

## 查询当前事实

```sh
calcit query defs app.comp.container --signatures
calcit query def app.comp.container/comp-image-card
calcit query def respo.ffi.browser/query-selector
calcit query def reel.typed/record-op
```

API 和类型以已安装版本 query 结果为准。公开字段返回 Option、事件用 Enum tuple；Calcit List 不是 JavaScript 可变数组。字符串 token 要带 | 前缀，子节点文本使用 <> 或 :inner-text，不直接把字符串当 Element。

先读 [结构化编辑约定](../Agents.md)，只通过 Calcit 官方工具改 Snapshot；完整 strict、构建与实际浏览器结果分别记录，不以其中一项代替其他验收。
