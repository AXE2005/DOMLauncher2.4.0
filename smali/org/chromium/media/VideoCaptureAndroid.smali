.class public Lorg/chromium/media/VideoCaptureAndroid;
.super Lorg/chromium/media/VideoCaptureCamera;
.source "VideoCaptureAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/VideoCaptureAndroid$BuggyDeviceHack;
    }
.end annotation


# static fields
.field private static final NUM_CAPTURE_BUFFERS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VideoCaptureAndroid"


# instance fields
.field private mExpectedFrameSize:I


# direct methods
.method constructor <init>(Landroid/content/Context;IJ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "nativeVideoCaptureDeviceAndroid"    # J

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/VideoCaptureCamera;-><init>(Landroid/content/Context;IJ)V

    .line 126
    return-void
.end method

.method static getDeviceSupportedFormats(I)[Lorg/chromium/media/VideoCapture$CaptureFormat;
    .locals 22
    .param p0, "id"    # I

    .prologue
    .line 64
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 69
    .local v4, "camera":Landroid/hardware/Camera;
    invoke-static {v4}, Lorg/chromium/media/VideoCaptureAndroid;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v12

    .line 70
    .local v12, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v12, :cond_0

    .line 71
    const/16 v18, 0x0

    .line 119
    .end local v4    # "camera":Landroid/hardware/Camera;
    .end local v12    # "parameters":Landroid/hardware/Camera$Parameters;
    :goto_0
    return-object v18

    .line 65
    :catch_0
    move-exception v5

    .line 66
    .local v5, "ex":Ljava/lang/RuntimeException;
    const-string v18, "VideoCaptureAndroid"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Camera.open: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/16 v18, 0x0

    goto :goto_0

    .line 74
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    .restart local v4    # "camera":Landroid/hardware/Camera;
    .restart local v12    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v6, "formatList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/chromium/media/VideoCapture$CaptureFormat;>;"
    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v14

    .line 80
    .local v14, "pixelFormats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v14, :cond_1

    .line 81
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "pixelFormats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .restart local v14    # "pixelFormats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_2

    .line 84
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_2
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 87
    .local v15, "previewFormat":Ljava/lang/Integer;
    const/4 v13, 0x0

    .line 88
    .local v13, "pixelFormat":I
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const v19, 0x32315659

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 89
    const v13, 0x32315659

    .line 94
    :cond_4
    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v11

    .line 95
    .local v11, "listFpsRange":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-nez v11, :cond_5

    .line 96
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "listFpsRange":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .restart local v11    # "listFpsRange":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_6

    .line 99
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_6
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 102
    .local v7, "fpsRange":[I
    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v17

    .line 104
    .local v17, "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v17, :cond_8

    .line 105
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .restart local v17    # "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_8
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_9

    .line 108
    new-instance v18, Landroid/hardware/Camera$Size;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v4, v1, v2}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_9
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/Camera$Size;

    .line 111
    .local v16, "size":Landroid/hardware/Camera$Size;
    new-instance v18, Lorg/chromium/media/VideoCapture$CaptureFormat;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    const/16 v21, 0x1

    aget v21, v7, v21

    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x3e7

    move/from16 v21, v0

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v13}, Lorg/chromium/media/VideoCapture$CaptureFormat;-><init>(IIII)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 90
    .end local v7    # "fpsRange":[I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "listFpsRange":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v16    # "size":Landroid/hardware/Camera$Size;
    .end local v17    # "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_a
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x11

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    goto/16 :goto_1

    .line 118
    .end local v13    # "pixelFormat":I
    .end local v15    # "previewFormat":Ljava/lang/Integer;
    :cond_b
    invoke-virtual {v4}, Landroid/hardware/Camera;->release()V

    .line 119
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Lorg/chromium/media/VideoCapture$CaptureFormat;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Lorg/chromium/media/VideoCapture$CaptureFormat;

    goto/16 :goto_0

    .line 99
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static getName(I)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 55
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 56
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 57
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", facing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v1, "front"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "back"

    goto :goto_1
.end method

.method static getNumberOfCameras()I
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected allocateBuffers()V
    .locals 4

    .prologue
    .line 140
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureAndroid;->mCaptureFormat:Lorg/chromium/media/VideoCapture$CaptureFormat;

    iget v2, v2, Lorg/chromium/media/VideoCapture$CaptureFormat;->mWidth:I

    iget-object v3, p0, Lorg/chromium/media/VideoCaptureAndroid;->mCaptureFormat:Lorg/chromium/media/VideoCapture$CaptureFormat;

    iget v3, v3, Lorg/chromium/media/VideoCapture$CaptureFormat;->mHeight:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lorg/chromium/media/VideoCaptureAndroid;->mCaptureFormat:Lorg/chromium/media/VideoCapture$CaptureFormat;

    iget v3, v3, Lorg/chromium/media/VideoCapture$CaptureFormat;->mPixelFormat:I

    invoke-static {v3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/chromium/media/VideoCaptureAndroid;->mExpectedFrameSize:I

    .line 142
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 143
    iget v2, p0, Lorg/chromium/media/VideoCaptureAndroid;->mExpectedFrameSize:I

    new-array v0, v2, [B

    .line 144
    .local v0, "buffer":[B
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureAndroid;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "buffer":[B
    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 155
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureAndroid;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 157
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/media/VideoCaptureAndroid;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureAndroid;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 166
    if-eqz p2, :cond_0

    .line 167
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    :try_start_1
    array-length v0, p1

    iget v1, p0, Lorg/chromium/media/VideoCaptureAndroid;->mExpectedFrameSize:I

    if-ne v0, v1, :cond_2

    .line 161
    iget-wide v1, p0, Lorg/chromium/media/VideoCaptureAndroid;->mNativeVideoCaptureDeviceAndroid:J

    iget v4, p0, Lorg/chromium/media/VideoCaptureAndroid;->mExpectedFrameSize:I

    invoke-virtual {p0}, Lorg/chromium/media/VideoCaptureAndroid;->getCameraRotation()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/media/VideoCaptureAndroid;->nativeOnFrameAvailable(J[BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :cond_2
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureAndroid;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 166
    if-eqz p2, :cond_0

    .line 167
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureAndroid;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 166
    if-eqz p2, :cond_3

    .line 167
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_3
    throw v0
.end method

.method protected setCaptureParameters(IIILandroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I
    .param p4, "cameraParameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 134
    new-instance v0, Lorg/chromium/media/VideoCapture$CaptureFormat;

    invoke-static {}, Lorg/chromium/media/VideoCaptureAndroid$BuggyDeviceHack;->getImageFormat()I

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/chromium/media/VideoCapture$CaptureFormat;-><init>(IIII)V

    iput-object v0, p0, Lorg/chromium/media/VideoCaptureAndroid;->mCaptureFormat:Lorg/chromium/media/VideoCapture$CaptureFormat;

    .line 136
    return-void
.end method

.method protected setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureAndroid;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 151
    return-void
.end method
