.class public Lorg/chromium/ui/resources/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"

# interfaces
.implements Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "ui"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mLoadedResources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/chromium/ui/resources/LayoutResource;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNativeResourceManagerPtr:J

.field private final mPxToDp:F

.field private final mResourceLoaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/chromium/ui/resources/ResourceLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/chromium/ui/resources/ResourceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/resources/ResourceManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "staticResourceManagerPtr"    # J

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/chromium/ui/resources/ResourceManager;->mResourceLoaders:Landroid/util/SparseArray;

    .line 28
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/chromium/ui/resources/ResourceManager;->mLoadedResources:Landroid/util/SparseArray;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    .local v0, "resources":Landroid/content/res/Resources;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    iput v1, p0, Lorg/chromium/ui/resources/ResourceManager;->mPxToDp:F

    .line 40
    new-instance v1, Lorg/chromium/ui/resources/statics/StaticResourceLoader;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, v0}, Lorg/chromium/ui/resources/statics/StaticResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;Landroid/content/res/Resources;)V

    invoke-direct {p0, v1}, Lorg/chromium/ui/resources/ResourceManager;->registerResourceLoader(Lorg/chromium/ui/resources/ResourceLoader;)V

    .line 42
    new-instance v1, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;)V

    invoke-direct {p0, v1}, Lorg/chromium/ui/resources/ResourceManager;->registerResourceLoader(Lorg/chromium/ui/resources/ResourceLoader;)V

    .line 44
    new-instance v1, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;)V

    invoke-direct {p0, v1}, Lorg/chromium/ui/resources/ResourceManager;->registerResourceLoader(Lorg/chromium/ui/resources/ResourceLoader;)V

    .line 46
    new-instance v1, Lorg/chromium/ui/resources/system/SystemResourceLoader;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Lorg/chromium/ui/resources/system/SystemResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lorg/chromium/ui/resources/ResourceManager;->registerResourceLoader(Lorg/chromium/ui/resources/ResourceLoader;)V

    .line 49
    iput-wide p2, p0, Lorg/chromium/ui/resources/ResourceManager;->mNativeResourceManagerPtr:J

    .line 50
    return-void
.end method

.method private static create(Landroid/content/Context;J)Lorg/chromium/ui/resources/ResourceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "staticResourceManagerPtr"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lorg/chromium/ui/resources/ResourceManager;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/ui/resources/ResourceManager;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method private destroy()V
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 139
    sget-boolean v0, Lorg/chromium/ui/resources/ResourceManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mNativeResourceManagerPtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 140
    :cond_0
    iput-wide v2, p0, Lorg/chromium/ui/resources/ResourceManager;->mNativeResourceManagerPtr:J

    .line 141
    return-void
.end method

.method private getNativePtr()J
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 157
    iget-wide v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mNativeResourceManagerPtr:J

    return-wide v0
.end method

.method private native nativeOnResourceReady(JIILandroid/graphics/Bitmap;IIIIIIII)V
.end method

.method private preloadResource(II)V
    .locals 2
    .param p1, "resType"    # I
    .param p2, "resId"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 151
    iget-object v1, p0, Lorg/chromium/ui/resources/ResourceManager;->mResourceLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/resources/ResourceLoader;

    .line 152
    .local v0, "loader":Lorg/chromium/ui/resources/ResourceLoader;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lorg/chromium/ui/resources/ResourceLoader;->preloadResource(I)V

    .line 153
    :cond_0
    return-void
.end method

.method private registerResourceLoader(Lorg/chromium/ui/resources/ResourceLoader;)V
    .locals 2
    .param p1, "loader"    # Lorg/chromium/ui/resources/ResourceLoader;

    .prologue
    .line 161
    iget-object v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mResourceLoaders:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/chromium/ui/resources/ResourceLoader;->getResourceType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 162
    return-void
.end method

.method private resourceRequested(II)V
    .locals 2
    .param p1, "resType"    # I
    .param p2, "resId"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 145
    iget-object v1, p0, Lorg/chromium/ui/resources/ResourceManager;->mResourceLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/resources/ResourceLoader;

    .line 146
    .local v0, "loader":Lorg/chromium/ui/resources/ResourceLoader;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lorg/chromium/ui/resources/ResourceLoader;->loadResource(I)V

    .line 147
    :cond_0
    return-void
.end method

