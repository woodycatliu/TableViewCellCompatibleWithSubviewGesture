#  UITableView 與 subview 觸控解衝突心得報告

##### 屬性解說

**TextView Gesture**  
UITextView 原生Text 輸入元件，自帶有以設計好的觸控事件。
包括長按複製、URL Link 跳轉等。
而這些功能是使用 UIGestureRecognizer 實現的。

- UITextInteractionNameInteractiveLoupe: TextView 非單點手勢觸控事件名稱（諸如：長按、拖移等）
- UITextInteractionNameSingleTap: TextView 單點事件
- UITextInteractionNameLinkTap: TextView 自帶 Link 的點擊事件
