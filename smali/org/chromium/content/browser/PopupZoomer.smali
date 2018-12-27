.class Lorg/chromium/content/browser/PopupZoomer;
.super Landroid/view/View;
.source "PopupZoomer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/PopupZoomer$ReverseInterpolator;,
        Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;,
        Lorg/chromium/content/browser/PopupZoomer$OnTapListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x12cL

.field private static final LOGTAG:Ljava/lang/String; = "PopupZoomer"

.field private static final ZOOM_BOUNDS_MARGIN:I = 0x19

.field private static sOverlayCornerRadius:F

.field private static sOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private static sOverlayPadding:Landroid/graphics/Rect;


# instance fields
.field private mAnimating:Z

.field private mAnimationStartTime:J

.field private mBottomExtrusion:F

.field private mClipRect:Landroid/graphics/RectF;

.field private mDrawRect:Landroid/graphics/RectF;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHideInterpolator:Landroid/view/animation/Interpolator;

.field private mLeftExtrusion:F

.field private mMaxScrollX:F

.field private mMaxScrollY:F

.field private mMinScrollX:F

.field private mMinScrollY:F

.field private mNeedsToInitDimensions:Z

.field private mOnTapListener:Lorg/chromium/content/browser/PopupZoomer$OnTapListener;

.field private mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

.field private mPopupScrollX:F

.field private mPopupScrollY:F

.field private mRightExtrusion:F

.field private mScale:F

.field private mShiftX:F

.field private mShiftY:F

.field private final mShowInterpolator:Landroid/view/animation/Interpolator;

.field private mShowing:Z

.field private mTargetBounds:Landroid/graphics/Rect;

.field private mTimeLeft:J

.field private mTopExtrusion:F

.field private final mTouch:Landroid/graphics/PointF;

.field private mViewClipRect:Landroid/graphics/RectF;

