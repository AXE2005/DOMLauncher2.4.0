.class public Lorg/chromium/content/browser/accessibility/LollipopBrowserAccessibilityManager;
.super Lorg/chromium/content/browser/accessibility/JellyBeanBrowserAccessibilityManager;
.source "LollipopBrowserAccessibilityManager.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# direct methods
.method constructor <init>(JLorg/chromium/content/browser/ContentViewCore;)V
    .locals 0
    .param p1, "nativeBrowserAccessibilityManagerAndroid"    # J
    .param p3, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/accessibility/JellyBeanBrowserAccessibilityManager;-><init>(JLorg/chromium/content/browser/ContentViewCore;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected addAccessibilityNodeInfoActions(Landroid/view/accessibility/AccessibilityNodeInfo;IZZZZZZZ)V
    .locals 1
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "virtualViewId"    # I
    .param p3, "canScrollForward"    # Z
    .param p4, "canScrollBackward"    # Z
    .param p5, "clickable"    # Z
    .param p6, "editableText"    # Z
    .param p7, "enabled"    # Z
    .param p8, "focusable"    # Z
    .param p9, "focused"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 109
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_NEXT_HTML_ELEMENT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 110
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PREVIOUS_HTML_ELEMENT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 111
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_NEXT_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 112
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 114
    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    .line 115
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_TEXT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 116
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 119
    :cond_0
    if-eqz p3, :cond_1

    .line 120
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 123
    :cond_1
    if-eqz p4, :cond_2

    .line 124
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 127
    :cond_2
    if-eqz p8, :cond_3

    .line 128
    if-eqz p9, :cond_6

    .line 129
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 135
    :cond_3
    :goto_0
    iget v0, p0, Lorg/chromium/content/browser/accessibility/LollipopBrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne v0, p2, :cond_7

    .line 136
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 141
    :cond_4
    :goto_1
    if-eqz p5, :cond_5

    .line 142
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 144
    :cond_5
    return-void

    .line 131
    :cond_6
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    .line 137
    :cond_7
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/LollipopBrowserAccessibilityManager;->mVisible:Z

    if-eqz v0, :cond_4

    .line 138
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1
.end method

.method protected setAccessibilityEventCollectionInfo(Landroid/view/accessibility/AccessibilityEvent;IIZ)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "rowCount"    # I
    .param p3, "columnCount"    # I
    .param p4, "hierarchical"    # Z

    .prologue
    .line 80
    return-void
.end method

.method protected setAccessibilityEventCollectionItemInfo(Landroid/view/accessibility/AccessibilityEvent;IIII)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "rowIndex"    # I
    .param p3, "rowSpan"    # I
    .param p4, "columnIndex"    # I
    .param p5, "columnSpan"    # I

    .prologue
    .line 94
    return-void
.end method

.method protected setAccessibilityEventHeadingFlag(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "heading"    # Z

    .prologue
    .line 87
    return-void
.end method

.method protected setAccessibilityEventLollipopAttributes(Landroid/view/accessibility/AccessibilityEvent;ZZZZII)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "canOpenPopup"    # Z
    .param p3, "contentInvalid"    # Z
    .param p4, "dismissable"    # Z
    .param p5, "multiLine"    # Z
    .param p6, "inputType"    # I
    .param p7, "liveRegion"    # I

    .prologue
    .line 73
    return-void
.end method

.method protected setAccessibilityEventRangeInfo(Landroid/view/accessibility/AccessibilityEvent;IFFF)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "rangeType"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "current"    # F

    .prologue
    .line 101
    return-void
.end method

.method protected setAccessibilityNodeInfoCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IIZ)V
    .locals 1
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "rowCount"    # I
    .param p3, "columnCount"    # I
    .param p4, "hierarchical"    # Z

    .prologue
    .line 45
    invoke-static {p2, p3, p4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 47
    return-void
.end method

.method protected setAccessibilityNodeInfoCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IIIIZ)V
    .locals 1
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "rowIndex"    # I
    .param p3, "rowSpan"    # I
    .param p4, "columnIndex"    # I
    .param p5, "columnSpan"    # I
    .param p6, "heading"    # Z

    .prologue
    .line 52
    invoke-static {p2, p3, p4, p5, p6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 54
    return-void
.end method

.method protected setAccessibilityNodeInfoLollipopAttributes(Landroid/view/accessibility/AccessibilityNodeInfo;ZZZZII)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "canOpenPopup"    # Z
    .param p3, "contentInvalid"    # Z
    .param p4, "dismissable"    # Z
    .param p5, "multiLine"    # Z
    .param p6, "inputType"    # I
    .param p7, "liveRegion"    # I

    .prologue
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 35
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 36
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    .line 37
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    .line 38
    invoke-virtual {p1, p6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    .line 39
    invoke-virtual {p1, p7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    .line 40
    return-void
.end method

.method protected setAccessibilityNodeInfoRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IFFF)V
    .locals 1
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "rangeType"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "current"    # F

    .prologue
    .line 59
    invoke-static {p2, p3, p4, p5}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 61
    return-void
.end method
