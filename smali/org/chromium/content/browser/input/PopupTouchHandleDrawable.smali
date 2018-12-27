.class public Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
.super Landroid/view/View;
.source "PopupTouchHandleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final CENTER:I = 0x1

.field private static final FADE_IN_DELAY_MS:I = 0x12c

.field private static final FADE_IN_DURATION_MS:I = 0xc8

.field static final LEFT:I = 0x0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation
.end field

.field static final RIGHT:I = 0x2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation
.end field


# instance fields
.field private mAlpha:F

.field private final mContainer:Landroid/widget/PopupWindow;

.field private final mContext:Landroid/content/Context;

.field private mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

.field private final mDelegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFadeStartTime:J

.field private mHasPendingInvalidate:Z

.field private mHotspotX:F

.field private mHotspotY:F

.field private mInvalidationRunnable:Ljava/lang/Runnable;

.field private mOrientation:I

.field private final mParentPositionListener:Lorg/chromium/content/browser/PositionObserver$Listener;

.field private mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

.field private mParentPositionX:I

.field private mParentPositionY:I

.field private mPositionX:I

.field private mPositionY:I

.field private final mTempScreenCoords:[I

.field private mTemporarilyHidden:Z

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;)V
    .locals 6
    .param p1, "delegate"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-interface {p1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;->getParent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTempScreenCoords:[I

    .line 66
    const/4 v2, -0x1

    iput v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mOrientation:I

    .line 111
    invoke-interface {p1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;->getParent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContext:Landroid/content/Context;

    .line 112
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDelegate:Ljava/lang/ref/WeakReference;

    .line 113
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const v5, 0x10102c8

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    .line 114
    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 115
    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 116
    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 117
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    .line 118
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mVisible:Z

    .line 119
    new-instance v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$1;-><init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionListener:Lorg/chromium/content/browser/PositionObserver$Listener;

    .line 125
    return-void

    :cond_0
    move v0, v1

    .line 118
    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;II)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateParentPosition(II)V

    return-void
.end method

.method static synthetic access$102(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHasPendingInvalidate:Z

    return p1
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->doInvalidate()V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->isScrollInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->rescheduleFadeIn()V

    return-void
.end method

.method static synthetic access$502(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHidden:Z

    return p1
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->beginFadeIn()V

    return-void
.end method

.method private beginFadeIn()V
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    .line 272
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mFadeStartTime:J

    .line 273
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->doInvalidate()V

    goto :goto_0
.end method

.method private doInvalidate()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updatePosition()V

    .line 229
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateVisibility()V

    .line 230
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->invalidate()V

    goto :goto_0
.end method

.method private getAdjustedPositionX()I
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionX:I

    iget v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHotspotX:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getAdjustedPositionY()I
    .locals 2

    .prologue
    .line 302
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionY:I

    iget v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHotspotY:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getContainerPositionX()I
    .locals 2

    .prologue
    .line 195
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionX:I

    iget v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionX:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getContainerPositionY()I
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionY:I

    iget v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionY:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getPositionX()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 388
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionX:I

    return v0
.end method

.method private getPositionY()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 393
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionY:I

    return v0
.end method

.method private getVisibleHeight()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 405
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getVisibleWidth()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 399
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method private hide()V
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHidden:Z

    .line 341
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 342
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionListener:Lorg/chromium/content/browser/PositionObserver$Listener;

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/PositionObserver;->removeListener(Lorg/chromium/content/browser/PositionObserver$Listener;)V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    .line 347
    :cond_0
    return-void
.end method

.method private isScrollInProgress()Z
    .locals 2

    .prologue
    .line 306
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDelegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;

    .line 307
    .local v0, "delegate":Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;
    if-nez v0, :cond_0

    .line 308
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->hide()V

    .line 309
    const/4 v1, 0x0

    .line 312
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;->isScrollInProgress()Z

    move-result v1

    goto :goto_0
.end method

.method private rescheduleFadeIn()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;-><init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 265
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-static {p0, v0, v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 267
    return-void
.end method

.method private scheduleInvalidate()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mInvalidationRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$2;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$2;-><init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mInvalidationRunnable:Ljava/lang/Runnable;

    .line 244
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHasPendingInvalidate:Z

    if-eqz v0, :cond_1

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHasPendingInvalidate:Z

    .line 246
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mInvalidationRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setCenterOrientation()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 361
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setOrientation(I)V

    .line 362
    return-void
.end method

.method private setFocus(FF)V
    .locals 4
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 366
    float-to-int v2, p1

    iget v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHotspotX:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v0, v2, v3

    .line 367
    .local v0, "x":I
    float-to-int v2, p2

    iget v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHotspotY:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v1, v2, v3

    .line 368
    .local v1, "y":I
    iget v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionX:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionY:I

    if-ne v2, v1, :cond_0

    .line 376
    :goto_0
    return-void

    .line 369
    :cond_0
    iput v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionX:I

    .line 370
    iput v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionY:I

    .line 371
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->isScrollInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->temporarilyHide()V

    goto :goto_0

    .line 374
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->scheduleInvalidate()V

    goto :goto_0
.end method

.method private setLeftOrientation()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setOrientation(I)V

    .line 357
    return-void
.end method

.method private setOrientation(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/high16 v5, 0x40800000    # 4.0f

    .line 150
    sget-boolean v3, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-ltz p1, :cond_0

    const/4 v3, 0x2

    if-le p1, v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 151
    :cond_1
    iget v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mOrientation:I

    if-ne v3, p1, :cond_2

    .line 185
    :goto_0
    return-void

    .line 153
    :cond_2
    iget v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mOrientation:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    const/4 v0, 0x1

    .line 154
    .local v0, "hadValidOrientation":Z
    :goto_1
    iput p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mOrientation:I

    .line 156
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getAdjustedPositionX()I

    move-result v1

    .line 157
    .local v1, "oldAdjustedPositionX":I
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getAdjustedPositionY()I

    move-result v2

    .line 159
    .local v2, "oldAdjustedPositionY":I
    packed-switch p1, :pswitch_data_0

    .line 174
    :pswitch_0
    iget-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/chromium/content/browser/input/HandleViewResources;->getCenterHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 175
    iget-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHotspotX:F

    .line 179
    :goto_2
    const/4 v3, 0x0

    iput v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHotspotY:F

    .line 182
    if-eqz v0, :cond_3

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {p0, v3, v4}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setFocus(FF)V

    .line 183
    :cond_3
    iget-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    iget v5, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 184
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->scheduleInvalidate()V

    goto :goto_0

    .line 153
    .end local v0    # "hadValidOrientation":Z
    .end local v1    # "oldAdjustedPositionX":I
    .end local v2    # "oldAdjustedPositionY":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 161
    .restart local v0    # "hadValidOrientation":Z
    .restart local v1    # "oldAdjustedPositionX":I
    .restart local v2    # "oldAdjustedPositionY":I
    :pswitch_1
    iget-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/chromium/content/browser/input/HandleViewResources;->getLeftHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    iget-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHotspotX:F

    goto :goto_2

    .line 167
    :pswitch_2
    iget-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/chromium/content/browser/input/HandleViewResources;->getRightHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    iget-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHotspotX:F

    goto :goto_2

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setRightOrientation()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 351
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setOrientation(I)V

    .line 352
    return-void
.end method

.method private setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 380
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mVisible:Z

    .line 381
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 382
    .local v0, "visibility":I
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 384
    :goto_1
    return-void

    .line 381
    .end local v0    # "visibility":I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 383
    .restart local v0    # "visibility":I
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->scheduleInvalidate()V

    goto :goto_1
.end method

.method private show()V
    .locals 6
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 317
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDelegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;

    .line 320
    .local v0, "delegate":Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;
    if-nez v0, :cond_1

    .line 321
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->hide()V

    goto :goto_0

    .line 325
    :cond_1
    invoke-interface {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;->getParentPositionObserver()Lorg/chromium/content/browser/PositionObserver;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    .line 326
    sget-boolean v1, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 330
    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    invoke-interface {v1}, Lorg/chromium/content/browser/PositionObserver;->getPositionX()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    invoke-interface {v2}, Lorg/chromium/content/browser/PositionObserver;->getPositionY()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateParentPosition(II)V

    .line 332
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionListener:Lorg/chromium/content/browser/PositionObserver$Listener;

    invoke-interface {v1, v2}, Lorg/chromium/content/browser/PositionObserver;->addListener(Lorg/chromium/content/browser/PositionObserver$Listener;)V

    .line 333
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 334
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;->getParent()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getContainerPositionX()I

    move-result v4

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getContainerPositionY()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method private temporarilyHide()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHidden:Z

    .line 222
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateVisibility()V

    .line 223
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->rescheduleFadeIn()V

    .line 224
    return-void
.end method

.method private updateAlpha()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 213
    iget v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    .line 218
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 215
    .local v0, "currentTimeMillis":J
    iget-wide v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mFadeStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x43480000    # 200.0f

    div-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    .line 216
    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    iget v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 217
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->scheduleInvalidate()V

    goto :goto_0
.end method

.method private updateParentPosition(II)V
    .locals 1
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I

    .prologue
    .line 188
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionY:I

    if-ne v0, p2, :cond_0

    .line 192
    :goto_0
    return-void

    .line 189
    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionX:I

    .line 190
    iput p2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionY:I

    .line 191
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->temporarilyHide()V

    goto :goto_0
.end method

.method private updatePosition()V
    .locals 6

    .prologue
    .line 203
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getContainerPositionX()I

    move-result v1

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getContainerPositionY()I

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 205
    return-void
.end method

.method private updateVisibility()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-boolean v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mVisible:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHidden:Z

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 209
    .local v0, "visible":Z
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setVisibility(I)V

    .line 210
    return-void

    .end local v0    # "visible":Z
    :cond_0
    move v0, v1

    .line 208
    goto :goto_0

    .line 209
    .restart local v0    # "visible":Z
    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 287
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateAlpha()V

    .line 289
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 290
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 279
    invoke-virtual {p0, v1, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setMeasuredDimension(II)V

    .line 283
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v5, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDelegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;

    .line 131
    .local v0, "delegate":Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;
    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->hide()V

    .line 146
    :goto_0
    return v1

    .line 139
    :cond_0
    invoke-interface {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;->getParent()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTempScreenCoords:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTempScreenCoords:[I

    aget v6, v6, v1

    int-to-float v6, v6

    sub-float v3, v5, v6

    .line 141
    .local v3, "offsetX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTempScreenCoords:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    sub-float v4, v5, v6

    .line 142
    .local v4, "offsetY":F
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 143
    .local v2, "offsetEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 144
    invoke-interface {v0, v2}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$PopupTouchHandleDrawableDelegate;->onTouchHandleEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 145
    .local v1, "handled":Z
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0
.end method
