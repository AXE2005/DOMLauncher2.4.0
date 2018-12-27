.class public Lorg/chromium/content/browser/ContentViewCore;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
.implements Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;,
        Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;,
        Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;,
        Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INVALID_RENDER_PROCESS_PID:I = 0x0

.field private static final IS_LONG_PRESS:I = 0x1

.field private static final IS_LONG_TAP:I = 0x2

.field private static final NO_OP_ZOOM_CONTROLS_DELEGATE:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

.field private static final TAG:Ljava/lang/String; = "ContentViewCore"

.field private static final ZOOM_CONTROLS_EPSILON:F = 0.007f


# instance fields
.field private mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityScriptInjectionObserver:Landroid/database/ContentObserver;

.field private mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

.field private mActionMode:Landroid/view/ActionMode;

.field private mAdapterInputConnectionFactory:Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;

.field private mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

.field private mContainerView:Landroid/view/ViewGroup;

.field private mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

.field private mContainerViewObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList",
            "<",
            "Lorg/chromium/content/browser/ContainerViewObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

.field private final mContext:Landroid/content/Context;

.field private mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

.field private mCurrentTouchOffsetX:F

.field private mCurrentTouchOffsetY:F

.field private mDownloadDelegate:Lorg/chromium/content/browser/ContentViewDownloadDelegate;

.field private final mEditable:Landroid/text/Editable;

.field private mEnableTouchHover:Ljava/lang/Boolean;

.field private mFakeMouseMoveRunnable:Ljava/lang/Runnable;

.field private final mFocusPreOSKViewportRect:Landroid/graphics/Rect;

.field private mFocusedNodeEditable:Z

.field private mFullscreenRequiredForOrientationLock:Z

.field private final mGestureStateListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList",
            "<",
            "Lorg/chromium/content_public/browser/GestureStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList$RewindableIterator",
            "<",
            "Lorg/chromium/content_public/browser/GestureStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHasInsertion:Z

.field private mHasSelection:Z

.field private mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

.field private mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

.field private mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

.field private mIsMobileOptimizedHint:Z

.field private final mJavaScriptInterfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Class;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastSelectedText:Ljava/lang/String;

.field private mLastTapX:I

.field private mLastTapY:I

.field private mNativeAccessibilityAllowed:Z

.field private mNativeAccessibilityEnabled:Z

.field private mNativeContentViewCore:J

.field private mNativeSelectPopupSourceFrame:J

.field private mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

.field private mPhysicalBackingHeightPix:I

.field private mPhysicalBackingWidthPix:I

.field private mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

.field private mPositionObserver:Lorg/chromium/content/browser/PositionObserver;

.field private mPotentiallyActiveFlingCount:I

.field private mPreserveSelectionOnNextLossOfFocus:Z

.field private final mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

.field private final mRetainedJavaScriptObjects:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

.field private mShouldSetAccessibilityFocusOnPageLoad:Z

.field private mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

.field private mSmartClipOffsetX:I

.field private mSmartClipOffsetY:I

.field private mTopControlsHeightPix:I

.field private mTopControlsShrinkBlinkSize:Z

.field private mTouchExplorationEnabled:Z

.field private mTouchHandleDelegate:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;

.field private mTouchScrollInProgress:Z

.field private mUnselectAllOnActionModeDismiss:Z

.field private mViewAndroid:Lorg/chromium/ui/base/ViewAndroid;

.field private mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

.field private mViewportHeightPix:I

.field private mViewportWidthPix:I

.field private mWasPastePopupShowingOnInsertionDragStart:Z

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserver;

.field private mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-class v0, Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    .line 116
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$1;

    invoke-direct {v0}, Lorg/chromium/content/browser/ContentViewCore$1;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ContentViewCore;->NO_OP_ZOOM_CONTROLS_DELEGATE:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    .line 147
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRetainedJavaScriptObjects:Ljava/util/HashSet;

    .line 388
    iput-wide v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    .line 396
    iput-wide v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    .line 398
    iput-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    .line 471
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    .line 488
    iput-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

    .line 514
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFullscreenRequiredForOrientationLock:Z

    .line 541
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    .line 543
    new-instance v2, Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;

    invoke-direct {v2}, Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mAdapterInputConnectionFactory:Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;

    .line 544
    new-instance v2, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    .line 546
    new-instance v2, Lorg/chromium/content/browser/RenderCoordinates;

    invoke-direct {v2}, Lorg/chromium/content/browser/RenderCoordinates;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    .line 547
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 548
    .local v0, "deviceScaleFactor":F
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v2

    const-string v3, "force-device-scale-factor"

    invoke-virtual {v2, v3}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "forceScaleFactor":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 551
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 553
    :cond_0
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2, v0}, Lorg/chromium/content/browser/RenderCoordinates;->setDeviceScaleFactor(F)V

    .line 554
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 556
    new-instance v2, Lorg/chromium/base/ObserverList;

    invoke-direct {v2}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListeners:Lorg/chromium/base/ObserverList;

    .line 557
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v2}, Lorg/chromium/base/ObserverList;->rewindableIterator()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    .line 559
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mEditable:Landroid/text/Editable;

    .line 560
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mEditable:Landroid/text/Editable;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 561
    new-instance v2, Lorg/chromium/base/ObserverList;

    invoke-direct {v2}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    .line 562
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/ContentViewCore;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/RenderCoordinates;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/chromium/content/browser/ContentViewCore;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hasFocus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/accessibility/AccessibilityInjector;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/chromium/content/browser/ContentViewCore;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mIsMobileOptimizedHint:Z

    return p1
.end method

