.class Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lorg/chromium/ui/base/ViewAndroidDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ContentViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentViewAndroidDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAnchorViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentContainerView:Landroid/view/ViewGroup;

.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    const-class v0, Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1

    .prologue
    .line 155
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mAnchorViews:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/browser/ContentViewCore;Lorg/chromium/content/browser/ContentViewCore$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p2, "x1"    # Lorg/chromium/content/browser/ContentViewCore$1;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    return-void
.end method

.method private doSetAnchorViewPosition(Landroid/view/View;FFFF)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_0

    .line 250
    :goto_0
    return-void

    .line 209
    :cond_0
    sget-boolean v6, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    iget-object v7, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Landroid/view/ViewGroup;

    if-eq v6, v7, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 211
    :cond_1
    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v6}, Lorg/chromium/content/browser/ContentViewCore;->access$000(Lorg/chromium/content/browser/ContentViewCore;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->create(Landroid/content/Context;)Lorg/chromium/ui/gfx/DeviceDisplayInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDIPScale()D

    move-result-wide v6

    double-to-float v2, v6

    .line 214
    .local v2, "scale":F
    mul-float v6, p2, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 215
    .local v0, "leftMargin":I
    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v6}, Lorg/chromium/content/browser/ContentViewCore;->access$100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v6

    mul-float v7, p3, v2

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 216
    .local v5, "topMargin":I
    mul-float v6, p4, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 218
    .local v3, "scaledWidth":I
    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Landroid/view/ViewGroup;

    instance-of v6, v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_4

    .line 220
    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Landroid/view/ViewGroup;

    invoke-static {v6}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 221
    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    add-float v7, p4, p2

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int v4, v6, v7

    .line 226
    .local v4, "startMargin":I
    :goto_1
    add-int v6, v3, v4

    iget-object v7, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 227
    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    sub-int v3, v6, v4

    .line 229
    :cond_2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    mul-float v6, p5, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {v1, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 231
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v1, v4}, Lorg/chromium/base/ApiCompatibilityUtils;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 232
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 233
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 224
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "startMargin":I
    :cond_3
    move v4, v0

    .restart local v4    # "startMargin":I
    goto :goto_1

    .line 234
    .end local v4    # "startMargin":I
    :cond_4
    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Landroid/view/ViewGroup;

    instance-of v6, v6, Landroid/widget/AbsoluteLayout;

    if-eqz v6, :cond_5

    .line 240
    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v6}, Lorg/chromium/content/browser/ContentViewCore;->access$100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPixInt()I

    move-result v6

    add-int/2addr v0, v6

    .line 241
    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v6}, Lorg/chromium/content/browser/ContentViewCore;->access$100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v6

    invoke-virtual {v6}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result v6

    add-int/2addr v5, v6

    .line 243
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    mul-float v6, p5, v2

    float-to-int v6, v6

    invoke-direct {v1, v3, v6, v0, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 246
    .local v1, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 248
    .end local v1    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_5
    const-string v6, "ContentViewCore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown layout "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public acquireAnchorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 188
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewCore;->access$000(Lorg/chromium/content/browser/ContentViewCore;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, "anchorView":Landroid/view/View;
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mAnchorViews:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 191
    return-object v0
.end method

.method public releaseAnchorView(Landroid/view/View;)V
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 254
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mAnchorViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 256
    return-void
.end method

.method public setAnchorViewPosition(Landroid/view/View;FFFF)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 197
    iget-object v6, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mAnchorViews:Ljava/util/Map;

    new-instance v0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;-><init>(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;FFFF)V

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-direct/range {p0 .. p5}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->doSetAnchorViewPosition(Landroid/view/View;FFFF)V

    .line 199
    return-void
.end method

.method updateCurrentContainerView()V
    .locals 10

    .prologue
    .line 264
    iget-object v8, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Landroid/view/ViewGroup;

    .line 265
    .local v8, "oldContainerView":Landroid/view/ViewGroup;
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$200(Lorg/chromium/content/browser/ContentViewCore;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Landroid/view/ViewGroup;

    .line 266
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mAnchorViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 267
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 268
    .local v1, "anchorView":Landroid/view/View;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;

    .line 269
    .local v9, "position":Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 270
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 271
    if-eqz v9, :cond_0

    .line 272
    invoke-static {v9}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->access$300(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F

    move-result v2

    invoke-static {v9}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->access$400(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F

    move-result v3

    invoke-static {v9}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->access$500(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F

    move-result v4

    invoke-static {v9}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->access$600(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->doSetAnchorViewPosition(Landroid/view/View;FFFF)V

    goto :goto_0

    .line 276
    .end local v1    # "anchorView":Landroid/view/View;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;>;"
    .end local v9    # "position":Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;
    :cond_1
    return-void
.end method