.field private mZoomedBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 176
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnTapListener:Lorg/chromium/content/browser/PopupZoomer$OnTapListener;

    .line 67
    iput-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

    .line 79
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 80
    new-instance v1, Lorg/chromium/content/browser/PopupZoomer$ReverseInterpolator;

    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v2}, Lorg/chromium/content/browser/PopupZoomer$ReverseInterpolator;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mHideInterpolator:Landroid/view/animation/Interpolator;

    .line 82
    iput-boolean v4, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z

    .line 83
    iput-boolean v4, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    .line 84
    iput-wide v6, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimationStartTime:J

    .line 89
    iput-wide v6, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    .line 105
    iput v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    iput v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    .line 108
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    .line 115
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    .line 178
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/PopupZoomer;->setVisibility(I)V

    .line 179
    invoke-virtual {p0, v5}, Lorg/chromium/content/browser/PopupZoomer;->setFocusable(Z)V

    .line 180
    invoke-virtual {p0, v5}, Lorg/chromium/content/browser/PopupZoomer;->setFocusableInTouchMode(Z)V

    .line 182
    new-instance v0, Lorg/chromium/content/browser/PopupZoomer$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/PopupZoomer$1;-><init>(Lorg/chromium/content/browser/PopupZoomer;)V

    .line 229
    .local v0, "listener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 230
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/PopupZoomer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/PopupZoomer;

    .prologue
    .line 38
    iget-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/PopupZoomer;FF)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/PopupZoomer;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/PopupZoomer;->isTouchOutsideArea(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/PopupZoomer;FF)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/PopupZoomer;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/PopupZoomer;->scroll(FF)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/PopupZoomer;)Lorg/chromium/content/browser/PopupZoomer$OnTapListener;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/PopupZoomer;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnTapListener:Lorg/chromium/content/browser/PopupZoomer$OnTapListener;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/PopupZoomer;FF)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/PopupZoomer;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/PopupZoomer;->convertTouchPoint(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 163
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p1    # "low":F
    :goto_0
    return p1

    .restart local p1    # "low":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private static constrain(III)I
    .locals 0
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 167
    if-ge p0, p1, :cond_0

    .end local p1    # "low":I
    :goto_0
    return p1

    .restart local p1    # "low":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private convertTouchPoint(FF)Landroid/graphics/PointF;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 528
    iget v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    sub-float/2addr p1, v0

    .line 529
    iget v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    sub-float/2addr p2, v0

    .line 530
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v1, p1, v1

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    div-float/2addr v1, v2

    add-float p1, v0, v1

    .line 531
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v1, p2, v1

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    div-float/2addr v1, v2

    add-float p2, v0, v1

    .line 532
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private static getOverlayCornerRadius(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    sget v1, Lorg/chromium/content/browser/PopupZoomer;->sOverlayCornerRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/content/R$dimen;->link_preview_overlay_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lorg/chromium/content/browser/PopupZoomer;->sOverlayCornerRadius:F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    sget v1, Lorg/chromium/content/browser/PopupZoomer;->sOverlayCornerRadius:F

    return v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "PopupZoomer"

    const-string v2, "No corner radius resource for PopupZoomer overlay found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Lorg/chromium/content/browser/PopupZoomer;->sOverlayCornerRadius:F

    goto :goto_0
.end method

.method private static getOverlayDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    sget-object v1, Lorg/chromium/content/browser/PopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 150
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/content/R$drawable;->ondemand_overlay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lorg/chromium/content/browser/PopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lorg/chromium/content/browser/PopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    .line 157
    sget-object v1, Lorg/chromium/content/browser/PopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lorg/chromium/content/browser/PopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 159
    :cond_0
    sget-object v1, Lorg/chromium/content/browser/PopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "PopupZoomer"

    const-string v2, "No drawable resource for PopupZoomer overlay found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    sput-object v1, Lorg/chromium/content/browser/PopupZoomer;->sOverlayDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private hideImmediately()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z

    .line 296
    iput-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    .line 297
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    .line 298
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;->onPopupZoomerHidden(Lorg/chromium/content/browser/PopupZoomer;)V

    .line 301
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/PopupZoomer;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    .line 304
    return-void
.end method

.method private initDimensions()V
    .locals 15

    .prologue
    .line 326
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    if-nez v10, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    .line 331
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    iget-object v12, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    iget-object v13, p0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    sub-float v2, v10, v11

    .line 332
    .local v2, "l":F
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iget v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    iget-object v12, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    iget-object v13, p0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    sub-float v8, v10, v11

    .line 333
    .local v8, "t":F
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float v5, v2, v10

    .line 334
    .local v5, "r":F
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float v0, v8, v10

    .line 335
    .local v0, "b":F
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v2, v8, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    .line 336
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->getWidth()I

    move-result v9

    .line 337
    .local v9, "width":I
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->getHeight()I

    move-result v1

    .line 339
    .local v1, "height":I
    new-instance v10, Landroid/graphics/RectF;

    const/high16 v11, 0x41c80000    # 25.0f

    const/high16 v12, 0x41c80000    # 25.0f

    add-int/lit8 v13, v9, -0x19

    int-to-float v13, v13

    add-int/lit8 v14, v1, -0x19

    int-to-float v14, v14

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    .line 347
    const/4 v10, 0x0

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    .line 348
    const/4 v10, 0x0

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    .line 354
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    const/high16 v11, 0x41c80000    # 25.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    .line 355
    const/high16 v10, 0x41c80000    # 25.0f

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    .line 356
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    iget v12, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->left:F

    .line 357
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->right:F

    iget v12, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->right:F

    .line 363
    :cond_2
    :goto_1
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    const/high16 v11, 0x41c80000    # 25.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_9

    .line 364
    const/high16 v10, 0x41c80000    # 25.0f

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    .line 365
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->top:F

    iget v12, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->top:F

    .line 366
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->bottom:F

    iget v12, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    .line 375
    :cond_3
    :goto_2
    const/4 v10, 0x0

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollY:F

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollY:F

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollX:F

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollX:F

    .line 376
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    add-float/2addr v10, v11

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    .line 377
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v11

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollX:F

    .line 379
    :cond_4
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    iget v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    add-float/2addr v10, v11

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_5

    .line 380
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollX:F

    .line 382
    :cond_5
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iget v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    add-float/2addr v10, v11

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6

    .line 383
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollY:F

    .line 385
    :cond_6
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    iget v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    add-float/2addr v10, v11

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    .line 386
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v11

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollY:F

    .line 389
    :cond_7
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mViewClipRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 391
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    sub-float/2addr v10, v11

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mLeftExtrusion:F

    .line 392
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v11

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mRightExtrusion:F

    .line 393
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mTopExtrusion:F

    .line 394
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v11

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mBottomExtrusion:F

    .line 397
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    div-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float v3, v10, v11

    .line 399
    .local v3, "percentX":F
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    div-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float v4, v10, v11

    .line 402
    .local v4, "percentY":F
    iget v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollX:F

    iget v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollX:F

    sub-float v7, v10, v11

    .line 403
    .local v7, "scrollWidth":F
    iget v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollY:F

    iget v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollY:F

    sub-float v6, v10, v11

    .line 404
    .local v6, "scrollHeight":F
    mul-float v10, v7, v3

    const/high16 v11, -0x40800000    # -1.0f

    mul-float/2addr v10, v11

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    .line 405
    mul-float v10, v6, v4

    const/high16 v11, -0x40800000    # -1.0f

    mul-float/2addr v10, v11

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    .line 407
    iget v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    iget v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollX:F

    iget v12, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollX:F

    invoke-static {v10, v11, v12}, Lorg/chromium/content/browser/PopupZoomer;->constrain(FFF)F

    move-result v10

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    .line 408
    iget v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    iget v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollY:F

    iget v12, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollY:F

    invoke-static {v10, v11, v12}, Lorg/chromium/content/browser/PopupZoomer;->constrain(FFF)F

    move-result v10

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    .line 411
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    iput-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    goto/16 :goto_0

    .line 358
    .end local v3    # "percentX":F
    .end local v4    # "percentY":F
    .end local v6    # "scrollHeight":F
    .end local v7    # "scrollWidth":F
    :cond_8
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    add-int/lit8 v11, v9, -0x19

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 359
    add-int/lit8 v10, v9, -0x19

    int-to-float v10, v10

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v11

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    .line 360
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->right:F

    iget v12, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->right:F

    .line 361
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    iget v12, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->left:F

    goto/16 :goto_1

    .line 367
    :cond_9
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    add-int/lit8 v11, v1, -0x19

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    .line 368
    add-int/lit8 v10, v1, -0x19

    int-to-float v10, v10

    iget-object v11, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v11

    iput v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    .line 369
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->bottom:F

    iget v12, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    .line 370
    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->top:F

    iget v12, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2
.end method

.method private isTouchOutsideArea(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 539
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scroll(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 270
    iget v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    sub-float/2addr v0, p1

    iget v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollX:F

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollX:F

    invoke-static {v0, v1, v2}, Lorg/chromium/content/browser/PopupZoomer;->constrain(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    .line 271
    iget v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    sub-float/2addr v0, p2

    iget v1, p0, Lorg/chromium/content/browser/PopupZoomer;->mMinScrollY:F

    iget v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mMaxScrollY:F

    invoke-static {v0, v1, v2}, Lorg/chromium/content/browser/PopupZoomer;->constrain(FFF)F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    .line 272
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->invalidate()V

    .line 273
    return-void
.end method

.method private setTargetBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 322
    iput-object p1, p0, Lorg/chromium/content/browser/PopupZoomer;->mTargetBounds:Landroid/graphics/Rect;

    .line 323
    return-void
.end method

.method private startAnimation(Z)V
    .locals 8
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    .line 276
    iput-boolean v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z

    .line 277
    iput-boolean p1, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    .line 278
    iput-wide v6, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    .line 279
    if-eqz p1, :cond_1

    .line 280
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/PopupZoomer;->setVisibility(I)V

    .line 281
    iput-boolean v3, p0, Lorg/chromium/content/browser/PopupZoomer;->mNeedsToInitDimensions:Z

    .line 282
    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

    invoke-interface {v2, p0}, Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;->onPopupZoomerShown(Lorg/chromium/content/browser/PopupZoomer;)V

    .line 290
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimationStartTime:J

    .line 291
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->invalidate()V

    .line 292
    return-void

    .line 286
    :cond_1
    iget-wide v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimationStartTime:J

    const-wide/16 v4, 0x12c

    add-long v0, v2, v4

    .line 287
    .local v0, "endTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    iput-wide v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    .line 288
    iget-wide v2, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    iput-wide v6, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    goto :goto_0
.end method


# virtual methods
.method protected acceptZeroSizeView()Z
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public hide(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 515
    iget-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    if-nez v0, :cond_0

    .line 522
    :goto_0
    return-void

    .line 517
    :cond_0
    if-eqz p1, :cond_1

    .line 518
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/PopupZoomer;->startAnimation(Z)V

    goto :goto_0

    .line 520
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/PopupZoomer;->hideImmediately()V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    .line 423
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->acceptZeroSizeView()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->getWidth()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->getHeight()I

    move-result v7

    if-eqz v7, :cond_0

    .line 426
    :cond_2
    iget-boolean v7, p0, Lorg/chromium/content/browser/PopupZoomer;->mNeedsToInitDimensions:Z

    if-eqz v7, :cond_3

    .line 427
    iput-boolean v12, p0, Lorg/chromium/content/browser/PopupZoomer;->mNeedsToInitDimensions:Z

    .line 428
    invoke-direct {p0}, Lorg/chromium/content/browser/PopupZoomer;->initDimensions()V

    .line 431
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimationStartTime:J

    sub-long/2addr v7, v9

    iget-wide v9, p0, Lorg/chromium/content/browser/PopupZoomer;->mTimeLeft:J

    add-long/2addr v7, v9

    long-to-float v7, v7

    const/high16 v8, 0x43960000    # 300.0f

    div-float v4, v7, v8

    .line 435
    .local v4, "time":F
    const/4 v7, 0x0

    invoke-static {v4, v7, v11}, Lorg/chromium/content/browser/PopupZoomer;->constrain(FFF)F

    move-result v4

    .line 436
    cmpl-float v7, v4, v11

    if-ltz v7, :cond_4

    .line 437
    iput-boolean v12, p0, Lorg/chromium/content/browser/PopupZoomer;->mAnimating:Z

    .line 438
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->isShowing()Z

    move-result v7

    if-nez v7, :cond_5

    .line 439
    invoke-direct {p0}, Lorg/chromium/content/browser/PopupZoomer;->hideImmediately()V

    goto :goto_0

    .line 443
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->invalidate()V

    .line 448
    :cond_5
    iget-boolean v7, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    if-eqz v7, :cond_6

    .line 449
    iget-object v7, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 458
    .local v1, "fractionAnimation":F
    :goto_1
    const/high16 v7, 0x42a00000    # 80.0f

    mul-float/2addr v7, v1

    float-to-int v7, v7

    invoke-virtual {p1, v7, v12, v12, v12}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 459
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 465
    iget v7, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    sub-float/2addr v7, v11

    mul-float/2addr v7, v1

    iget v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    div-float/2addr v7, v8

    iget v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    div-float v8, v11, v8

    add-float v3, v7, v8

    .line 470
    .local v3, "scale":F
    iget v7, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftX:F

    neg-float v7, v7

    sub-float v8, v11, v1

    mul-float/2addr v7, v8

    iget v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    div-float v5, v7, v8

    .line 471
    .local v5, "unshiftX":F
    iget v7, p0, Lorg/chromium/content/browser/PopupZoomer;->mShiftY:F

    neg-float v7, v7

    sub-float v8, v11, v1

    mul-float/2addr v7, v8

    iget v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mScale:F

    div-float v6, v7, v8

    .line 474
    .local v6, "unshiftY":F
    iget-object v7, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget v9, p0, Lorg/chromium/content/browser/PopupZoomer;->mLeftExtrusion:F

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    add-float/2addr v8, v5

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 475
    iget-object v7, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget v9, p0, Lorg/chromium/content/browser/PopupZoomer;->mTopExtrusion:F

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    add-float/2addr v8, v6

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 476
    iget-object v7, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget v9, p0, Lorg/chromium/content/browser/PopupZoomer;->mRightExtrusion:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    add-float/2addr v8, v5

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 477
    iget-object v7, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget v9, p0, Lorg/chromium/content/browser/PopupZoomer;->mBottomExtrusion:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    add-float/2addr v8, v6

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 478
    iget-object v7, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 483
    iget-object v7, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v3, v3, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 484
    iget v7, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollX:F

    iget v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mPopupScrollY:F

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 485
    iget-object v7, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    const/4 v10, 0x0

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 486
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 487
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lorg/chromium/content/browser/PopupZoomer;->getOverlayDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 488
    .local v2, "overlayNineTile":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    sget-object v8, Lorg/chromium/content/browser/PopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    sget-object v9, Lorg/chromium/content/browser/PopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    sget-object v10, Lorg/chromium/content/browser/PopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/chromium/content/browser/PopupZoomer;->mDrawRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    sget-object v11, Lorg/chromium/content/browser/PopupZoomer;->sOverlayPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 494
    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v7, v1

    float-to-int v7, v7

    const/16 v8, 0xff

    invoke-static {v7, v12, v8}, Lorg/chromium/content/browser/PopupZoomer;->constrain(III)I

    move-result v0

    .line 495
    .local v0, "alpha":I
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 496
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 497
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 451
    .end local v0    # "alpha":I
    .end local v1    # "fractionAnimation":F
    .end local v2    # "overlayNineTile":Landroid/graphics/drawable/Drawable;
    .end local v3    # "scale":F
    .end local v5    # "unshiftX":F
    .end local v6    # "unshiftY":F
    :cond_6
    iget-object v7, p0, Lorg/chromium/content/browser/PopupZoomer;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .restart local v1    # "fractionAnimation":F
    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 546
    const/4 v0, 0x1

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    .line 250
    iget-object v5, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 251
    iget-object v5, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 252
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    .line 254
    :cond_0
    iput-object p1, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    .line 257
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 258
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 259
    .local v4, "path":Landroid/graphics/Path;
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v1, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 260
    .local v1, "canvasRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lorg/chromium/content/browser/PopupZoomer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/content/browser/PopupZoomer;->getOverlayCornerRadius(Landroid/content/Context;)F

    move-result v3

    .line 261
    .local v3, "overlayCornerRadius":F
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v1, v3, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 262
    sget-object v5, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 263
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 264
    .local v2, "clearPaint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 265
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 267
    return-void
.end method

.method public setLastTouch(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 317
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 318
    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mTouch:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 319
    return-void
.end method

.method public setOnTapListener(Lorg/chromium/content/browser/PopupZoomer$OnTapListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/chromium/content/browser/PopupZoomer$OnTapListener;

    .prologue
    .line 236
    iput-object p1, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnTapListener:Lorg/chromium/content/browser/PopupZoomer$OnTapListener;

    .line 237
    return-void
.end method

.method public setOnVisibilityChangedListener(Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

    .prologue
    .line 243
    iput-object p1, p0, Lorg/chromium/content/browser/PopupZoomer;->mOnVisibilityChangedListener:Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;

    .line 244
    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 504
    iget-boolean v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/PopupZoomer;->mZoomedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/PopupZoomer;->setTargetBounds(Landroid/graphics/Rect;)V

    .line 507
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/PopupZoomer;->startAnimation(Z)V

    goto :goto_0
.end method
