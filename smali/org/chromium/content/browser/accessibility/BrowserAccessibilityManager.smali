.class public Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;
.super Ljava/lang/Object;
.source "BrowserAccessibilityManager.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
.field private static final ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE:Ljava/lang/String; = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

.field private static final ACTION_SET_TEXT:I = 0x200000

.field private static final TAG:Ljava/lang/String; = "BrowserAccessibilityManager"


# instance fields
.field protected mAccessibilityFocusId:I

.field private mAccessibilityFocusRect:Landroid/graphics/Rect;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mCurrentRootId:I

.field private mIsHovering:Z

.field private mLastHoverId:I

.field private mNativeObj:J

.field private mNotifyFrameInfoInitializedCalled:Z

.field private mPendingScrollToMakeNodeVisible:Z

.field private final mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

.field private mSelectionEndIndex:I

.field private mSelectionGranularity:I

.field private mSelectionStartIndex:I

.field private final mTempLocation:[I

.field private mUserHasTouchExplored:Z

.field private final mView:Landroid/view/ViewGroup;

.field protected mVisible:Z


# direct methods
.method protected constructor <init>(JLorg/chromium/content/browser/ContentViewCore;)V
    .locals 2
    .param p1, "nativeBrowserAccessibilityManagerAndroid"    # J
    .param p3, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    const/4 v1, -0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mTempLocation:[I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mVisible:Z

    .line 92
    iput-wide p1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    .line 93
    iput-object p3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 94
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/ContentViewCore;->setBrowserAccessibilityManager(Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V

    .line 95
    iput v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mIsHovering:Z

    .line 97
    iput v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    .line 98
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    .line 99
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    .line 100
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 103
    return-void
.end method

.method private addAccessibilityNodeInfoChild(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "childId"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 665
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 666
    return-void
.end method

.method private announceLiveRegionText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 655
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 656
    return-void
.end method

.method private buildAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 7
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    const/4 v6, 0x0

    .line 501
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isFrameInfoInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v3, v6

    .line 519
    :cond_1
    :goto_0
    return-object v3

    .line 510
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 512
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    .line 513
    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 515
    iget-wide v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativePopulateAccessibilityEvent(JLandroid/view/accessibility/AccessibilityEvent;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 516
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    move-object v3, v6

    .line 517
    goto :goto_0
.end method

.method private static create(JLorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;
    .locals 2
    .param p0, "nativeBrowserAccessibilityManagerAndroid"    # J
    .param p2, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 79
    new-instance v0, Lorg/chromium/content/browser/accessibility/LollipopBrowserAccessibilityManager;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/accessibility/LollipopBrowserAccessibilityManager;-><init>(JLorg/chromium/content/browser/ContentViewCore;)V

    .line 85
    :goto_0
    return-object v0

    .line 81
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 82
    new-instance v0, Lorg/chromium/content/browser/accessibility/JellyBeanBrowserAccessibilityManager;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/accessibility/JellyBeanBrowserAccessibilityManager;-><init>(JLorg/chromium/content/browser/ContentViewCore;)V

    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;-><init>(JLorg/chromium/content/browser/ContentViewCore;)V

    goto :goto_0
.end method

.method private createNodeForHost(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5
    .param p1, "rootId"    # I

    .prologue
    .line 534
    iget-object v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 535
    .local v2, "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 536
    .local v3, "source":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 539
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 540
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 541
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 542
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 543
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 546
    iget-object v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 547
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 548
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 552
    :cond_0
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mVisible:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 553
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 554
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 555
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 558
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isFrameInfoInitialized()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 559
    iget-object v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 562
    :cond_1
    return-object v2

    .line 552
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private finishGranularityMove(Ljava/lang/String;ZIIZ)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "extendSelection"    # Z
    .param p3, "itemStartIndex"    # I
    .param p4, "itemEndIndex"    # I
    .param p5, "forwards"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 397
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    const/16 v1, 0x2000

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->buildAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    .line 399
    .local v6, "selectionEvent":Landroid/view/accessibility/AccessibilityEvent;
    if-nez v6, :cond_0

    .line 445
    :goto_0
    return-void

    .line 400
    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    const/high16 v1, 0x20000

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->buildAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    .line 402
    .local v7, "traverseEvent":Landroid/view/accessibility/AccessibilityEvent;
    if-nez v7, :cond_1

    .line 403
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 409
    :cond_1
    if-eqz p5, :cond_4

    .line 410
    iput p4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    .line 413
    :goto_1
    if-nez p2, :cond_2

    .line 414
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    .line 416
    :cond_2
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsEditableText(JI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    iget-wide v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    iget v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    iget v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetSelection(JIII)V

    .line 423
    :cond_3
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    invoke-virtual {v6, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 424
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    invoke-virtual {v6, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 425
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 429
    invoke-virtual {v7, p3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 430
    invoke-virtual {v7, p4}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 431
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 432
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    invoke-virtual {v7, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 433
    invoke-virtual {v7, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 436
    if-eqz p5, :cond_5

    .line 437
    const/16 v0, 0x100

    invoke-virtual {v7, v0}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 443
    :goto_2
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v6}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 444
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v7}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0

    .line 412
    :cond_4
    iput p3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    goto :goto_1

    .line 439
    :cond_5
    const/16 v0, 0x200

    invoke-virtual {v7, v0}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    goto :goto_2
.end method

.method private getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 523
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 524
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 525
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 526
    .restart local v0    # "bundle":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 528
    :cond_0
    return-object v0
.end method

.method private handleCheckStateChanged(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 595
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 596
    return-void
.end method

.method private handleContentChanged(I)V
    .locals 4
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/16 v3, 0x800

    .line 615
    iget-wide v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeGetRootId(J)I

    move-result v0

    .line 616
    .local v0, "rootId":I
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    if-eq v0, v1, :cond_0

    .line 617
    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    .line 618
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 622
    :goto_0
    return-void

    .line 620
    :cond_0
    invoke-direct {p0, p1, v3}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    goto :goto_0
.end method

.method private handleEditableTextChanged(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 605
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 606
    return-void
.end method

.method private handleFocusChanged(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 589
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 590
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    .line 591
    return-void
.end method

.method private handleHover(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 645
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    if-ne v0, p1, :cond_0

    .line 651
    :goto_0
    return-void

    .line 648
    :cond_0
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 649
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 650
    iput p1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    goto :goto_0
.end method

.method private handleNavigate()V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 626
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mUserHasTouchExplored:Z

    .line 630
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 631
    return-void
.end method

.method private handlePageLoaded(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 580
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mUserHasTouchExplored:Z

    if-eqz v0, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->shouldSetAccessibilityFocusOnPageLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToIdAndRefocusIfNeeded(I)V

    goto :goto_0
.end method

.method private handleScrollPositionChanged(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 635
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 636
    return-void
.end method

.method private handleScrolledToAnchor(I)V
    .locals 0
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    .line 641
    return-void
.end method

.method private handleSliderChanged(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 610
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 611
    return-void
.end method

.method private handleTextSelectionChanged(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 600
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 601
    return-void
.end method

.method private isFrameInfoInitialized()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 574
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentWidthCss()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightCss()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isValidMovementGranularity(I)Z
    .locals 1
    .param p0, "granularity"    # I

    .prologue
    .line 179
    packed-switch p0, :pswitch_data_0

    .line 185
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 183
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private jumpToElementType(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "elementType"    # Ljava/lang/String;
    .param p2, "forwards"    # Z

    .prologue
    .line 358
    iget-wide v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeFindElementType(JILjava/lang/String;Z)I

    move-result v6

    .line 359
    .local v6, "id":I
    if-nez v6, :cond_0

    const/4 v0, 0x0

    .line 362
    :goto_0
    return v0

    .line 361
    :cond_0
    invoke-direct {p0, v6}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    .line 362
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private moveAccessibilityFocusToId(I)Z
    .locals 3
    .param p1, "newAccessibilityFocusId"    # I

    .prologue
    const/4 v0, 0x0

    .line 448
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne p1, v1, :cond_0

    .line 467
    :goto_0
    return v0

    .line 450
    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 451
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 452
    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    .line 453
    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    .line 454
    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    .line 460
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    if-ne v0, v1, :cond_1

    .line 461
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetAccessibilityFocus(JI)V

    .line 465
    :goto_1
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    const v1, 0x8000

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 467
    const/4 v0, 0x1

    goto :goto_0

    .line 463
    :cond_1
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetAccessibilityFocus(JI)V

    goto :goto_1
.end method

.method private moveAccessibilityFocusToIdAndRefocusIfNeeded(I)V
    .locals 1
    .param p1, "newAccessibilityFocusId"    # I

    .prologue
    .line 474
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne p1, v0, :cond_0

    .line 475
    const/high16 v0, 0x10000

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 477
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 480
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    .line 481
    return-void
.end method

.method private native nativeAdjustSlider(JIZ)Z
.end method

.method private native nativeBlur(J)V
.end method

.method private native nativeClick(JI)V
.end method

.method private native nativeFindElementType(JILjava/lang/String;Z)I
.end method

.method private native nativeFocus(JI)V
.end method

.method private native nativeGetEditableTextSelectionEnd(JI)I
.end method

.method private native nativeGetEditableTextSelectionStart(JI)I
.end method

.method private native nativeGetRootId(J)I
.end method

.method private native nativeHitTest(JII)V
.end method

.method private native nativeIsEditableText(JI)Z
.end method

.method private native nativeIsNodeValid(JI)Z
.end method

.method private native nativeNextAtGranularity(JIZII)Z
.end method

.method private native nativePopulateAccessibilityEvent(JLandroid/view/accessibility/AccessibilityEvent;II)Z
.end method

.method private native nativePopulateAccessibilityNodeInfo(JLandroid/view/accessibility/AccessibilityNodeInfo;I)Z
.end method

.method private native nativePreviousAtGranularity(JIZII)Z
.end method

.method private native nativeScrollToMakeNodeVisible(JI)V
.end method

.method private native nativeSetAccessibilityFocus(JI)V
.end method

.method private native nativeSetSelection(JIII)V
.end method

.method private native nativeSetTextFieldValue(JILjava/lang/String;)V
.end method

.method private nextAtGranularity(IZ)Z
    .locals 7
    .param p1, "granularity"    # I
    .param p2, "extendSelection"    # Z

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->setGranularityAndUpdateSelection(I)V

    .line 382
    iget-wide v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    iget v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    iget v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeNextAtGranularity(JIZII)Z

    move-result v0

    return v0
.end method

.method private onNativeObjectDestroyed()V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getBrowserAccessibilityManager()Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/ContentViewCore;->setBrowserAccessibilityManager(Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V

    .line 110
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    .line 111
    iput-object v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 112
    return-void
.end method

.method private previousAtGranularity(IZ)Z
    .locals 7
    .param p1, "granularity"    # I
    .param p2, "extendSelection"    # Z

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->setGranularityAndUpdateSelection(I)V

    .line 389
    iget-wide v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    iget v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    iget v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativePreviousAtGranularity(JIZII)Z

    move-result v0

    return v0
.end method

.method private sendAccessibilityEvent(II)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 486
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 487
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->buildAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 492
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v0, :cond_0

    .line 493
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0
.end method

.method private setAccessibilityEventBooleanAttributes(Landroid/view/accessibility/AccessibilityEvent;ZZZZ)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "checked"    # Z
    .param p3, "enabled"    # Z
    .param p4, "password"    # Z
    .param p5, "scrollable"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 844
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 845
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 846
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 847
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 848
    return-void
.end method

.method private setAccessibilityEventClassName(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "className"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 852
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 853
    return-void
.end method

.method private setAccessibilityEventListAttributes(Landroid/view/accessibility/AccessibilityEvent;II)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "currentItemIndex"    # I
    .param p3, "itemCount"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 858
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 859
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 860
    return-void
.end method

.method private setAccessibilityEventScrollAttributes(Landroid/view/accessibility/AccessibilityEvent;IIII)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "maxScrollX"    # I
    .param p5, "maxScrollY"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 865
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 866
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 867
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 868
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 869
    return-void
.end method

.method private setAccessibilityEventSelectionAttrs(Landroid/view/accessibility/AccessibilityEvent;IIILjava/lang/String;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .param p4, "itemCount"    # I
    .param p5, "text"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 884
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 885
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 886
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 887
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    return-void
.end method

.method private setAccessibilityEventTextChangedAttrs(Landroid/view/accessibility/AccessibilityEvent;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "fromIndex"    # I
    .param p3, "addedCount"    # I
    .param p4, "removedCount"    # I
    .param p5, "beforeText"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 874
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 875
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 876
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 877
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 878
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    return-void
.end method

.method private setAccessibilityNodeInfoBooleanAttributes(Landroid/view/accessibility/AccessibilityNodeInfo;IZZZZZZZZZZ)V
    .locals 3
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "virtualViewId"    # I
    .param p3, "checkable"    # Z
    .param p4, "checked"    # Z
    .param p5, "clickable"    # Z
    .param p6, "enabled"    # Z
    .param p7, "focusable"    # Z
    .param p8, "focused"    # Z
    .param p9, "password"    # Z
    .param p10, "scrollable"    # Z
    .param p11, "selected"    # Z
    .param p12, "visibleToUser"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 674
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 675
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 676
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 677
    invoke-virtual {p1, p6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 678
    invoke-virtual {p1, p7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 679
    invoke-virtual {p1, p8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 680
    invoke-virtual {p1, p9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 681
    invoke-virtual {p1, p10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 682
    invoke-virtual {p1, p11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 683
    if-eqz p12, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mVisible:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 685
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 690
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne v0, p2, :cond_2

    .line 691
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 695
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 683
    goto :goto_0

    .line 692
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mVisible:Z

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    goto :goto_1
.end method

.method private setAccessibilityNodeInfoClassName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "className"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 744
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 745
    return-void
.end method

.method private setAccessibilityNodeInfoContentDescription(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "contentDescription"    # Ljava/lang/String;
    .param p3, "annotateAsLink"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 750
    if-eqz p3, :cond_0

    .line 751
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 752
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/URLSpan;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 753
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 757
    .end local v0    # "spannable":Landroid/text/SpannableString;
    :goto_0
    return-void

    .line 755
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setAccessibilityNodeInfoLocation(Landroid/view/accessibility/AccessibilityNodeInfo;IIIIIIIZ)V
    .locals 6
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "virtualViewId"    # I
    .param p3, "absoluteLeft"    # I
    .param p4, "absoluteTop"    # I
    .param p5, "parentRelativeLeft"    # I
    .param p6, "parentRelativeTop"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "isRootNode"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 765
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p5, p7

    add-int v4, p6, p8

    invoke-direct {v0, p5, p6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 767
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    if-eqz p9, :cond_0

    .line 769
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 771
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 774
    new-instance v1, Landroid/graphics/Rect;

    add-int v3, p3, p7

    add-int v4, p4, p8

    invoke-direct {v1, p3, p4, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 777
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollX()F

    move-result v3

    float-to-int v3, v3

    neg-int v3, v3

    iget-object v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollY()F

    move-result v4

    float-to-int v4, v4

    neg-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 781
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 782
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 783
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 784
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 787
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 791
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 792
    .local v2, "viewLocation":[I
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 793
    aget v3, v2, v5

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 795
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 802
    iget v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne p2, v3, :cond_1

    iget v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    if-eq p2, v3, :cond_1

    .line 803
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    if-nez v3, :cond_2

    .line 804
    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 810
    :cond_1
    :goto_0
    return-void

    .line 805
    :cond_2
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 806
    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 807
    invoke-direct {p0, p2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToIdAndRefocusIfNeeded(I)V

    goto :goto_0
.end method

.method private setAccessibilityNodeInfoParent(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "parentId"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 660
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 661
    return-void
.end method

.method private setGranularityAndUpdateSelection(I)V
    .locals 3
    .param p1, "granularity"    # I

    .prologue
    const/4 v1, -0x1

    .line 366
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    if-nez v0, :cond_0

    .line 367
    iput v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    .line 368
    iput v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    .line 370
    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    .line 371
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsEditableText(JI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeGetEditableTextSelectionStart(JI)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    .line 374
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeGetEditableTextSelectionEnd(JI)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    .line 377
    :cond_1
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
    .line 704
    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 705
    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 706
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 707
    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 709
    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    .line 710
    const/high16 v0, 0x200000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 711
    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 714
    :cond_0
    if-eqz p3, :cond_1

    .line 715
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 718
    :cond_1
    if-eqz p4, :cond_2

    .line 719
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 722
    :cond_2
    if-eqz p8, :cond_3

    .line 723
    if-eqz p9, :cond_6

    .line 724
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 730
    :cond_3
    :goto_0
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne v0, p2, :cond_7

    .line 731
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 736
    :cond_4
    :goto_1
    if-eqz p5, :cond_5

    .line 737
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 739
    :cond_5
    return-void

    .line 726
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    .line 732
    :cond_7
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mVisible:Z

    if-eqz v0, :cond_4

    .line 733
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1
.end method

.method protected createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p1, "virtualViewId"    # I

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    :cond_0
    move-object v0, v2

    .line 166
    :cond_1
    :goto_0
    return-object v0

    .line 144
    :cond_2
    iget-wide v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v3, v4}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeGetRootId(J)I

    move-result v1

    .line 146
    .local v1, "rootId":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_3

    .line 147
    invoke-direct {p0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->createNodeForHost(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_3
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isFrameInfoInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    move-object v0, v2

    .line 151
    goto :goto_0

    .line 154
    :cond_4
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 155
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 158
    if-ne p1, v1, :cond_5

    .line 159
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 162
    :cond_5
    iget-wide v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v3, v4, v0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativePopulateAccessibilityNodeInfo(JLandroid/view/accessibility/AccessibilityNodeInfo;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 165
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    move-object v0, v2

    .line 166
    goto :goto_0
.end method

.method protected findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyFrameInfoInitialized()V
    .locals 2

    .prologue
    .line 342
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNotifyFrameInfoInitializedCalled:Z

    if-eqz v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNotifyFrameInfoInitializedCalled:Z

    .line 348
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 352
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 353
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToIdAndRefocusIfNeeded(I)V

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 307
    iget-object v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    :cond_0
    move v4, v5

    .line 333
    :goto_0
    return v4

    .line 311
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    .line 312
    iput-boolean v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mIsHovering:Z

    .line 313
    iget-boolean v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mPendingScrollToMakeNodeVisible:Z

    if-eqz v6, :cond_2

    .line 314
    iget-wide v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v8, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v6, v7, v8}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeScrollToMakeNodeVisible(JI)V

    .line 317
    :cond_2
    iput-boolean v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mPendingScrollToMakeNodeVisible:Z

    goto :goto_0

    .line 321
    :cond_3
    iput-boolean v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mIsHovering:Z

    .line 322
    iput-boolean v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mUserHasTouchExplored:Z

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 324
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 327
    .local v3, "y":F
    iget-object v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v5, v2}, Lorg/chromium/content/browser/RenderCoordinates;->fromPixToLocalCss(F)F

    move-result v5

    float-to-int v0, v5

    .line 328
    .local v0, "cssX":I
    iget-object v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v5, v3}, Lorg/chromium/content/browser/RenderCoordinates;->fromPixToLocalCss(F)F

    move-result v5

    float-to-int v1, v5

    .line 332
    .local v1, "cssY":I
    iget-wide v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v5, v6, v0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeHitTest(JII)V

    goto :goto_0
.end method

.method protected performAction(IILandroid/os/Bundle;)Z
    .locals 10
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 194
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsNodeValid(JI)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    :cond_0
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    .line 199
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 300
    const/4 v0, 0x0

    goto :goto_0

    .line 201
    :sswitch_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 203
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mIsHovering:Z

    if-nez v0, :cond_3

    .line 204
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeScrollToMakeNodeVisible(JI)V

    .line 209
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 207
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mPendingScrollToMakeNodeVisible:Z

    goto :goto_1

    .line 213
    :sswitch_1
    const/high16 v0, 0x10000

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 215
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne v0, p1, :cond_4

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 219
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 221
    :sswitch_2
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeClick(JI)V

    .line 222
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 224
    const/4 v0, 0x1

    goto :goto_0

    .line 226
    :sswitch_3
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeFocus(JI)V

    .line 227
    const/4 v0, 0x1

    goto :goto_0

    .line 229
    :sswitch_4
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeBlur(J)V

    .line 230
    const/4 v0, 0x1

    goto :goto_0

    .line 232
    :sswitch_5
    if-nez p3, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :cond_5
    const-string v0, "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, "elementType":Ljava/lang/String;
    if-nez v6, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    .line 236
    :cond_6
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 237
    const/4 v0, 0x1

    invoke-direct {p0, v6, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->jumpToElementType(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 240
    .end local v6    # "elementType":Ljava/lang/String;
    :sswitch_6
    if-nez p3, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    .line 241
    :cond_7
    const-string v0, "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 243
    .restart local v6    # "elementType":Ljava/lang/String;
    if-nez v6, :cond_8

    const/4 v0, 0x0

    goto :goto_0

    .line 244
    :cond_8
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, v6, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->jumpToElementType(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 248
    .end local v6    # "elementType":Ljava/lang/String;
    :sswitch_7
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsEditableText(JI)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 249
    :cond_9
    if-nez p3, :cond_a

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 250
    :cond_a
    const-string v0, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 252
    .local v9, "newText":Ljava/lang/String;
    if-nez v9, :cond_b

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 253
    :cond_b
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v0, v1, p1, v9}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetTextFieldValue(JILjava/lang/String;)V

    .line 255
    iget-wide v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetSelection(JIII)V

    .line 256
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 259
    .end local v9    # "newText":Ljava/lang/String;
    :sswitch_8
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsEditableText(JI)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 260
    :cond_c
    const/4 v4, 0x0

    .line 261
    .local v4, "selectionStart":I
    const/4 v5, 0x0

    .line 262
    .local v5, "selectionEnd":I
    if-eqz p3, :cond_d

    .line 263
    const-string v0, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 265
    const-string v0, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 268
    :cond_d
    iget-wide v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetSelection(JIII)V

    .line 269
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 272
    .end local v4    # "selectionStart":I
    .end local v5    # "selectionEnd":I
    :sswitch_9
    if-nez p3, :cond_e

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 273
    :cond_e
    const-string v0, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 275
    .local v8, "granularity":I
    const-string v0, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 277
    .local v7, "extend":Z
    invoke-static {v8}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isValidMovementGranularity(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 278
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 280
    :cond_f
    invoke-direct {p0, v8, v7}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nextAtGranularity(IZ)Z

    move-result v0

    goto/16 :goto_0

    .line 283
    .end local v7    # "extend":Z
    .end local v8    # "granularity":I
    :sswitch_a
    if-nez p3, :cond_10

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 284
    :cond_10
    const-string v0, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 286
    .restart local v8    # "granularity":I
    const-string v0, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 288
    .restart local v7    # "extend":Z
    invoke-static {v8}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isValidMovementGranularity(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 289
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 291
    :cond_11
    invoke-direct {p0, v8, v7}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->previousAtGranularity(IZ)Z

    move-result v0

    goto/16 :goto_0

    .line 294
    .end local v7    # "extend":Z
    .end local v8    # "granularity":I
    :sswitch_b
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeAdjustSlider(JIZ)Z

    move-result v0

    goto/16 :goto_0

    .line 296
    :sswitch_c
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeAdjustSlider(JIZ)Z

    move-result v0

    goto/16 :goto_0

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x10 -> :sswitch_2
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x100 -> :sswitch_9
        0x200 -> :sswitch_a
        0x400 -> :sswitch_5
        0x800 -> :sswitch_6
        0x1000 -> :sswitch_b
        0x2000 -> :sswitch_c
        0x20000 -> :sswitch_8
        0x200000 -> :sswitch_7
    .end sparse-switch
.end method

.method protected setAccessibilityEventCollectionInfo(Landroid/view/accessibility/AccessibilityEvent;IIZ)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "rowCount"    # I
    .param p3, "columnCount"    # I
    .param p4, "hierarchical"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 912
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 913
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "AccessibilityNodeInfo.CollectionInfo.rowCount"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 914
    const-string v1, "AccessibilityNodeInfo.CollectionInfo.columnCount"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 915
    const-string v1, "AccessibilityNodeInfo.CollectionInfo.hierarchical"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 916
    return-void
.end method

.method protected setAccessibilityEventCollectionItemInfo(Landroid/view/accessibility/AccessibilityEvent;IIII)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "rowIndex"    # I
    .param p3, "rowSpan"    # I
    .param p4, "columnIndex"    # I
    .param p5, "columnSpan"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 930
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 931
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "AccessibilityNodeInfo.CollectionItemInfo.rowIndex"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 932
    const-string v1, "AccessibilityNodeInfo.CollectionItemInfo.rowSpan"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 933
    const-string v1, "AccessibilityNodeInfo.CollectionItemInfo.columnIndex"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 934
    const-string v1, "AccessibilityNodeInfo.CollectionItemInfo.columnSpan"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 935
    return-void
.end method

.method protected setAccessibilityEventHeadingFlag(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "heading"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 922
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 923
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "AccessibilityNodeInfo.CollectionItemInfo.heading"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 924
    return-void
.end method

.method protected setAccessibilityEventLollipopAttributes(Landroid/view/accessibility/AccessibilityEvent;ZZZZII)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "canOpenPopup"    # Z
    .param p3, "contentInvalid"    # Z
    .param p4, "dismissable"    # Z
    .param p5, "multiLine"    # Z
    .param p6, "inputType"    # I
    .param p7, "liveRegion"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 899
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 900
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "AccessibilityNodeInfo.canOpenPopup"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 901
    const-string v1, "AccessibilityNodeInfo.contentInvalid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 902
    const-string v1, "AccessibilityNodeInfo.dismissable"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 903
    const-string v1, "AccessibilityNodeInfo.multiLine"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 904
    const-string v1, "AccessibilityNodeInfo.inputType"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 905
    const-string v1, "AccessibilityNodeInfo.liveRegion"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 906
    return-void
.end method

.method protected setAccessibilityEventRangeInfo(Landroid/view/accessibility/AccessibilityEvent;IFFF)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "rangeType"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "current"    # F
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 941
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 942
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "AccessibilityNodeInfo.RangeInfo.type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 943
    const-string v1, "AccessibilityNodeInfo.RangeInfo.min"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 944
    const-string v1, "AccessibilityNodeInfo.RangeInfo.max"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 945
    const-string v1, "AccessibilityNodeInfo.RangeInfo.current"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 946
    return-void
.end method

.method protected setAccessibilityNodeInfoCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IIZ)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "rowCount"    # I
    .param p3, "columnCount"    # I
    .param p4, "hierarchical"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 827
    return-void
.end method

.method protected setAccessibilityNodeInfoCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IIIIZ)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "rowIndex"    # I
    .param p3, "rowSpan"    # I
    .param p4, "columnIndex"    # I
    .param p5, "columnSpan"    # I
    .param p6, "heading"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 833
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
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 821
    return-void
.end method

.method protected setAccessibilityNodeInfoRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IFFF)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "rangeType"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "current"    # F
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 839
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 130
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mVisible:Z

    if-ne p1, v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mVisible:Z

    .line 133
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method shouldExposePasswordText()Z
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 950
    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speak_password"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
