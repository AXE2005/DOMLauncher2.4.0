.class final Lorg/chromium/content/browser/ChildProcessLauncher$4;
.super Lorg/chromium/content/common/IChildProcessCallback$Stub;
.source "ChildProcessLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ChildProcessLauncher;->createCallback(II)Lorg/chromium/content/common/IChildProcessCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic val$callbackType:I

.field final synthetic val$childProcessId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 635
    const-class v0, Lorg/chromium/content/browser/ChildProcessLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 635
    iput p1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    iput p2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$childProcessId:I

    invoke-direct {p0}, Lorg/chromium/content/common/IChildProcessCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public establishSurfacePeer(ILandroid/view/Surface;II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "primaryID"    # I
    .param p4, "secondaryID"    # I

    .prologue
    .line 647
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 648
    const-string v0, "ChildProcessLauncher"

    const-string v1, "Illegal callback for non-GPU process."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_0
    return-void

    .line 652
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1600(ILandroid/view/Surface;II)V

    goto :goto_0
.end method

.method public getSurfaceTextureSurface(I)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 2
    .param p1, "surfaceTextureId"    # I

    .prologue
    .line 697
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 698
    const-string v0, "ChildProcessLauncher"

    const-string v1, "Illegal callback for non-renderer process."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v0, 0x0

    .line 702
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$childProcessId:I

    invoke-static {p1, v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$2000(II)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewSurface(I)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 4
    .param p1, "surfaceId"    # I

    .prologue
    const/4 v1, 0x0

    .line 658
    iget v2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 659
    const-string v2, "ChildProcessLauncher"

    const-string v3, "Illegal callback for non-GPU process."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_0
    return-object v1

    .line 663
    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1700()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 664
    .local v0, "surface":Landroid/view/Surface;
    if-nez v0, :cond_1

    .line 665
    const-string v2, "ChildProcessLauncher"

    const-string v3, "Invalid surfaceId."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 668
    :cond_1
    sget-boolean v1, Lorg/chromium/content/browser/ChildProcessLauncher$4;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 669
    :cond_2
    new-instance v1, Lorg/chromium/content/common/SurfaceWrapper;

    invoke-direct {v1, v0}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public registerSurfaceTextureSurface(IILandroid/view/Surface;)V
    .locals 2
    .param p1, "surfaceTextureId"    # I
    .param p2, "clientId"    # I
    .param p3, "surface"    # Landroid/view/Surface;

    .prologue
    .line 675
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 676
    const-string v0, "ChildProcessLauncher"

    const-string v1, "Illegal callback for non-GPU process."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :goto_0
    return-void

    .line 680
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1800(IILandroid/view/Surface;)V

    goto :goto_0
.end method

.method public unregisterSurfaceTextureSurface(II)V
    .locals 2
    .param p1, "surfaceTextureId"    # I
    .param p2, "clientId"    # I

    .prologue
    .line 687
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 688
    const-string v0, "ChildProcessLauncher"

    const-string v1, "Illegal callback for non-GPU process."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :goto_0
    return-void

    .line 692
    :cond_0
    invoke-static {p1, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1900(II)V

    goto :goto_0
.end method