.method private saveMetadataForLoadedResource(IILorg/chromium/ui/resources/Resource;)V
    .locals 3
    .param p1, "resType"    # I
    .param p2, "resId"    # I
    .param p3, "resource"    # Lorg/chromium/ui/resources/Resource;

    .prologue
    .line 129
    iget-object v1, p0, Lorg/chromium/ui/resources/ResourceManager;->mLoadedResources:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 130
    .local v0, "bucket":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/chromium/ui/resources/LayoutResource;>;"
    if-nez v0, :cond_0

    .line 131
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "bucket":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/chromium/ui/resources/LayoutResource;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 132
    .restart local v0    # "bucket":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/chromium/ui/resources/LayoutResource;>;"
    iget-object v1, p0, Lorg/chromium/ui/resources/ResourceManager;->mLoadedResources:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    :cond_0
    new-instance v1, Lorg/chromium/ui/resources/LayoutResource;

    iget v2, p0, Lorg/chromium/ui/resources/ResourceManager;->mPxToDp:F

    invoke-direct {v1, v2, p3}, Lorg/chromium/ui/resources/LayoutResource;-><init>(FLorg/chromium/ui/resources/Resource;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    return-void
.end method


# virtual methods
.method public getBitmapDynamicResourceLoader()Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mResourceLoaders:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    return-object v0
.end method

.method public getDynamicResourceLoader()Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mResourceLoaders:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    return-object v0
.end method

.method public getResource(II)Lorg/chromium/ui/resources/LayoutResource;
    .locals 2
    .param p1, "resType"    # I
    .param p2, "resId"    # I

    .prologue
    .line 109
    iget-object v1, p0, Lorg/chromium/ui/resources/ResourceManager;->mLoadedResources:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 110
    .local v0, "bucket":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/chromium/ui/resources/LayoutResource;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/ui/resources/LayoutResource;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResourceLoaded(IILorg/chromium/ui/resources/Resource;)V
    .locals 17
    .param p1, "resType"    # I
    .param p2, "resId"    # I
    .param p3, "resource"    # Lorg/chromium/ui/resources/Resource;

    .prologue
    .line 115
    if-nez p3, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-direct/range {p0 .. p3}, Lorg/chromium/ui/resources/ResourceManager;->saveMetadataForLoadedResource(IILorg/chromium/ui/resources/Resource;)V

    .line 119
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/chromium/ui/resources/ResourceManager;->mNativeResourceManagerPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 120
    invoke-interface/range {p3 .. p3}, Lorg/chromium/ui/resources/Resource;->getPadding()Landroid/graphics/Rect;

    move-result-object v16

    .line 121
    .local v16, "padding":Landroid/graphics/Rect;
    invoke-interface/range {p3 .. p3}, Lorg/chromium/ui/resources/Resource;->getAperture()Landroid/graphics/Rect;

    move-result-object v15

    .line 123
    .local v15, "aperture":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/chromium/ui/resources/ResourceManager;->mNativeResourceManagerPtr:J

    invoke-interface/range {p3 .. p3}, Lorg/chromium/ui/resources/Resource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, v16

    iget v7, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v8, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v9, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    iget v11, v15, Landroid/graphics/Rect;->left:I

    iget v12, v15, Landroid/graphics/Rect;->top:I

    iget v13, v15, Landroid/graphics/Rect;->right:I

    iget v14, v15, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v14}, Lorg/chromium/ui/resources/ResourceManager;->nativeOnResourceReady(JIILandroid/graphics/Bitmap;IIIIIIII)V

    goto :goto_0
.end method

.method public preloadResources(I[I[I)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "syncIds"    # [I
    .param p3, "asyncIds"    # [I

    .prologue
    .line 89
    iget-object v5, p0, Lorg/chromium/ui/resources/ResourceManager;->mResourceLoaders:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/ui/resources/ResourceLoader;

    .line 90
    .local v3, "loader":Lorg/chromium/ui/resources/ResourceLoader;
    if-eqz p3, :cond_0

    .line 91
    move-object v0, p3

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 92
    .local v4, "resId":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/chromium/ui/resources/ResourceLoader;->preloadResource(I)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "resId":Ljava/lang/Integer;
    :cond_0
    if-eqz p2, :cond_1

    .line 97
    move-object v0, p2

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 98
    .restart local v4    # "resId":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/chromium/ui/resources/ResourceLoader;->loadResource(I)V

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "resId":Ljava/lang/Integer;
    :cond_1
    return-void
.end method
