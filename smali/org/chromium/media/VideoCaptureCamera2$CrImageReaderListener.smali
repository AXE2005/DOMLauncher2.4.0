.class Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;
.super Ljava/lang/Object;
.source "VideoCaptureCamera2.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrImageReaderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera2;


# direct methods
.method private constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p2, "x1"    # Lorg/chromium/media/VideoCaptureCamera2$1;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 8
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 97
    const/4 v7, 0x0

    .line 99
    .local v7, "image":Landroid/media/Image;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 100
    if-nez v7, :cond_1

    .line 117
    if-eqz v7, :cond_0

    .line 118
    invoke-virtual {v7}, Landroid/media/Image;->close()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    invoke-virtual {v7}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 103
    :cond_2
    const-string v0, "VideoCaptureCamera2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected image format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/media/Image;->getFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or #planes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    if-eqz v7, :cond_0

    .line 118
    invoke-virtual {v7}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 108
    :cond_3
    :try_start_2
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera2;->access$600(Lorg/chromium/media/VideoCaptureCamera2;)[B

    move-result-object v0

    invoke-static {v7, v0}, Lorg/chromium/media/VideoCaptureCamera2;->access$700(Landroid/media/Image;[B)V

    .line 109
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v1, v1, Lorg/chromium/media/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v3}, Lorg/chromium/media/VideoCaptureCamera2;->access$600(Lorg/chromium/media/VideoCaptureCamera2;)[B

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4}, Lorg/chromium/media/VideoCaptureCamera2;->access$600(Lorg/chromium/media/VideoCaptureCamera2;)[B

    move-result-object v4

    array-length v4, v4

    iget-object v5, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-virtual {v5}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraRotation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/media/VideoCaptureCamera2;->nativeOnFrameAvailable(J[BII)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    if-eqz v7, :cond_0

    .line 118
    invoke-virtual {v7}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 113
    :catch_0
    move-exception v6

    .line 114
    .local v6, "ex":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v0, "VideoCaptureCamera2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireLatestImage():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    if-eqz v7, :cond_0

    .line 118
    invoke-virtual {v7}, Landroid/media/Image;->close()V

    goto/16 :goto_0

    .line 117
    .end local v6    # "ex":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 118
    invoke-virtual {v7}, Landroid/media/Image;->close()V

    :cond_4
    throw v0
.end method
