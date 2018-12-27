.class public Lorg/chromium/ui/resources/system/SystemResourceLoader;
.super Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;
.source "SystemResourceLoader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COS_PI_OVER_6:F = 0.866f

.field private static final SIN_PI_OVER_6:F = 0.5f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/chromium/ui/resources/system/SystemResourceLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/resources/system/SystemResourceLoader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;Landroid/content/Context;)V
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "callback"    # Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    new-instance v0, Lorg/chromium/ui/resources/system/SystemResourceLoader$1;

    invoke-direct {v0, p3}, Lorg/chromium/ui/resources/system/SystemResourceLoader$1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)Lorg/chromium/ui/resources/Resource;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-static {p0, p1}, Lorg/chromium/ui/resources/system/SystemResourceLoader;->createResource(Landroid/content/Context;I)Lorg/chromium/ui/resources/Resource;

    move-result-object v0

    return-object v0
.end method

.method private static createOverscrollGlowLBitmap(Landroid/content/Context;)Lorg/chromium/ui/resources/Resource;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static/range {p0 .. p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->create(Landroid/content/Context;)Lorg/chromium/ui/gfx/DeviceDisplayInfo;

    move-result-object v12

    .line 71
    .local v12, "displayInfo":Lorg/chromium/ui/gfx/DeviceDisplayInfo;
    invoke-virtual {v12}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getPhysicalDisplayWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v12}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getPhysicalDisplayWidth()I

    move-result v15

    .line 73
    .local v15, "screenWidth":I
    :goto_0
    invoke-virtual {v12}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getPhysicalDisplayHeight()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v12}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getPhysicalDisplayHeight()I

    move-result v14

    .line 76
    .local v14, "screenHeight":I
    :goto_1
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    div-float v10, v2, v3

    .line 77
    .local v10, "arcWidth":F
    const v2, 0x3f5db22d    # 0.866f

    mul-float v16, v2, v10

    .line 78
    .local v16, "y":F
    sub-float v13, v10, v16

    .line 80
    .local v13, "height":F
    neg-float v2, v10

    const/high16 v3, 0x40000000    # 2.0f

    div-float v8, v2, v3

    .line 81
    .local v8, "arcRectX":F
    neg-float v2, v10

    sub-float v9, v2, v16

    .line 82
    .local v9, "arcRectY":F
    const/high16 v2, 0x40000000    # 2.0f

    mul-float v7, v10, v2

    .line 83
    .local v7, "arcRectWidth":F
    const/high16 v2, 0x40000000    # 2.0f

    mul-float v6, v10, v2

    .line 84
    .local v6, "arcRectHeight":F
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, v8, v7

    add-float v3, v9, v6

    invoke-direct {v1, v8, v9, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 87
    .local v1, "arcRect":Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 88
    .local v5, "arcPaint":Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    const/16 v2, 0xbb

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 90
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    float-to-int v2, v10

    float-to-int v3, v13

    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 93
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 94
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/high16 v2, 0x42340000    # 45.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 96
    new-instance v2, Lorg/chromium/ui/resources/statics/StaticResource;

    invoke-direct {v2, v11}, Lorg/chromium/ui/resources/statics/StaticResource;-><init>(Landroid/graphics/Bitmap;)V

    return-object v2

    .line 71
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "arcRect":Landroid/graphics/RectF;
    .end local v5    # "arcPaint":Landroid/graphics/Paint;
    .end local v6    # "arcRectHeight":F
    .end local v7    # "arcRectWidth":F
    .end local v8    # "arcRectX":F
    .end local v9    # "arcRectY":F
    .end local v10    # "arcWidth":F
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "height":F
    .end local v14    # "screenHeight":I
    .end local v15    # "screenWidth":I
    .end local v16    # "y":F
    :cond_0
    invoke-virtual {v12}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplayWidth()I

    move-result v15

    goto :goto_0

    .line 73
    .restart local v15    # "screenWidth":I
    :cond_1
    invoke-virtual {v12}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplayHeight()I

    move-result v14

    goto :goto_1
.end method

.method private static createResource(Landroid/content/Context;I)Lorg/chromium/ui/resources/Resource;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/16 v3, 0x80

    const/4 v2, 0x0

    .line 47
    packed-switch p1, :pswitch_data_0

    .line 64
    sget-boolean v0, Lorg/chromium/ui/resources/system/SystemResourceLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :pswitch_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "android:drawable/overscroll_edge"

    invoke-static {v1}, Lorg/chromium/ui/resources/system/SystemResourceLoader;->getResourceId(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    invoke-static {v0, v1, v3, v2}, Lorg/chromium/ui/resources/statics/StaticResource;->create(Landroid/content/res/Resources;III)Lorg/chromium/ui/resources/statics/StaticResource;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 52
    :pswitch_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "android:drawable/overscroll_glow"

    invoke-static {v1}, Lorg/chromium/ui/resources/system/SystemResourceLoader;->getResourceId(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x40

    invoke-static {v0, v1, v3, v2}, Lorg/chromium/ui/resources/statics/StaticResource;->create(Landroid/content/res/Resources;III)Lorg/chromium/ui/resources/statics/StaticResource;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_2
    invoke-static {p0}, Lorg/chromium/ui/resources/system/SystemResourceLoader;->createOverscrollGlowLBitmap(Landroid/content/Context;)Lorg/chromium/ui/resources/Resource;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/ui/R$drawable;->refresh_gray:I

    invoke-static {v0, v1, v2, v2}, Lorg/chromium/ui/resources/statics/StaticResource;->create(Landroid/content/res/Resources;III)Lorg/chromium/ui/resources/statics/StaticResource;

    move-result-object v0

    goto :goto_0

    .line 61
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/ui/R$drawable;->refresh_blue:I

    invoke-static {v0, v1, v2, v2}, Lorg/chromium/ui/resources/statics/StaticResource;->create(Landroid/content/res/Resources;III)Lorg/chromium/ui/resources/statics/StaticResource;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getResourceId(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    .local v0, "systemResources":Landroid/content/res/Resources;
    invoke-virtual {v0, p0, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method
