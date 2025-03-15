# MultifunctionalWebFront

基於 **ASP.NET Core Web API** 與 **HTML + JavaScript** 的 **任務管理** 及 **記帳管理** 應用程式。提供 API 服務來管理待辦事項與收支記錄，並配有簡單的前端介面。

## 功能概述

### 任務管理 (Task Manager)
- 取得所有任務 (`GET /api/tasks`)
- 新增任務 (`POST /api/tasks`)
- 切換任務狀態 (`PUT /api/tasks/{id}`)

### 記帳管理 (Expense Tracker)
- 取得所有記帳記錄 (`GET /api/expenses`)
- 新增記帳 (`POST /api/expenses`)
- 刪除記帳 (`DELETE /api/expenses/{id}`)

---

## 環境需求

- .NET 6.0 或更新版本
- ASP.NET Core Web API

## 執行
```
dotnet run
```