.method static synthetic access$1500(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndClearSelection()V

    return-void
.end method

.method static synthetic access$1600(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->resetScrollInProgress()V

    return-void
.end method

.method static synthetic access$1900(Lorg/chromium/content/browser/ContentViewCore;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 103
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/ContentViewCore;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/chromium/content/browser/ContentViewCore;JJFF)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # F
    .param p6, "x4"    # F

    .prologue
    .line 103
    invoke-direct/range {p0 .. p6}, Lorg/chromium/content/browser/ContentViewCore;->nativeSingleTap(JJFF)V

    return-void
.end method

.method static synthetic access$2100(Lorg/chromium/content/browser/ContentViewCore;JJFF)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # F
    .param p6, "x4"    # F

    .prologue
    .line 103
    invoke-direct/range {p0 .. p6}, Lorg/chromium/content/browser/ContentViewCore;->nativeLongPress(JJFF)V

    return-void
.end method

.method static synthetic access$2200(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/input/ImeAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    return-object v0
.end method

.method static synthetic access$2302(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 103
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$2400(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 103
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    return v0
.end method

.method static synthetic access$2500(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->clearUserSelection()V

    return-void
.end method

.method static synthetic access$2600(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/PositionObserver;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/MotionEvent;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Z

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEventImpl(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lorg/chromium/content/browser/ContentViewCore;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/PopupZoomer;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/content/browser/ContentViewCore;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 103
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    return v0
.end method

.method static synthetic access$900(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->dismissTextHandles()V

    return-void
.end method

.method private actionModeInvalidateWAR()V
    .locals 3

    .prologue
    .line 1967
    sget-boolean v1, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1970
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1974
    :goto_0
    return-void

    .line 1971
    :catch_0
    move-exception v0

    .line 1972
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "ContentViewCore"

    const-string v2, "Ignoring NPE from ActionMode.invalidate() as workaround for L"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static activityFromContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 370
    check-cast p0, Landroid/app/Activity;

    .line 375
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object p0

    .line 371
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 372
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 373
    .restart local p0    # "context":Landroid/content/Context;
    invoke-static {p0}, Lorg/chromium/content/browser/ContentViewCore;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    goto :goto_0

    .line 375
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private canPaste()Z
    .locals 2

    .prologue
    .line 2477
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2478
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    goto :goto_0
.end method

.method private cancelRequestToScrollFocusedEditableNodeIntoView()V
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1602
    return-void
.end method

.method private clearUserSelection()V
    .locals 2

    .prologue
    .line 1407
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    if-eqz v1, :cond_1

    .line 1408
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    if-eqz v1, :cond_0

    .line 1409
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1410
    .local v0, "selectionEnd":I
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    invoke-virtual {v1, v0, v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->setSelection(II)Z

    .line 1415
    .end local v0    # "selectionEnd":I
    :cond_0
    :goto_0
    return-void

    .line 1412
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    if-eqz v1, :cond_0

    .line 1413
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/ImeAdapter;->unselect()Z

    goto :goto_0
.end method

.method private createImeAdapter()Lorg/chromium/content/browser/input/ImeAdapter;
    .locals 3

    .prologue
    .line 652
    new-instance v0, Lorg/chromium/content/browser/input/ImeAdapter;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    new-instance v2, Lorg/chromium/content/browser/ContentViewCore$2;

    invoke-direct {v2, p0}, Lorg/chromium/content/browser/ContentViewCore$2;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    invoke-direct {v0, v1, v2}, Lorg/chromium/content/browser/input/ImeAdapter;-><init>(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;)V

    return-object v0
.end method

.method private createOffsetMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 3
    .param p1, "src"    # Landroid/view/MotionEvent;

    .prologue
    .line 1756
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1757
    .local v0, "dst":Landroid/view/MotionEvent;
    iget v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetX:F

    iget v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetY:F

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1758
    return-object v0
.end method

.method private createPopupTouchHandleDrawable()Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 2404
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchHandleDelegate:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;

    if-nez v0, :cond_0

    .line 2405
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$8;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$8;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchHandleDelegate:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;

    .line 2428
    :cond_0
    new-instance v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchHandleDelegate:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;-><init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;)V

    return-object v0
.end method

.method private static createRect(IIII)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 2960
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private createTouchEventSynthesizer()Lorg/chromium/content/browser/TouchEventSynthesizer;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 2398
    new-instance v0, Lorg/chromium/content/browser/TouchEventSynthesizer;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/TouchEventSynthesizer;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    return-object v0
.end method

.method private dismissTextHandles()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2202
    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    .line 2203
    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z

    .line 2204
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeDismissTextHandles(J)V

    .line 2205
    :cond_0
    return-void
.end method

.method private filterTapOrPressEvent(III)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 1276
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->offerLongPressToEmbedder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    const/4 v0, 0x1

    .line 1280
    :goto_0
    return v0

    .line 1279
    :cond_0
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->updateForTapOrPress(IFF)V

    .line 1280
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/ContentViewCore;
    .locals 1
    .param p0, "webContents"    # Lorg/chromium/content_public/browser/WebContents;

    .prologue
    .line 531
    invoke-static {p0}, Lorg/chromium/content/browser/ContentViewCore;->nativeFromWebContentsAndroid(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    return-object v0
.end method

.method private getPastePopup()Lorg/chromium/content/browser/input/PastePopupMenu;
    .locals 3

    .prologue
    .line 2458
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    if-nez v0, :cond_0

    .line 2459
    new-instance v0, Lorg/chromium/content/browser/input/PastePopupMenu;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lorg/chromium/content/browser/ContentViewCore$9;

    invoke-direct {v2, p0}, Lorg/chromium/content/browser/ContentViewCore$9;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    invoke-direct {v0, v1, v2}, Lorg/chromium/content/browser/input/PastePopupMenu;-><init>(Landroid/view/View;Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    .line 2468
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    return-object v0
.end method

.method private hasFocus()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 2504
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2505
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    goto :goto_0
.end method

.method private hidePastePopup()V
    .locals 1

    .prologue
    .line 2134
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    if-nez v0, :cond_0

    .line 2136
    :goto_0
    return-void

    .line 2135
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/PastePopupMenu;->hide()V

    goto :goto_0
.end method

.method private hidePopups()V
    .locals 2

    .prologue
    .line 1418
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideSelectActionBar()V

    .line 1419
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    .line 1420
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideSelectPopup()V

    .line 1421
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    .line 1422
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->dismissTextHandles()V

    .line 1423
    :cond_0
    return-void
.end method

.method private hidePopupsAndClearSelection()V
    .locals 1

    .prologue
    .line 1397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 1398
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopups()V

    .line 1399
    return-void
.end method

.method private hidePopupsAndPreserveSelection()V
    .locals 1

    .prologue
    .line 1402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 1403
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopups()V

    .line 1404
    return-void
.end method

.method private hideSelectPopup()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 2378
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/SelectPopup;->hide()V

    .line 2379
    :cond_0
    return-void
.end method

.method private isFullscreenRequiredForOrientationLock()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 3078
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFullscreenRequiredForOrientationLock:Z

    return v0
.end method

.method private static isValidTouchEventActionForNative(I)Z
    .locals 2
    .param p0, "eventAction"    # I

    .prologue
    const/4 v0, 0x1

    .line 1174
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeAddJavascriptInterface(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
.end method

.method private native nativeDismissTextHandles(J)V
.end method

.method private native nativeDoubleTap(JJFF)V
.end method

.method private native nativeExtractSmartClipData(JIIII)V
.end method

.method private native nativeFlingCancel(JJ)V
.end method

.method private native nativeFlingStart(JJFFFF)V
.end method

.method private static native nativeFromWebContentsAndroid(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/ContentViewCore;
.end method

.method private native nativeGetCurrentRenderProcessId(J)I
.end method

.method private native nativeGetNativeImeAdapter(J)J
.end method

.method private native nativeGetWebContentsAndroid(J)Lorg/chromium/content_public/browser/WebContents;
.end method

.method private native nativeInit(Lorg/chromium/content_public/browser/WebContents;JJLjava/util/HashSet;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/content_public/browser/WebContents;",
            "JJ",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation
.end method

.method private native nativeLongPress(JJFF)V
.end method

.method private native nativeMoveCaret(JFF)V
.end method

.method private native nativeOnJavaContentViewCoreDestroyed(J)V
.end method

.method private native nativeOnTouchEvent(JLandroid/view/MotionEvent;JIIIIFFFFIIFFFFFFFFIIIIZ)Z
.end method

.method private native nativePinchBegin(JJFF)V
.end method

.method private native nativePinchBy(JJFFF)V
.end method

.method private native nativePinchEnd(JJ)V
.end method

.method private native nativeRemoveJavascriptInterface(JLjava/lang/String;)V
.end method

.method private native nativeResetGestureDetection(J)V
.end method

.method private native nativeScrollBegin(JJFFFF)V
.end method

.method private native nativeScrollBy(JJFFFF)V
.end method

.method private native nativeScrollEnd(JJ)V
.end method

.method private native nativeSelectBetweenCoordinates(JFFFF)V
.end method

.method private native nativeSelectPopupMenuItems(JJ[I)V
.end method

.method private native nativeSendMouseMoveEvent(JJFF)I
.end method

.method private native nativeSendMouseWheelEvent(JJFFFF)I
.end method

.method private native nativeSendOrientationChangeEvent(JI)V
.end method

.method private native nativeSetAccessibilityEnabled(JZ)V
.end method

.method private native nativeSetAllowJavascriptInterfacesInspection(JZ)V
.end method

.method private native nativeSetBackgroundOpaque(JZ)V
.end method

.method private native nativeSetDoubleTapSupportEnabled(JZ)V
.end method

.method private native nativeSetDrawsContent(JZ)V
.end method

.method private native nativeSetFocus(JZ)V
.end method

.method private native nativeSetMultiTouchZoomSupportEnabled(JZ)V
.end method

.method private native nativeSetTextHandlesTemporarilyHidden(JZ)V
.end method

.method private native nativeSingleTap(JJFF)V
.end method

.method private native nativeWasResized(J)V
.end method

.method private offerLongPressToEmbedder()Z
    .locals 1

    .prologue
    .line 3021
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    return v0
.end method

.method private onBackgroundColorChanged(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 1019
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewClient;->onBackgroundColorChanged(I)V

    .line 1020
    return-void
.end method

.method private onFlingCancelEventAck()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 1211
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 1212
    return-void
.end method

.method private onFlingStartEventConsumed(II)V
    .locals 3
    .param p1, "vx"    # I
    .param p2, "vy"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 1189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    .line 1190
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    .line 1191
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 1192
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/chromium/content_public/browser/GestureStateListener;->onFlingStartGesture(IIII)V

    goto :goto_0

    .line 1196
    :cond_0
    return-void
.end method

.method private onFlingStartEventHadNoConsumer(II)V
    .locals 1
    .param p1, "vx"    # I
    .param p2, "vy"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 1201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    .line 1202
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 1203
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content_public/browser/GestureStateListener;->onUnhandledFlingStartEvent(II)V

    goto :goto_0

    .line 1206
    :cond_0
    return-void
.end method

.method private onNativeFlingStopped()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 3057
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    .line 3058
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    if-gtz v0, :cond_0

    .line 3061
    :goto_0
    return-void

    .line 3059
    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    .line 3060
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    goto :goto_0
.end method

.method private onPinchBeginEventAck()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 1244
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 1245
    return-void
.end method

.method private onPinchEndEventAck()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 1250
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 1251
    return-void
.end method

.method private onRenderProcessChange()V
    .locals 0
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 2485
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->attachImeAdapter()V

    .line 2486
    return-void
.end method

.method private onScrollBeginEventAck()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 1217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    .line 1218
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    .line 1219
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->invokeZoomPicker()V

    .line 1220
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 1221
    return-void
.end method

.method private onScrollEndEventAck()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 1236
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    if-nez v0, :cond_0

    .line 1239
    :goto_0
    return-void

    .line 1237
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    .line 1238
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    goto :goto_0
.end method

.method private onScrollUpdateGestureConsumed()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 1226
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->invokeZoomPicker()V

    .line 1227
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 1228
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollUpdateGestureConsumed()V

    goto :goto_0

    .line 1231
    :cond_0
    return-void
.end method

.method private onSelectionChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 2434
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastSelectedText:Ljava/lang/String;

    .line 2435
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    if-eqz v0, :cond_0

    .line 2436
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContextualSearchClient;->onSelectionChanged(Ljava/lang/String;)V

    .line 2438
    :cond_0
    return-void
.end method

.method private onSelectionEvent(III)V
    .locals 3
    .param p1, "eventType"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2140
    packed-switch p1, :pswitch_data_0

    .line 2194
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid selection event type."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2142
    :pswitch_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    .line 2143
    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 2146
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 2147
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->showSelectActionBar()V

    .line 2196
    :cond_0
    :goto_0
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    if-eqz v0, :cond_1

    .line 2197
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-interface {v0, p1, v1, v2}, Lorg/chromium/content/browser/ContextualSearchClient;->onSelectionEvent(IFF)V

    .line 2199
    :cond_1
    return-void

    .line 2151
    :pswitch_2
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    .line 2152
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 2153
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideSelectActionBar()V

    goto :goto_0

    .line 2163
    :pswitch_3
    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z

    goto :goto_0

    .line 2167
    :pswitch_4
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    if-eqz v0, :cond_0

    .line 2168
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isScrollInProgress()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/PastePopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2169
    invoke-direct {p0, p2, p3}, Lorg/chromium/content/browser/ContentViewCore;->showPastePopup(II)Z

    goto :goto_0

    .line 2171
    :cond_2
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    goto :goto_0

    .line 2176
    :pswitch_5
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWasPastePopupShowingOnInsertionDragStart:Z

    if-eqz v0, :cond_3

    .line 2177
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    goto :goto_0

    .line 2179
    :cond_3
    invoke-direct {p0, p2, p3}, Lorg/chromium/content/browser/ContentViewCore;->showPastePopup(II)Z

    goto :goto_0

    .line 2183
    :pswitch_6
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z

    .line 2184
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    goto :goto_0

    .line 2188
    :pswitch_7
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/PastePopupMenu;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWasPastePopupShowingOnInsertionDragStart:Z

    .line 2190
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 2188
    goto :goto_1

    .line 2140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private onShowUnhandledTapUIIfNeeded(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 1265
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    invoke-interface {v0, p1, p2}, Lorg/chromium/content/browser/ContextualSearchClient;->showUnhandledTapUIIfNeeded(II)V

    .line 1268
    :cond_0
    return-void
.end method

.method private onSingleTapEventAck(ZII)V
    .locals 1
    .param p1, "consumed"    # Z
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 1256
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 1257
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/content_public/browser/GestureStateListener;->onSingleTap(ZII)V

    goto :goto_0

    .line 1260
    :cond_0
    return-void
.end method

.method private onSmartClipDataExtracted(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "clipRect"    # Landroid/graphics/Rect;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 2995
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v0

    .line 2996
    .local v0, "deviceScale":F
    iget v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetX:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v1, v3

    .line 2997
    .local v1, "offsetXInDp":I
    iget v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetY:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v2, v3

    .line 2998
    .local v2, "offsetYInDp":I
    neg-int v3, v1

    neg-int v4, v2

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 3000
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

    if-eqz v3, :cond_0

    .line 3001
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

    invoke-interface {v3, p1, p2, p3}, Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;->onSmartClipDataExtracted(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 3003
    :cond_0
    return-void
.end method

.method private onTouchEventImpl(Landroid/view/MotionEvent;Z)Z
    .locals 32
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "isTouchHandleEvent"    # Z

    .prologue
    .line 1124
    const-string v1, "onTouchEvent"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 1126
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    .line 1128
    .local v7, "eventAction":I
    if-nez v7, :cond_0

    .line 1129
    invoke-direct/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->cancelRequestToScrollFocusedEditableNodeIntoView()V

    .line 1132
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/content/browser/SPenSupport;->isSPenSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1133
    invoke-static {v7}, Lorg/chromium/content/browser/SPenSupport;->convertSPenEventAction(I)I

    move-result v7

    .line 1134
    :cond_1
    invoke-static {v7}, Lorg/chromium/content/browser/ContentViewCore;->isValidTouchEventActionForNative(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    const/16 v30, 0x0

    .line 1166
    const-string v1, "onTouchEvent"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    :goto_0
    return v30

    .line 1136
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    const/16 v30, 0x0

    .line 1166
    const-string v1, "onTouchEvent"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto :goto_0

    .line 1139
    :cond_3
    const/16 v31, 0x0

    .line 1140
    .local v31, "offset":Landroid/view/MotionEvent;
    :try_start_2
    move-object/from16 v0, p0

    iget v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    .line 1141
    :cond_4
    invoke-direct/range {p0 .. p1}, Lorg/chromium/content/browser/ContentViewCore;->createOffsetMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v31

    .line 1142
    move-object/from16 p1, v31

    .line 1145
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    .line 1146
    .local v8, "pointerCount":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    const/4 v1, 0x1

    if-le v8, v1, :cond_7

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    :goto_1
    const/4 v1, 0x1

    if-le v8, v1, :cond_8

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    const/4 v1, 0x1

    if-le v8, v1, :cond_9

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v16

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v17

    const/4 v1, 0x1

    if-le v8, v1, :cond_a

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v18

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getTouchMinor()F

    move-result v19

    const/4 v1, 0x1

    if-le v8, v1, :cond_b

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v20

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getOrientation()F

    move-result v21

    const/4 v1, 0x1

    if-le v8, v1, :cond_c

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v22

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v24

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v25

    const/4 v1, 0x1

    if-le v8, v1, :cond_d

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v26

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v27

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v28

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v29, p2

    invoke-direct/range {v1 .. v29}, Lorg/chromium/content/browser/ContentViewCore;->nativeOnTouchEvent(JLandroid/view/MotionEvent;JIIIIFFFFIIFFFFFFFFIIIIZ)Z

    move-result v30

    .line 1163
    .local v30, "consumed":Z
    if-eqz v31, :cond_6

    invoke-virtual/range {v31 .. v31}, Landroid/view/MotionEvent;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1166
    :cond_6
    const-string v1, "onTouchEvent"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1146
    .end local v30    # "consumed":Z
    :cond_7
    const/4 v13, 0x0

    goto :goto_1

    :cond_8
    const/4 v14, 0x0

    goto :goto_2

    :cond_9
    const/16 v16, -0x1

    goto :goto_3

    :cond_a
    const/16 v18, 0x0

    goto :goto_4

    :cond_b
    const/16 v20, 0x0

    goto :goto_5

    :cond_c
    const/16 v22, 0x0

    goto :goto_6

    :cond_d
    const/16 v26, 0x0

    goto :goto_7

    .line 1166
    .end local v7    # "eventAction":I
    .end local v8    # "pointerCount":I
    .end local v31    # "offset":Landroid/view/MotionEvent;
    :catchall_0
    move-exception v1

    const-string v2, "onTouchEvent"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v1
.end method

.method private resetGestureDetection()V
    .locals 4

    .prologue
    .line 1441
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1443
    :goto_0
    return-void

    .line 1442
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeResetGestureDetection(J)V

    goto :goto_0
.end method

.method private resetScrollInProgress()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3029
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isScrollInProgress()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3039
    :cond_0
    :goto_0
    return-void

    .line 3031
    :cond_1
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    .line 3032
    .local v1, "touchScrollInProgress":Z
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    .line 3034
    .local v0, "potentiallyActiveFlingCount":I
    iput-boolean v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    .line 3035
    iput v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    .line 3037
    if-eqz v1, :cond_2

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    .line 3038
    :cond_2
    if-lez v0, :cond_0

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->updateGestureStateListener(I)V

    goto :goto_0
.end method

.method private restoreSelectionPopupsIfNecessary()V
    .locals 1

    .prologue
    .line 1426
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->showSelectActionBar()V

    .line 1427
    :cond_0
    return-void
.end method

.method private setTextHandlesTemporarilyHidden(Z)V
    .locals 4
    .param p1, "hide"    # Z

    .prologue
    .line 2208
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2210
    :goto_0
    return-void

    .line 2209
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetTextHandlesTemporarilyHidden(JZ)V

    goto :goto_0
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 2335
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewClient;->onUpdateTitle(Ljava/lang/String;)V

    .line 2336
    return-void
.end method

.method private shouldBlockMediaRequest(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 3050
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewClient;->shouldBlockMediaRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private showDisambiguationPopup(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "targetRect"    # Landroid/graphics/Rect;
    .param p2, "zoomedBitmap"    # Landroid/graphics/Bitmap;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 2391
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, p2}, Lorg/chromium/content/browser/PopupZoomer;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2392
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/PopupZoomer;->show(Landroid/graphics/Rect;)V

    .line 2393
    return-void
.end method

.method private showPastePopup(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2451
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->canPaste()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2454
    :goto_0
    return v1

    .line 2452
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v0

    .line 2453
    .local v0, "contentOffsetYPix":F
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->getPastePopup()Lorg/chromium/content/browser/input/PastePopupMenu;

    move-result-object v1

    int-to-float v2, p2

    add-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, p1, v2}, Lorg/chromium/content/browser/input/PastePopupMenu;->showAt(II)V

    .line 2454
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showPastePopupWithFeedback(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 2445
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->showPastePopup(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2446
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 2448
    :cond_0
    return-void
.end method

.method private showSelectActionBar()V
    .locals 5

    .prologue
    .line 1977
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1978
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->actionModeInvalidateWAR()V

    .line 2101
    :goto_0
    return-void

    .line 1983
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    if-nez v0, :cond_1

    .line 1984
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$7;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$7;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    .line 2086
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    .line 2088
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2089
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2090
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v4}, Lorg/chromium/content_public/browser/WebContents;->isIncognito()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/content/browser/ContentViewClient;->getSelectActionModeCallback(Landroid/content/Context;Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;Z)Landroid/view/ActionMode$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    .line 2094
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z

    .line 2095
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_4

    .line 2097
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->unselect()Z

    goto :goto_0

    .line 2099
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewClient;->onContextualActionBarShown()V

    goto :goto_0
.end method

.method private showSelectPopup(JLandroid/graphics/Rect;[Ljava/lang/String;[IZ[I)V
    .locals 6
    .param p1, "nativeSelectPopupSourceFrame"    # J
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "items"    # [Ljava/lang/String;
    .param p5, "enabled"    # [I
    .param p6, "multiple"    # Z
    .param p7, "selectedIndices"    # [I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 2350
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2351
    :cond_0
    iput-wide p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    .line 2352
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->selectPopupMenuItems([I)V

    .line 2371
    :goto_0
    return-void

    .line 2356
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndClearSelection()V

    .line 2357
    sget-boolean v2, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Zombie popup did not clear the frame source"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2359
    :cond_2
    sget-boolean v2, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    array-length v2, p4

    array-length v3, p5

    if-eq v2, v3, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2360
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2361
    .local v1, "popupItems":Ljava/util/List;, "Ljava/util/List<Lorg/chromium/content/browser/input/SelectPopupItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p4

    if-ge v0, v2, :cond_4

    .line 2362
    new-instance v2, Lorg/chromium/content/browser/input/SelectPopupItem;

    aget-object v3, p4, v0

    aget v4, p5, v0

    invoke-direct {v2, v3, v4}, Lorg/chromium/content/browser/input/SelectPopupItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2361
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2364
    :cond_4
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p6, :cond_5

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2365
    new-instance v2, Lorg/chromium/content/browser/input/SelectPopupDropdown;

    invoke-direct {v2, p0, v1, p3, p7}, Lorg/chromium/content/browser/input/SelectPopupDropdown;-><init>(Lorg/chromium/content/browser/ContentViewCore;Ljava/util/List;Landroid/graphics/Rect;[I)V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    .line 2369
    :goto_2
    iput-wide p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    .line 2370
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    invoke-interface {v2}, Lorg/chromium/content/browser/input/SelectPopup;->show()V

    goto :goto_0

    .line 2367
    :cond_5
    new-instance v2, Lorg/chromium/content/browser/input/SelectPopupDialog;

    invoke-direct {v2, p0, v1, p6, p7}, Lorg/chromium/content/browser/input/SelectPopupDialog;-><init>(Lorg/chromium/content/browser/ContentViewCore;Ljava/util/List;Z[I)V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    goto :goto_2
.end method

.method private startContentIntent(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentUrl"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 2715
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/chromium/content/browser/ContentViewClient;->onStartContentIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2716
    return-void
.end method

.method private unregisterAccessibilityContentObserver()V
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityScriptInjectionObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 977
    :goto_0
    return-void

    .line 974
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityScriptInjectionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 976
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityScriptInjectionObserver:Landroid/database/ContentObserver;

    goto :goto_0
.end method

.method private updateAfterSizeChanged()V
    .locals 3

    .prologue
    .line 1580
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    .line 1584
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1585
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1586
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1587
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1589
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusPreOSKViewportRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1590
    sget-boolean v1, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1591
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->scrollFocusedEditableNodeIntoView()V

    .line 1593
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->cancelRequestToScrollFocusedEditableNodeIntoView()V

    .line 1596
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_2
    return-void
.end method

.method private updateForTapOrPress(IFF)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "xPix"    # F
    .param p3, "yPix"    # F

    .prologue
    .line 1876
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    .line 1892
    :goto_0
    return-void

    .line 1883
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1885
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 1888
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0}, Lorg/chromium/content/browser/PopupZoomer;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v0, p2, p3}, Lorg/chromium/content/browser/PopupZoomer;->setLastTouch(FF)V

    .line 1890
    :cond_2
    float-to-int v0, p2

    iput v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastTapX:I

    .line 1891
    float-to-int v0, p3

    iput v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastTapY:I

    goto :goto_0
.end method

.method private updateFrameInfo(FFFFFFFFFFFZ)V
    .locals 22
    .param p1, "scrollOffsetX"    # F
    .param p2, "scrollOffsetY"    # F
    .param p3, "pageScaleFactor"    # F
    .param p4, "minPageScaleFactor"    # F
    .param p5, "maxPageScaleFactor"    # F
    .param p6, "contentWidth"    # F
    .param p7, "contentHeight"    # F
    .param p8, "viewportWidth"    # F
    .param p9, "viewportHeight"    # F
    .param p10, "controlsOffsetYCss"    # F
    .param p11, "contentOffsetYCss"    # F
    .param p12, "isMobileOptimizedHint"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 2239
    const-string v2, "ContentViewCore:updateFrameInfo"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 2240
    move/from16 v0, p12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/chromium/content/browser/ContentViewCore;->mIsMobileOptimizedHint:Z

    .line 2243
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v16

    .line 2244
    .local v16, "deviceScale":F
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mViewportWidthPix:I

    int-to-float v2, v2

    mul-float v3, v16, p3

    div-float/2addr v2, v3

    move/from16 v0, p6

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p6

    .line 2246
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeightPix:I

    int-to-float v2, v2

    mul-float v3, v16, p3

    div-float/2addr v2, v3

    move/from16 v0, p7

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p7

    .line 2248
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromDipToPix(F)F

    move-result v12

    .line 2250
    .local v12, "contentOffsetYPix":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getContentWidthCss()F

    move-result v2

    cmpl-float v2, p6, v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightCss()F

    move-result v2

    cmpl-float v2, p7, v2

    if-eqz v2, :cond_8

    :cond_0
    const/4 v14, 0x1

    .line 2253
    .local v14, "contentSizeChanged":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getMinPageScaleFactor()F

    move-result v2

    cmpl-float v2, p4, v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxPageScaleFactor()F

    move-result v2

    cmpl-float v2, p5, v2

    if-eqz v2, :cond_9

    :cond_1
    const/16 v20, 0x1

    .line 2256
    .local v20, "scaleLimitsChanged":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v2

    cmpl-float v2, p3, v2

    if-eqz v2, :cond_a

    const/16 v19, 0x1

    .line 2258
    .local v19, "pageScaleChanged":Z
    :goto_2
    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollX()F

    move-result v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollY()F

    move-result v2

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_b

    :cond_2
    const/16 v21, 0x1

    .line 2262
    .local v21, "scrollChanged":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v2

    cmpl-float v2, v12, v2

    if-eqz v2, :cond_c

    const/4 v13, 0x1

    .line 2265
    .local v13, "contentOffsetChanged":Z
    :goto_4
    if-nez v14, :cond_3

    if-eqz v21, :cond_d

    :cond_3
    const/16 v17, 0x1

    .line 2266
    .local v17, "needHidePopupZoomer":Z
    :goto_5
    if-nez v20, :cond_4

    if-eqz v21, :cond_e

    :cond_4
    const/16 v18, 0x1

    .line 2268
    .local v18, "needUpdateZoomControls":Z
    :goto_6
    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    .line 2270
    :cond_5
    if-eqz v21, :cond_6

    .line 2271
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v5}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPix()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v6}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPix()F

    move-result v6

    float-to-int v6, v6

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->onScrollChanged(IIII)V

    .line 2278
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v2 .. v12}, Lorg/chromium/content/browser/RenderCoordinates;->updateFrameInfo(FFFFFFFFFF)V

    .line 2285
    if-nez v21, :cond_7

    if-eqz v13, :cond_f

    .line 2286
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v2}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 2287
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v2}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2288
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v2}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollOffsetOrExtentChanged(II)V

    goto :goto_7

    .line 2250
    .end local v13    # "contentOffsetChanged":Z
    .end local v14    # "contentSizeChanged":Z
    .end local v17    # "needHidePopupZoomer":Z
    .end local v18    # "needUpdateZoomControls":Z
    .end local v19    # "pageScaleChanged":Z
    .end local v20    # "scaleLimitsChanged":Z
    .end local v21    # "scrollChanged":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2253
    .restart local v14    # "contentSizeChanged":Z
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 2256
    .restart local v20    # "scaleLimitsChanged":Z
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 2258
    .restart local v19    # "pageScaleChanged":Z
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 2262
    .restart local v21    # "scrollChanged":Z
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 2265
    .restart local v13    # "contentOffsetChanged":Z
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 2266
    .restart local v17    # "needHidePopupZoomer":Z
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 2294
    .restart local v18    # "needUpdateZoomControls":Z
    :cond_f
    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v2}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->updateZoomControls()V

    .line 2297
    :cond_10
    mul-float v15, p10, v16

    .line 2299
    .local v15, "controlsOffsetPix":F
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v12, v3}, Lorg/chromium/content/browser/ContentViewClient;->onOffsetsForFullscreenChanged(FFF)V

    .line 2302
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    if-eqz v2, :cond_11

    .line 2303
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-virtual {v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->notifyFrameInfoInitialized()V

    .line 2305
    :cond_11
    const-string v2, "ContentViewCore:updateFrameInfo"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 2306
    return-void
.end method

.method private updateImeAdapter(JIILjava/lang/String;IIIIZZ)V
    .locals 7
    .param p1, "nativeImeAdapterAndroid"    # J
    .param p3, "textInputType"    # I
    .param p4, "textInputFlags"    # I
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "selectionStart"    # I
    .param p7, "selectionEnd"    # I
    .param p8, "compositionStart"    # I
    .param p9, "compositionEnd"    # I
    .param p10, "showImeIfNeeded"    # Z
    .param p11, "isNonImeChange"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 2314
    :try_start_0
    const-string v0, "ContentViewCore.updateImeAdapter"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 2315
    if-eqz p3, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    .line 2316
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePastePopup()V

    .line 2318
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/input/ImeAdapter;->updateKeyboardVisibility(JIIZ)V

    .line 2321
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    if-eqz v0, :cond_1

    .line 2322
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    move-object v1, p5

    move v2, p6

    move v3, p7

    move v4, p8

    move/from16 v5, p9

    move/from16 v6, p11

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateState(Ljava/lang/String;IIIIZ)V

    .line 2326
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->actionModeInvalidateWAR()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2328
    :cond_2
    const-string v0, "ContentViewCore.updateImeAdapter"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 2330
    return-void

    .line 2315
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 2328
    :catchall_0
    move-exception v0

    const-string v1, "ContentViewCore.updateImeAdapter"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addContainerViewObserver(Lorg/chromium/content/browser/ContainerViewObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/chromium/content/browser/ContainerViewObserver;

    .prologue
    .line 851
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 852
    return-void
.end method

.method public addGestureStateListener(Lorg/chromium/content_public/browser/GestureStateListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/chromium/content_public/browser/GestureStateListener;

    .prologue
    .line 1311
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 1312
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2639
    const-class v0, Lorg/chromium/content/browser/JavascriptInterface;

    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/content/browser/ContentViewCore;->addPossiblyUnsafeJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 2640
    return-void
.end method

.method public addPossiblyUnsafeJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2686
    .local p3, "requiredAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2687
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2688
    iget-wide v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewCore;->nativeAddJavascriptInterface(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 2690
    :cond_0
    return-void
.end method

.method public attachImeAdapter()V
    .locals 4

    .prologue
    .line 2492
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2493
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    iget-wide v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetNativeImeAdapter(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(J)V

    .line 2495
    :cond_0
    return-void
.end method

.method public awakenScrollBars(IZ)Z
    .locals 1
    .param p1, "startDelay"    # I
    .param p2, "invalidate"    # Z

    .prologue
    .line 1868
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollBarStyle()I

    move-result v0

    if-nez v0, :cond_0

    .line 1869
    const/4 v0, 0x0

    .line 1871
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_awakenScrollBars(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomIn()Z
    .locals 3

    .prologue
    .line 2516
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxPageScaleFactor()F

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v2

    sub-float v0, v1, v2

    .line 2518
    .local v0, "zoomInExtent":F
    const v1, 0x3be56042    # 0.007f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canZoomOut()Z
    .locals 3

    .prologue
    .line 2529
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getMinPageScaleFactor()F

    move-result v2

    sub-float v0, v1, v2

    .line 2531
    .local v0, "zoomOutExtent":F
    const v1, 0x3be56042    # 0.007f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelFling(J)V
    .locals 4
    .param p1, "timeMs"    # J

    .prologue
    .line 1302
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1304
    :goto_0
    return-void

    .line 1303
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->nativeFlingCancel(JJ)V

    goto :goto_0
.end method

.method public clearSelection()V
    .locals 1

    .prologue
    .line 2107
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->unselect()Z

    .line 2108
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 1815
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportWidthPixInt()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPixInt()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 1831
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentWidthPixInt()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportHeightPixInt()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 1847
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 1855
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightPixInt()I

    move-result v0

    return v0
.end method

.method createContentViewAndroidDelegate()V
    .locals 2
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 803
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;-><init>(Lorg/chromium/content/browser/ContentViewCore;Lorg/chromium/content/browser/ContentViewCore$1;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    .line 804
    return-void
.end method

.method createViewAndroid(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 2
    .param p1, "windowAndroid"    # Lorg/chromium/ui/base/WindowAndroid;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 808
    new-instance v0, Lorg/chromium/ui/base/ViewAndroid;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    invoke-direct {v0, p1, v1}, Lorg/chromium/ui/base/ViewAndroid;-><init>(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/ViewAndroidDelegate;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroid:Lorg/chromium/ui/base/ViewAndroid;

    .line 809
    return-void
.end method

.method public destroy()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 945
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 946
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeOnJavaContentViewCoreDestroyed(J)V

    .line 948
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/content/browser/WebContentsObserver;->detachFromWebContents()V

    .line 949
    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserver;

    .line 950
    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->setSmartClipDataListener(Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;)V

    .line 951
    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentViewCore;->setZoomControlsDelegate(Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;)V

    .line 957
    new-instance v0, Lorg/chromium/content/browser/ContentViewClient;

    invoke-direct {v0}, Lorg/chromium/content/browser/ContentViewClient;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    .line 958
    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 959
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroid:Lorg/chromium/ui/base/ViewAndroid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroid:Lorg/chromium/ui/base/ViewAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/ViewAndroid;->destroy()V

    .line 960
    :cond_1
    iput-wide v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    .line 961
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 962
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRetainedJavaScriptObjects:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 963
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->unregisterAccessibilityContentObserver()V

    .line 964
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    .line 965
    invoke-static {}, Lorg/chromium/content/browser/ScreenOrientationListener;->getInstance()Lorg/chromium/content/browser/ScreenOrientationListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/ScreenOrientationListener;->removeObserver(Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;)V

    .line 966
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    invoke-interface {v0}, Lorg/chromium/content/browser/PositionObserver;->clearListener()V

    .line 967
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    .line 968
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1658
    invoke-static {p1}, Lorg/chromium/content/browser/input/GamepadList;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1665
    :cond_0
    :goto_0
    return v0

    .line 1659
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/ContentViewClient;->shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1660
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1663
    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1665
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1647
    :try_start_0
    const-string v0, "ContentViewCore.dispatchKeyEventPreIme"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 1648
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1650
    const-string v1, "ContentViewCore.dispatchKeyEventPreIme"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    const-string v1, "ContentViewCore.dispatchKeyEventPreIme"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method public doTopControlsShrinkBlinkSize()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 1070
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsShrinkBlinkSize:Z

    return v0
.end method

.method public extractSmartClipData(IIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 2964
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2965
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetX:I

    add-int/2addr p1, v0

    .line 2966
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetY:I

    add-int/2addr p2, v0

    .line 2967
    iget-wide v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->nativeExtractSmartClipData(JIIII)V

    .line 2969
    :cond_0
    return-void
.end method

.method public flingForTest(JIIII)V
    .locals 9
    .param p1, "timeMs"    # J
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "velocityX"    # I
    .param p6, "velocityY"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 1291
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1295
    :goto_0
    return-void

    .line 1292
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->nativeFlingCancel(JJ)V

    .line 1293
    iget-wide v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    int-to-float v5, p3

    int-to-float v6, p4

    int-to-float v7, p5

    int-to-float v8, p6

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollBegin(JJFFFF)V

    .line 1294
    iget-wide v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    int-to-float v5, p3

    int-to-float v6, p4

    int-to-float v7, p5

    int-to-float v8, p6

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/ContentViewCore;->nativeFlingStart(JJFFFF)V

    goto :goto_0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2778
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    if-eqz v0, :cond_0

    .line 2779
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 2789
    :goto_0
    return-object v0

    .line 2782
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityAllowed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityEnabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 2785
    iput-boolean v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityEnabled:Z

    .line 2786
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, v4}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetAccessibilityEnabled(JZ)V

    .line 2789
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdapterInputConnectionForTest()Lorg/chromium/content/browser/input/AdapterInputConnection;
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 1505
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    return-object v0
.end method

.method public getBrowserAccessibilityManager()Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;
    .locals 1

    .prologue
    .line 2767
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    return-object v0
.end method

.method public getContainerView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getContentHeightCss()F
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightCss()F

    move-result v0

    return v0
.end method

.method getContentVideoViewClient()Lorg/chromium/content/browser/ContentVideoViewClient;
    .locals 1

    .prologue
    .line 3045
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewClient;->getContentVideoViewClient()Lorg/chromium/content/browser/ContentVideoViewClient;

    move-result-object v0

    return-object v0
.end method

.method public getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 1005
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    if-nez v0, :cond_0

    .line 1009
    new-instance v0, Lorg/chromium/content/browser/ContentViewClient;

    invoke-direct {v0}, Lorg/chromium/content/browser/ContentViewClient;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    .line 1014
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    return-object v0
.end method

.method public getContentWidthCss()F
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentWidthCss()F

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentRenderProcessId()I
    .locals 2

    .prologue
    .line 1383
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetCurrentRenderProcessId(J)I

    move-result v0

    return v0
.end method

.method getDownloadDelegate()Lorg/chromium/content/browser/ContentViewDownloadDelegate;
    .locals 1

    .prologue
    .line 1957
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mDownloadDelegate:Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    return-object v0
.end method

.method public getEditableForTest()Landroid/text/Editable;
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 1510
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getImeAdapterForTest()Lorg/chromium/content/browser/input/ImeAdapter;
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 628
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    return-object v0
.end method

.method public getInputConnectionForTest()Lorg/chromium/content/browser/input/AdapterInputConnection;
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 643
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    return-object v0
.end method

.method public getIsMobileOptimizedHint()Z
    .locals 1

    .prologue
    .line 2955
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mIsMobileOptimizedHint:Z

    return v0
.end method

.method public getJavascriptInterfaces()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Class;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2627
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    return-object v0
.end method

.method public getLastTapX()I
    .locals 1

    .prologue
    .line 1898
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastTapX:I

    return v0
.end method

.method public getLastTapY()I
    .locals 1

    .prologue
    .line 1905
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastTapY:I

    return v0
.end method

.method public getNativeContentViewCore()J
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 993
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    return-wide v0
.end method

.method public getNativeScrollXForTest()I
    .locals 1

    .prologue
    .line 1801
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPixInt()I

    move-result v0

    return v0
.end method

.method public getNativeScrollYForTest()I
    .locals 1

    .prologue
    .line 1807
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result v0

    return v0
.end method

.method public getPastePopupForTest()Lorg/chromium/content/browser/input/PastePopupMenu;
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 2473
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->getPastePopup()Lorg/chromium/content/browser/input/PastePopupMenu;

    move-result-object v0

    return-object v0
.end method

.method public getPhysicalBackingHeightPix()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 1051
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingHeightPix:I

    return v0
.end method

.method public getPhysicalBackingWidthPix()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 1043
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingWidthPix:I

    return v0
.end method

.method public getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;
    .locals 1

    .prologue
    .line 2946
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    return-object v0
.end method

.method public getScale()F
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 2710
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v0

    return v0
.end method

.method public getSelectActionHandler()Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 1962
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionHandler:Lorg/chromium/content/browser/SelectActionModeCallback$ActionHandler;

    return-object v0
.end method

.method public getSelectPopupForTest()Lorg/chromium/content/browser/input/SelectPopup;
    .locals 1

    .prologue
    .line 2385
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    return-object v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1096
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mLastSelectedText:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTopControlsHeightPix()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 1075
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsHeightPix:I

    return v0
.end method

.method getViewAndroid()Lorg/chromium/ui/base/ViewAndroid;
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroid:Lorg/chromium/ui/base/ViewAndroid;

    return-object v0
.end method

.method public getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    return-object v0
.end method

.method public getViewportHeightPix()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 1035
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeightPix:I

    return v0
.end method

.method public getViewportSizeOffsetHeightPix()I
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 1062
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsShrinkBlinkSize:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsHeightPix:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewportSizeOffsetWidthPix()I
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 1057
    const/4 v0, 0x0

    return v0
.end method

.method public getViewportWidthPix()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 1027
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportWidthPix:I

    return v0
.end method

.method public getWebContents()Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object v0
.end method

.method protected hasInsertion()Z
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 2130
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasInsertion:Z

    return v0
.end method

.method public hasSelection()Z
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 2122
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    return v0
.end method

.method public hideImeIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2223
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2224
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 2227
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/chromium/content/browser/ContentViewClient;->onImeStateChangeRequested(Z)V

    .line 2228
    return-void
.end method

.method public hideSelectActionBar()V
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1432
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    .line 1434
    :cond_0
    return-void
.end method

.method initPopupZoomer(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 875
    new-instance v1, Lorg/chromium/content/browser/PopupZoomer;

    invoke-direct {v1, p1}, Lorg/chromium/content/browser/PopupZoomer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    .line 876
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    new-instance v2, Lorg/chromium/content/browser/ContentViewCore$4;

    invoke-direct {v2, p0}, Lorg/chromium/content/browser/ContentViewCore$4;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/PopupZoomer;->setOnVisibilityChangedListener(Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;)V

    .line 908
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$5;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewCore$5;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 930
    .local v0, "listener":Lorg/chromium/content/browser/PopupZoomer$OnTapListener;
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/PopupZoomer;->setOnTapListener(Lorg/chromium/content/browser/PopupZoomer$OnTapListener;)V

    .line 931
    return-void
.end method

.method public initialize(Landroid/view/ViewGroup;Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 8
    .param p1, "containerView"    # Landroid/view/ViewGroup;
    .param p2, "internalDispatcher"    # Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;
    .param p3, "webContents"    # Lorg/chromium/content_public/browser/WebContents;
    .param p4, "windowAndroid"    # Lorg/chromium/ui/base/WindowAndroid;

    .prologue
    const-wide/16 v6, 0x0

    .line 725
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->createContentViewAndroidDelegate()V

    .line 726
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->setContainerView(Landroid/view/ViewGroup;)V

    .line 727
    invoke-virtual {p4}, Lorg/chromium/ui/base/WindowAndroid;->getNativePointer()J

    move-result-wide v4

    .line 728
    .local v4, "windowNativePointer":J
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 729
    :cond_0
    invoke-virtual {p0, p4}, Lorg/chromium/content/browser/ContentViewCore;->createViewAndroid(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 731
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroid:Lorg/chromium/ui/base/ViewAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/ViewAndroid;->getNativePointer()J

    move-result-wide v2

    .line 732
    .local v2, "viewAndroidNativePointer":J
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 734
    :cond_1
    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->NO_OP_ZOOM_CONTROLS_DELEGATE:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    .line 736
    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewCore;->mRetainedJavaScriptObjects:Ljava/util/HashSet;

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->nativeInit(Lorg/chromium/content_public/browser/WebContents;JJLjava/util/HashSet;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    .line 739
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetWebContentsAndroid(J)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 741
    invoke-virtual {p0, p2}, Lorg/chromium/content/browser/ContentViewCore;->setContainerViewInternals(Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;)V

    .line 742
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->reset()V

    .line 743
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->initPopupZoomer(Landroid/content/Context;)V

    .line 744
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->createImeAdapter()Lorg/chromium/content/browser/input/ImeAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    .line 745
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->attachImeAdapter()V

    .line 747
    invoke-static {p0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->newInstance(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    .line 749
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$3;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/ContentViewCore$3;-><init>(Lorg/chromium/content/browser/ContentViewCore;Lorg/chromium/content_public/browser/WebContents;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContentsObserver:Lorg/chromium/content/browser/WebContentsObserver;

    .line 799
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 2604
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->invokeZoomPicker()V

    .line 2605
    return-void
.end method

.method public isAlive()Z
    .locals 4

    .prologue
    .line 984
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceAccessibilityScriptInjectionEnabled()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2832
    :try_start_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_1

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v7

    const-string v8, "enable-accessibility-script-injection"

    invoke-virtual {v7, v8}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2873
    :cond_0
    :goto_0
    return v6

    .line 2838
    :cond_1
    iget-object v7, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    invoke-virtual {v7}, Lorg/chromium/content/browser/ContentViewClient;->isJavascriptEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2842
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "android.permission.INTERNET"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    .line 2844
    .local v4, "result":I
    if-nez v4, :cond_0

    .line 2848
    const-class v7, Landroid/provider/Settings$Secure;

    const-string v8, "ACCESSIBILITY_SCRIPT_INJECTION"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 2849
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2850
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2851
    .local v0, "accessibilityScriptInjection":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2853
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    iget-object v7, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityScriptInjectionObserver:Landroid/database/ContentObserver;

    if-nez v7, :cond_2

    .line 2854
    new-instance v1, Lorg/chromium/content/browser/ContentViewCore$10;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v7}, Lorg/chromium/content/browser/ContentViewCore$10;-><init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/os/Handler;)V

    .line 2860
    .local v1, "contentObserver":Landroid/database/ContentObserver;
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2864
    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityScriptInjectionObserver:Landroid/database/ContentObserver;

    .line 2867
    .end local v1    # "contentObserver":Landroid/database/ContentObserver;
    :cond_2
    const/4 v7, 0x0

    invoke-static {v2, v0, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-ne v7, v5, :cond_3

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1

    .line 2870
    .end local v0    # "accessibilityScriptInjection":Ljava/lang/String;
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "result":I
    :catch_0
    move-exception v5

    goto :goto_0

    .line 2868
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public isFocusedNodeEditable()Z
    .locals 1

    .prologue
    .line 1110
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    return v0
.end method

.method public isInjectingAccessibilityScript()Z
    .locals 1

    .prologue
    .line 2880
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->accessibilityIsAvailable()Z

    move-result v0

    return v0
.end method

.method public isScrollInProgress()Z
    .locals 1

    .prologue
    .line 1183
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchScrollInProgress:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectActionBarShowing()Z
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectionEditable()Z
    .locals 1

    .prologue
    .line 1103
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mHasSelection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 2887
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchExplorationEnabled:Z

    return v0
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2720
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    .line 2721
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1450
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    .line 1451
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setTextHandlesTemporarilyHidden(Z)V

    .line 1452
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->restoreSelectionPopupsIfNecessary()V

    .line 1453
    invoke-static {}, Lorg/chromium/content/browser/ScreenOrientationListener;->getInstance()Lorg/chromium/content/browser/ScreenOrientationListener;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lorg/chromium/content/browser/ScreenOrientationListener;->addObserver(Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;Landroid/content/Context;)V

    .line 1454
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/content/browser/input/GamepadList;->onAttachedToWindow(Landroid/content/Context;)V

    .line 1455
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 1517
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->hasTextInputType()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1526
    :try_start_0
    const-string v0, "ContentViewCore.onConfigurationChanged"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 1528
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1529
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    iget-wide v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->nativeGetNativeImeAdapter(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(J)V

    .line 1532
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->restartInput(Landroid/view/View;)V

    .line 1534
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1538
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1540
    const-string v0, "ContentViewCore.onConfigurationChanged"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 1542
    return-void

    .line 1540
    :catchall_0
    move-exception v0

    const-string v1, "ContentViewCore.onConfigurationChanged"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1492
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->hasTextInputType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1496
    const/high16 v0, 0x2000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1498
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAdapterInputConnectionFactory:Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mEditable:Landroid/text/Editable;

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;->get(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;Landroid/text/Editable;Landroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/AdapterInputConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    .line 1500
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 1463
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setInjectedAccessibility(Z)V

    .line 1464
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->dismissZoomPicker()V

    .line 1465
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->unregisterAccessibilityContentObserver()V

    .line 1467
    invoke-static {}, Lorg/chromium/content/browser/ScreenOrientationListener;->getInstance()Lorg/chromium/content/browser/ScreenOrientationListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/ScreenOrientationListener;->removeObserver(Lorg/chromium/content/browser/ScreenOrientationListener$ScreenOrientationObserver;)V

    .line 1468
    invoke-static {}, Lorg/chromium/content/browser/input/GamepadList;->onDetachedFromWindow()V

    .line 1475
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setTextHandlesTemporarilyHidden(Z)V

    .line 1476
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndPreserveSelection()V

    .line 1477
    return-void
.end method

.method public onFocusChanged(Z)V
    .locals 4
    .param p1, "gainFocus"    # Z

    .prologue
    .line 1612
    if-eqz p1, :cond_1

    .line 1613
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->restoreSelectionPopupsIfNecessary()V

    .line 1628
    :goto_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetFocus(JZ)V

    .line 1629
    :cond_0
    return-void

    .line 1615
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->hideImeIfNeeded()V

    .line 1616
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->cancelRequestToScrollFocusedEditableNodeIntoView()V

    .line 1617
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPreserveSelectionOnNextLossOfFocus:Z

    if-eqz v0, :cond_2

    .line 1618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPreserveSelectionOnNextLossOfFocus:Z

    .line 1619
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndPreserveSelection()V

    goto :goto_0

    .line 1621
    :cond_2
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndClearSelection()V

    .line 1625
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->clearUserSelection()V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    .line 1715
    invoke-static {p1}, Lorg/chromium/content/browser/input/GamepadList;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    .line 1741
    :goto_0
    return v0

    .line 1716
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1717
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1741
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1719
    :pswitch_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 1721
    :cond_2
    iget-wide v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/ContentViewCore;->nativeSendMouseWheelEvent(JJFFFF)I

    .line 1726
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1729
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 1730
    .local v9, "eventFakeMouseMove":Landroid/view/MotionEvent;
    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$6;

    invoke-direct {v0, p0, v9}, Lorg/chromium/content/browser/ContentViewCore$6;-><init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/view/MotionEvent;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    .line 1737
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v10

    .line 1738
    goto :goto_0

    .line 1717
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 1390
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1391
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndPreserveSelection()V

    .line 1392
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setInjectedAccessibility(Z)V

    .line 1393
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->onHide()V

    .line 1394
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1675
    const-string v1, "onHoverEvent"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 1677
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->createOffsetMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 1679
    .local v7, "offset":Landroid/view/MotionEvent;
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    if-eqz v1, :cond_0

    .line 1680
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-virtual {v0, v7}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->onHoverEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1706
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 1707
    const-string v1, "onHoverEvent"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    :goto_0
    return v0

    .line 1685
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchExplorationEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getAction()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1706
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 1707
    const-string v0, "onHoverEvent"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    move v0, v8

    goto :goto_0

    .line 1691
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v8, :cond_3

    .line 1692
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mEnableTouchHover:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 1693
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v1

    const-string v2, "enable-touch-hover"

    invoke-virtual {v1, v2}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mEnableTouchHover:Ljava/lang/Boolean;

    .line 1696
    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mEnableTouchHover:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 1706
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 1707
    const-string v1, "onHoverEvent"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto :goto_0

    .line 1699
    :cond_3
    :try_start_3
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFakeMouseMoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1700
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 1701
    iget-wide v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->nativeSendMouseMoveEvent(JJFF)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1706
    :cond_4
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 1707
    const-string v0, "onHoverEvent"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    move v0, v8

    goto :goto_0

    .line 1706
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 1707
    const-string v1, "onHoverEvent"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v3, 0x0

    .line 2805
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2808
    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPixInt()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 2809
    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 2813
    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxHorizontalScrollPixInt()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2814
    .local v0, "maxScrollXPix":I
    iget-object v4, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lorg/chromium/content/browser/RenderCoordinates;->getMaxVerticalScrollPixInt()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2815
    .local v1, "maxScrollYPix":I
    if-gtz v0, :cond_0

    if-lez v1, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2818
    const/16 v2, 0xf

    .line 2819
    .local v2, "sdkVersionRequiredToSetScroll":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_2

    .line 2820
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 2821
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 2823
    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2797
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2798
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1635
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v1}, Lorg/chromium/content/browser/PopupZoomer;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1636
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    .line 1639
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    invoke-interface {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;->super_onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method onNativeContentViewCoreDestroyed(J)V
    .locals 2
    .param p1, "nativeContentViewCore"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 860
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 861
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    .line 862
    return-void
.end method

.method public onOverdrawBottomHeightChanged(I)V
    .locals 0
    .param p1, "overdrawHeightPix"    # I

    .prologue
    .line 1577
    return-void
.end method

.method public onPhysicalBackingSizeChanged(II)V
    .locals 4
    .param p1, "wPix"    # I
    .param p2, "hPix"    # I

    .prologue
    .line 1565
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingWidthPix:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingHeightPix:I

    if-ne v0, p2, :cond_1

    .line 1573
    :cond_0
    :goto_0
    return-void

    .line 1567
    :cond_1
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingWidthPix:I

    .line 1568
    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPhysicalBackingHeightPix:I

    .line 1570
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1571
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeWasResized(J)V

    goto :goto_0
.end method

.method public onScreenOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 3065
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/ContentViewCore;->sendOrientationChangeEvent(I)V

    .line 3066
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 1372
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1373
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->onShow()V

    .line 1374
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    .line 1375
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->restoreSelectionPopupsIfNecessary()V

    .line 1376
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 4
    .param p1, "wPix"    # I
    .param p2, "hPix"    # I
    .param p3, "owPix"    # I
    .param p4, "ohPix"    # I

    .prologue
    .line 1549
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 1558
    :goto_0
    return-void

    .line 1551
    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportWidthPix:I

    .line 1552
    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewportHeightPix:I

    .line 1553
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1554
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeWasResized(J)V

    .line 1557
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->updateAfterSizeChanged()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1119
    const/4 v0, 0x0

    .line 1120
    .local v0, "isTouchHandleEvent":Z
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEventImpl(Landroid/view/MotionEvent;Z)Z

    move-result v1

    return v1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 1483
    if-eqz p2, :cond_0

    .line 1484
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;->dismissZoomPicker()V

    .line 1486
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1608
    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->resetGestureDetection()V

    .line 1609
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 2743
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->supportsAccessibilityAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2744
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    .line 2747
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pinchByDelta(F)Z
    .locals 10
    .param p1, "delta"    # F

    .prologue
    .line 2587
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2597
    :goto_0
    return v0

    .line 2589
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2590
    .local v3, "timeMs":J
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v0

    div-int/lit8 v8, v0, 0x2

    .line 2591
    .local v8, "xPix":I
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    .line 2593
    .local v9, "yPix":I
    iget-wide v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    int-to-float v5, v8

    int-to-float v6, v9

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchBegin(JJFF)V

    .line 2594
    iget-wide v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    int-to-float v5, v8

    int-to-float v6, v9

    move-object v0, p0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchBy(JJFFF)V

    .line 2595
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, v3, v4}, Lorg/chromium/content/browser/ContentViewCore;->nativePinchEnd(JJ)V

    .line 2597
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public preserveSelectionOnNextLossOfFocus()V
    .locals 1

    .prologue
    .line 2114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPreserveSelectionOnNextLossOfFocus:Z

    .line 2115
    return-void
.end method

.method public removeContainerViewObserver(Lorg/chromium/content/browser/ContainerViewObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/chromium/content/browser/ContainerViewObserver;

    .prologue
    .line 855
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 856
    return-void
.end method

.method public removeGestureStateListener(Lorg/chromium/content_public/browser/GestureStateListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/chromium/content_public/browser/GestureStateListener;

    .prologue
    .line 1319
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 1320
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2698
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mJavaScriptInterfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2699
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2700
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeRemoveJavascriptInterface(JLjava/lang/String;)V

    .line 2702
    :cond_0
    return-void
.end method

.method public scrollBy(II)V
    .locals 9
    .param p1, "xPix"    # I
    .param p2, "yPix"    # I

    .prologue
    const/4 v5, 0x0

    .line 1769
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1770
    iget-wide v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    int-to-float v7, p1

    int-to-float v8, p2

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollBy(JJFFFF)V

    .line 1773
    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 11
    .param p1, "xPix"    # I
    .param p2, "yPix"    # I

    .prologue
    const/4 v2, 0x0

    .line 1779
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-nez v0, :cond_1

    .line 1796
    :cond_0
    :goto_0
    return-void

    .line 1780
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPix()F

    move-result v5

    .line 1781
    .local v5, "xCurrentPix":F
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPix()F

    move-result v6

    .line 1782
    .local v6, "yCurrentPix":F
    int-to-float v0, p1

    sub-float v9, v0, v5

    .line 1783
    .local v9, "dxPix":F
    int-to-float v0, p2

    sub-float v10, v0, v6

    .line 1784
    .local v10, "dyPix":F
    cmpl-float v0, v9, v2

    if-nez v0, :cond_2

    cmpl-float v0, v10, v2

    if-eqz v0, :cond_0

    .line 1785
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1789
    .local v3, "time":J
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mPotentiallyActiveFlingCount:I

    if-lez v0, :cond_3

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, v3, v4}, Lorg/chromium/content/browser/ContentViewCore;->nativeFlingCancel(JJ)V

    .line 1790
    :cond_3
    iget-wide v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    neg-float v7, v9

    neg-float v8, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollBegin(JJFFFF)V

    .line 1792
    iget-wide v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    move-object v0, p0

    move v7, v9

    move v8, v10

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollBy(JJFFFF)V

    .line 1794
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, v3, v4}, Lorg/chromium/content/browser/ContentViewCore;->nativeScrollEnd(JJ)V

    goto :goto_0
.end method

.method public selectPopupMenuItems([I)V
    .locals 8
    .param p1, "indices"    # [I

    .prologue
    const-wide/16 v6, 0x0

    .line 1927
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 1928
    iget-wide v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    iget-wide v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewCore;->nativeSelectPopupMenuItems(JJ[I)V

    .line 1931
    :cond_0
    iput-wide v6, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeSelectPopupSourceFrame:J

    .line 1932
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mSelectPopup:Lorg/chromium/content/browser/input/SelectPopup;

    .line 1933
    return-void
.end method

.method public sendDoubleTapForTest(JII)V
    .locals 7
    .param p1, "timeMs"    # J
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 1285
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1287
    :goto_0
    return-void

    .line 1286
    :cond_0
    iget-wide v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    int-to-float v5, p3

    int-to-float v6, p4

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/ContentViewCore;->nativeDoubleTap(JJFF)V

    goto :goto_0
.end method

.method sendOrientationChangeEvent(I)V
    .locals 4
    .param p1, "orientation"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 1940
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1943
    :goto_0
    return-void

    .line 1942
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSendOrientationChangeEvent(JI)V

    goto :goto_0
.end method

.method public setAccessibilityState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2897
    if-nez p1, :cond_0

    .line 2898
    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setInjectedAccessibility(Z)V

    .line 2899
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityAllowed:Z

    .line 2900
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchExplorationEnabled:Z

    .line 2907
    :goto_0
    return-void

    .line 2902
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->isDeviceAccessibilityScriptInjectionEnabled()Z

    move-result v0

    .line 2903
    .local v0, "useScriptInjection":Z
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->setInjectedAccessibility(Z)V

    .line 2904
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeAccessibilityAllowed:Z

    .line 2905
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mTouchExplorationEnabled:Z

    goto :goto_0
.end method

.method public setAdapterInputConnectionFactory(Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 633
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mAdapterInputConnectionFactory:Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;

    .line 634
    return-void
.end method

.method public setAllowJavascriptInterfacesInspection(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 2617
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetAllowJavascriptInterfacesInspection(JZ)V

    .line 2618
    return-void
.end method

.method public setBackgroundOpaque(Z)V
    .locals 4
    .param p1, "opaque"    # Z

    .prologue
    .line 3010
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3011
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetBackgroundOpaque(JZ)V

    .line 3013
    :cond_0
    return-void
.end method

.method public setBrowserAccessibilityManager(Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V
    .locals 0
    .param p1, "manager"    # Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    .prologue
    .line 2757
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mBrowserAccessibilityManager:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    .line 2758
    return-void
.end method

.method public setContainerView(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "containerView"    # Landroid/view/ViewGroup;

    .prologue
    .line 831
    :try_start_0
    const-string v2, "ContentViewCore.setContainerView"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 832
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 833
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPastePopupMenu:Lorg/chromium/content/browser/input/PastePopupMenu;

    .line 834
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    .line 835
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore;->hidePopupsAndClearSelection()V

    .line 838
    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    .line 839
    new-instance v2, Lorg/chromium/content/browser/ViewPositionObserver;

    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {v2, v3}, Lorg/chromium/content/browser/ViewPositionObserver;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    .line 840
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 841
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mViewAndroidDelegate:Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->updateCurrentContainerView()V

    .line 842
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v2}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content/browser/ContainerViewObserver;

    .line 843
    .local v1, "observer":Lorg/chromium/content/browser/ContainerViewObserver;
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/ContainerViewObserver;->onContainerViewChanged(Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 846
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Lorg/chromium/content/browser/ContainerViewObserver;
    :catchall_0
    move-exception v2

    const-string v3, "ContentViewCore.setContainerView"

    invoke-static {v3}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v2, "ContentViewCore.setContainerView"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 848
    return-void
.end method

.method public setContainerViewInternals(Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;)V
    .locals 0
    .param p1, "internalDispatcher"    # Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    .prologue
    .line 870
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContainerViewInternals:Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;

    .line 871
    return-void
.end method

.method public setContentViewClient(Lorg/chromium/content/browser/ContentViewClient;)V
    .locals 2
    .param p1, "client"    # Lorg/chromium/content/browser/ContentViewClient;

    .prologue
    .line 997
    if-nez p1, :cond_0

    .line 998
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The client can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContentViewClient:Lorg/chromium/content/browser/ContentViewClient;

    .line 1001
    return-void
.end method

.method public setContextualSearchClient(Lorg/chromium/content/browser/ContextualSearchClient;)V
    .locals 0
    .param p1, "contextualSearchClient"    # Lorg/chromium/content/browser/ContextualSearchClient;

    .prologue
    .line 3086
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mContextualSearchClient:Lorg/chromium/content/browser/ContextualSearchClient;

    .line 3087
    return-void
.end method

.method public setCurrentMotionEventOffsets(FF)V
    .locals 0
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 1751
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetX:F

    .line 1752
    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mCurrentTouchOffsetY:F

    .line 1753
    return-void
.end method

.method public setDownloadDelegate(Lorg/chromium/content/browser/ContentViewDownloadDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    .prologue
    .line 1952
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mDownloadDelegate:Lorg/chromium/content/browser/ContentViewDownloadDelegate;

    .line 1953
    return-void
.end method

.method public setDrawsContent(Z)V
    .locals 4
    .param p1, "draws"    # Z

    .prologue
    .line 1364
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1366
    :goto_0
    return-void

    .line 1365
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetDrawsContent(JZ)V

    goto :goto_0
.end method

.method public setFullscreenRequiredForOrientationLock(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 3073
    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mFullscreenRequiredForOrientationLock:Z

    .line 3074
    return-void
.end method

.method public setImeAdapterForTest(Lorg/chromium/content/browser/input/ImeAdapter;)V
    .locals 0
    .param p1, "imeAdapter"    # Lorg/chromium/content/browser/input/ImeAdapter;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 623
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    .line 624
    return-void
.end method

.method public setInjectedAccessibility(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2913
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->addOrRemoveAccessibilityApisIfNecessary()V

    .line 2914
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->setScriptEnabled(Z)V

    .line 2915
    return-void
.end method

.method public setInputMethodManagerWrapperForTest(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;)V
    .locals 0
    .param p1, "immw"    # Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 638
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    .line 639
    return-void
.end method

.method public setPopupZoomerForTest(Lorg/chromium/content/browser/PopupZoomer;)V
    .locals 0
    .param p1, "popupZoomer"    # Lorg/chromium/content/browser/PopupZoomer;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 935
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;

    .line 936
    return-void
.end method

.method public setShouldSetAccessibilityFocusOnPageLoad(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 2938
    iput-boolean p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mShouldSetAccessibilityFocusOnPageLoad:Z

    .line 2939
    return-void
.end method

.method public setSmartClipDataListener(Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

    .prologue
    .line 3006
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipDataListener:Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;

    .line 3007
    return-void
.end method

.method public setSmartClipOffsets(II)V
    .locals 0
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 2981
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetX:I

    .line 2982
    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mSmartClipOffsetY:I

    .line 2983
    return-void
.end method

.method public setTopControlsHeight(IZ)V
    .locals 4
    .param p1, "topControlsHeightPix"    # I
    .param p2, "topControlsShrinkBlinkSize"    # Z

    .prologue
    .line 594
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsHeightPix:I

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsShrinkBlinkSize:Z

    if-ne p2, v0, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsHeightPix:I

    .line 600
    iput-boolean p2, p0, Lorg/chromium/content/browser/ContentViewCore;->mTopControlsShrinkBlinkSize:Z

    .line 601
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->nativeWasResized(J)V

    goto :goto_0
.end method

.method public setZoomControlsDelegate(Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;)V
    .locals 1
    .param p1, "zoomControlsDelegate"    # Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    .prologue
    .line 1909
    if-nez p1, :cond_0

    .line 1910
    sget-object v0, Lorg/chromium/content/browser/ContentViewCore;->NO_OP_ZOOM_CONTROLS_DELEGATE:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    .line 1914
    :goto_0
    return-void

    .line 1913
    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore;->mZoomControlsDelegate:Lorg/chromium/content/browser/ContentViewCore$ZoomControlsDelegate;

    goto :goto_0
.end method

.method public shouldSetAccessibilityFocusOnPageLoad()Z
    .locals 1

    .prologue
    .line 2928
    iget-boolean v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mShouldSetAccessibilityFocusOnPageLoad:Z

    return v0
.end method

.method public stopCurrentAccessibilityNotifications()V
    .locals 1

    .prologue
    .line 2921
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->onPageLostFocus()V

    .line 2922
    return-void
.end method

.method public supportsAccessibilityAction(I)Z
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 2729
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mAccessibilityInjector:Lorg/chromium/content/browser/accessibility/AccessibilityInjector;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/AccessibilityInjector;->supportsAccessibilityAction(I)Z

    move-result v0

    return v0
.end method

.method public updateDoubleTapSupport(Z)V
    .locals 4
    .param p1, "supportsDoubleTap"    # Z

    .prologue
    .line 1922
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1924
    :goto_0
    return-void

    .line 1923
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetDoubleTapSupportEnabled(JZ)V

    goto :goto_0
.end method

.method updateGestureStateListener(I)V
    .locals 3
    .param p1, "gestureType"    # I

    .prologue
    .line 1323
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    .line 1324
    :goto_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1325
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mGestureStateListenersIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/GestureStateListener;

    .line 1326
    .local v0, "listener":Lorg/chromium/content_public/browser/GestureStateListener;
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1342
    :pswitch_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollStarted(II)V

    goto :goto_0

    .line 1328
    :pswitch_2
    invoke-virtual {v0}, Lorg/chromium/content_public/browser/GestureStateListener;->onPinchStarted()V

    goto :goto_0

    .line 1331
    :pswitch_3
    invoke-virtual {v0}, Lorg/chromium/content_public/browser/GestureStateListener;->onPinchEnded()V

    goto :goto_0

    .line 1334
    :pswitch_4
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content_public/browser/GestureStateListener;->onFlingEndGesture(II)V

    goto :goto_0

    .line 1339
    :pswitch_5
    invoke-virtual {v0}, Lorg/chromium/content_public/browser/GestureStateListener;->onFlingCancelGesture()V

    goto :goto_0

    .line 1347
    :pswitch_6
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content_public/browser/GestureStateListener;->onScrollEnded(II)V

    goto :goto_0

    .line 1355
    .end local v0    # "listener":Lorg/chromium/content_public/browser/GestureStateListener;
    :cond_0
    return-void

    .line 1326
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public updateMultiTouchZoomSupport(Z)V
    .locals 4
    .param p1, "supportsMultiTouchZoom"    # Z

    .prologue
    .line 1917
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1919
    :goto_0
    return-void

    .line 1918
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mNativeContentViewCore:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/ContentViewCore;->nativeSetMultiTouchZoomSupportEnabled(JZ)V

    goto :goto_0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 2543
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2544
    const/4 v0, 0x0

    .line 2546
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->pinchByDelta(F)Z

    move-result v0

    goto :goto_0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 2558
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2559
    const/4 v0, 0x0

    .line 2561
    :goto_0
    return v0

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->pinchByDelta(F)Z

    move-result v0

    goto :goto_0
.end method

.method public zoomReset()Z
    .locals 2

    .prologue
    .line 2574
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->canZoomOut()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2575
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getMinPageScaleFactor()F

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewCore;->pinchByDelta(F)Z

    move-result v0

    goto :goto_0
.end method
