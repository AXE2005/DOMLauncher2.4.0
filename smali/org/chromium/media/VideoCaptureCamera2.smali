.class public Lorg/chromium/media/VideoCaptureCamera2;
.super Lorg/chromium/media/VideoCapture;
.source "VideoCaptureCamera2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/VideoCaptureCamera2$1;,
        Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;,
        Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;,
        Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "media"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCaptureCamera2"

.field private static final kNanoSecondsToFps:D = 1.0E-9


# instance fields
.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCapturedData:[B

.field private mConfiguringCamera:Z

.field private mImageReader:Landroid/media/ImageReader;

.field private mOpeningCamera:Z

.field private mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method constructor <init>(Landroid/content/Context;IJ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "nativeVideoCaptureDeviceAndroid"    # J

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 356
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/VideoCapture;-><init>(Landroid/content/Context;IJ)V

    .line 128
    iput-boolean v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mOpeningCamera:Z

    .line 132
    iput-boolean v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mConfiguringCamera:Z

    .line 134
    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 135
    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 136
    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 137
    iput-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    .line 357
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$102(Lorg/chromium/media/VideoCaptureCamera2;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mOpeningCamera:Z

    return p1
.end method

.method static synthetic access$202(Lorg/chromium/media/VideoCaptureCamera2;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mConfiguringCamera:Z

    return p1
.end method

.method static synthetic access$300(Lorg/chromium/media/VideoCaptureCamera2;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/media/VideoCaptureCamera2;->createCaptureObjects()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$500(Lorg/chromium/media/VideoCaptureCamera2;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/media/VideoCaptureCamera2;->createCaptureRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/chromium/media/VideoCaptureCamera2;)[B
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCapturedData:[B

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/Image;[B)V
    .locals 0
    .param p0, "x0"    # Landroid/media/Image;
    .param p1, "x1"    # [B

    .prologue
    .line 40
    invoke-static {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->readImageIntoBuffer(Landroid/media/Image;[B)V

    return-void
.end method

.method private createCaptureObjects()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 155
    const-string v9, "VideoCaptureCamera2"

    const-string v10, "createCaptureObjects"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v9, :cond_0

    .line 219
    :goto_0
    return v7

    .line 160
    :cond_0
    const/4 v4, 0x2

    .line 161
    .local v4, "maxImages":I
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCapture$CaptureFormat;

    invoke-virtual {v9}, Lorg/chromium/media/VideoCapture$CaptureFormat;->getWidth()I

    move-result v9

    iget-object v10, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCapture$CaptureFormat;

    invoke-virtual {v10}, Lorg/chromium/media/VideoCapture$CaptureFormat;->getHeight()I

    move-result v10

    iget-object v11, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCapture$CaptureFormat;

    invoke-virtual {v11}, Lorg/chromium/media/VideoCapture$CaptureFormat;->getPixelFormat()I

    move-result v11

    const/4 v12, 0x2

    invoke-static {v9, v10, v11, v12}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v9

    iput-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    .line 165
    new-instance v6, Landroid/os/HandlerThread;

    const-string v9, "CameraPreview"

    invoke-direct {v6, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 166
    .local v6, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 168
    .local v0, "backgroundHandler":Landroid/os/Handler;
    new-instance v3, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;

    invoke-direct {v3, p0, v13}, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V

    .line 169
    .local v3, "imageReaderListener":Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9, v3, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 175
    :try_start_0
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v9

    iput-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 186
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v9, :cond_1

    .line 187
    const-string v8, "VideoCaptureCamera2"

    const-string v9, "mPreviewBuilder error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :catch_0
    move-exception v2

    .line 177
    .local v2, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v8, "VideoCaptureCamera2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCaptureRequest: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    .end local v2    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v2

    .line 180
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string v8, "VideoCaptureCamera2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCaptureRequest: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 183
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string v8, "VideoCaptureCamera2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCaptureRequest: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 191
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :cond_1
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v10, p0, Lorg/chromium/media/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v10}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 194
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 196
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 198
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 199
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 203
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .local v5, "surfaceList":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v1, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;

    invoke-direct {v1, p0, v13}, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V

    .line 207
    .local v1, "captureSessionListener":Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;
    :try_start_1
    iget-object v9, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v1, v10}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5

    move v7, v8

    .line 219
    goto/16 :goto_0

    .line 208
    :catch_3
    move-exception v2

    .line 209
    .local v2, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v8, "VideoCaptureCamera2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCaptureSession: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 211
    .end local v2    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :catch_4
    move-exception v2

    .line 212
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string v8, "VideoCaptureCamera2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCaptureSession: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 214
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v2

    .line 215
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string v8, "VideoCaptureCamera2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCaptureSession: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private createCaptureRequest()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 223
    const-string v2, "VideoCaptureCamera2"

    const-string v3, "createCaptureRequest"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lorg/chromium/media/VideoCaptureCamera2;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 241
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "VideoCaptureCamera2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRepeatingRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    .end local v0    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v0

    .line 234
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "VideoCaptureCamera2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRepeatingRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 237
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v2, "VideoCaptureCamera2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRepeatingRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 5
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 144
    const-string v2, "camera"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 147
    .local v1, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 151
    :goto_0
    return-object v2

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "VideoCaptureCamera2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNumberOfCameras: getCameraIdList(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static getDeviceSupportedFormats(Landroid/content/Context;I)[Lorg/chromium/media/VideoCapture$CaptureFormat;
    .locals 26
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 313
    invoke-static/range {p0 .. p1}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    .line 315
    .local v4, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-nez v4, :cond_0

    const/16 v21, 0x0

    .line 350
    :goto_0
    return-object v21

    .line 317
    :cond_0
    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 321
    .local v5, "capabilities":[I
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    .line 324
    .local v15, "minFrameDurationAvailable":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v7, "formatList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/chromium/media/VideoCapture$CaptureFormat;>;"
    sget-object v21, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 328
    .local v20, "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v8

    .line 329
    .local v8, "formats":[I
    move-object v2, v8

    .local v2, "arr$":[I
    array-length v11, v2

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v2    # "arr$":[I
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .local v10, "i$":I
    :goto_1
    if-ge v10, v11, :cond_5

    aget v6, v2, v10

    .line 330
    .local v6, "format":I
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v19

    .line 331
    .local v19, "sizes":[Landroid/util/Size;
    if-nez v19, :cond_2

    .line 329
    .end local v10    # "i$":I
    :cond_1
    add-int/lit8 v9, v10, 0x1

    .restart local v9    # "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto :goto_1

    .line 332
    :cond_2
    move-object/from16 v3, v19

    .local v3, "arr$":[Landroid/util/Size;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :goto_2
    if-ge v9, v12, :cond_1

    aget-object v18, v3, v9

    .line 333
    .local v18, "size":Landroid/util/Size;
    const-wide/16 v16, 0x0

    .line 334
    .local v16, "minFrameRate":D
    if-eqz v15, :cond_4

    .line 335
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputMinFrameDuration(ILandroid/util/Size;)J

    move-result-wide v13

    .line 337
    .local v13, "minFrameDuration":J
    const-wide/16 v21, 0x0

    cmp-long v21, v13, v21

    if-nez v21, :cond_3

    const-wide/16 v16, 0x0

    .line 344
    .end local v13    # "minFrameDuration":J
    :goto_3
    new-instance v21, Lorg/chromium/media/VideoCapture$CaptureFormat;

    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getWidth()I

    move-result v22

    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    move-result v23

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    invoke-direct/range {v21 .. v25}, Lorg/chromium/media/VideoCapture$CaptureFormat;-><init>(IIII)V

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 337
    .restart local v13    # "minFrameDuration":J
    :cond_3
    const-wide v21, 0x41cdcd64ffffffffL    # 9.999999999999999E8

    long-to-double v0, v13

    move-wide/from16 v23, v0

    mul-double v16, v21, v23

    goto :goto_3

    .line 342
    .end local v13    # "minFrameDuration":J
    :cond_4
    const-wide/16 v16, 0x0

    goto :goto_3

    .line 350
    .end local v3    # "arr$":[Landroid/util/Size;
    .end local v6    # "format":I
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v16    # "minFrameRate":D
    .end local v18    # "size":Landroid/util/Size;
    .end local v19    # "sizes":[Landroid/util/Size;
    .restart local v10    # "i$":I
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Lorg/chromium/media/VideoCapture$CaptureFormat;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Lorg/chromium/media/VideoCapture$CaptureFormat;

    goto/16 :goto_0
.end method

.method static getName(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "id"    # I
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 304
    invoke-static {p1, p0}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 306
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 308
    :goto_0
    return-object v2

    .line 307
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 308
    .local v1, "facing":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", facing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_1

    const-string v2, "front"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "back"

    goto :goto_1
.end method

.method static getNumberOfCameras(Landroid/content/Context;)I
    .locals 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 293
    const-string v2, "camera"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 296
    .local v1, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return v2

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "VideoCaptureCamera2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNumberOfCameras: getCameraIdList(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static isLegacyDevice(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 285
    invoke-static {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 287
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-eqz v0, :cond_0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static readImageIntoBuffer(Landroid/media/Image;[B)V
    .locals 17
    .param p0, "image"    # Landroid/media/Image;
    .param p1, "data"    # [B

    .prologue
    .line 245
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v4

    .line 246
    .local v4, "imageWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    .line 247
    .local v3, "imageHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v11

    .line 249
    .local v11, "planes":[Landroid/media/Image$Plane;
    const/4 v5, 0x0

    .line 250
    .local v5, "offset":I
    const/4 v8, 0x0

    .local v8, "plane":I
    :goto_0
    array-length v15, v11

    if-ge v8, v15, :cond_5

    .line 251
    aget-object v15, v11, v8

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 252
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    aget-object v15, v11, v8

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v14

    .line 256
    .local v14, "rowStride":I
    aget-object v15, v11, v8

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    .line 257
    .local v7, "pixelStride":I
    if-nez v8, :cond_0

    move v10, v4

    .line 258
    .local v10, "planeWidth":I
    :goto_1
    if-nez v8, :cond_1

    move v9, v3

    .line 260
    .local v9, "planeHeight":I
    :goto_2
    const/4 v15, 0x1

    if-ne v7, v15, :cond_2

    if-ne v14, v10, :cond_2

    .line 262
    mul-int v15, v10, v9

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v5, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 263
    mul-int v15, v10, v9

    add-int/2addr v5, v15

    .line 250
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 257
    .end local v9    # "planeHeight":I
    .end local v10    # "planeWidth":I
    :cond_0
    div-int/lit8 v10, v4, 0x2

    goto :goto_1

    .line 258
    .restart local v10    # "planeWidth":I
    :cond_1
    div-int/lit8 v9, v3, 0x2

    goto :goto_2

    .line 266
    .restart local v9    # "planeHeight":I
    :cond_2
    new-array v13, v14, [B

    .line 267
    .local v13, "rowData":[B
    const/4 v12, 0x0

    .local v12, "row":I
    :goto_4
    add-int/lit8 v15, v9, -0x1

    if-ge v12, v15, :cond_4

    .line 268
    const/4 v15, 0x0

    invoke-virtual {v1, v13, v15, v14}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 269
    const/4 v2, 0x0

    .local v2, "col":I
    move v6, v5

    .end local v5    # "offset":I
    .local v6, "offset":I
    :goto_5
    if-ge v2, v10, :cond_3

    .line 270
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    mul-int v15, v2, v7

    aget-byte v15, v13, v15

    aput-byte v15, p1, v6

    .line 269
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_5

    .line 267
    :cond_3
    add-int/lit8 v12, v12, 0x1

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_4

    .line 276
    .end local v2    # "col":I
    :cond_4
    const/4 v15, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v13, v15, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 277
    const/4 v2, 0x0

    .restart local v2    # "col":I
    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :goto_6
    if-ge v2, v10, :cond_6

    .line 278
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    mul-int v15, v2, v7

    aget-byte v15, v13, v15

    aput-byte v15, p1, v6

    .line 277
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_6

    .line 282
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "col":I
    .end local v6    # "offset":I
    .end local v7    # "pixelStride":I
    .end local v9    # "planeHeight":I
    .end local v10    # "planeWidth":I
    .end local v12    # "row":I
    .end local v13    # "rowData":[B
    .end local v14    # "rowStride":I
    .restart local v5    # "offset":I
    :cond_5
    return-void

    .end local v5    # "offset":I
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "col":I
    .restart local v6    # "offset":I
    .restart local v7    # "pixelStride":I
    .restart local v9    # "planeHeight":I
    .restart local v10    # "planeWidth":I
    .restart local v12    # "row":I
    .restart local v13    # "rowData":[B
    .restart local v14    # "rowStride":I
    :cond_6
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_3
.end method


# virtual methods
.method public allocate(III)Z
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 361
    const-string v2, "VideoCaptureCamera2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allocate: requested ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "fps"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-boolean v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mOpeningCamera:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mConfiguringCamera:Z

    if-eqz v2, :cond_1

    .line 363
    :cond_0
    const-string v2, "VideoCaptureCamera2"

    const-string v3, "allocate() invoked while Camera is busy opening/configuring."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 380
    :goto_0
    return v3

    .line 367
    :cond_1
    new-instance v2, Lorg/chromium/media/VideoCapture$CaptureFormat;

    const/16 v5, 0x23

    invoke-direct {v2, p1, p2, p3, v5}, Lorg/chromium/media/VideoCapture$CaptureFormat;-><init>(IIII)V

    iput-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCapture$CaptureFormat;

    .line 368
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCapture$CaptureFormat;

    iget v2, v2, Lorg/chromium/media/VideoCapture$CaptureFormat;->mWidth:I

    iget-object v5, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCapture$CaptureFormat;

    iget v5, v5, Lorg/chromium/media/VideoCapture$CaptureFormat;->mHeight:I

    mul-int/2addr v2, v5

    iget-object v5, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureFormat:Lorg/chromium/media/VideoCapture$CaptureFormat;

    iget v5, v5, Lorg/chromium/media/VideoCapture$CaptureFormat;->mPixelFormat:I

    invoke-static {v5}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v5

    mul-int/2addr v2, v5

    div-int/lit8 v1, v2, 0x8

    .line 370
    .local v1, "expectedFrameSize":I
    new-array v2, v1, [B

    iput-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCapturedData:[B

    .line 371
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    iget v5, p0, Lorg/chromium/media/VideoCaptureCamera2;->mId:I

    invoke-static {v2, v5}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraCharacteristics(Landroid/content/Context;I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 373
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraNativeOrientation:I

    .line 377
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mInvertDeviceOrientationReadings:Z

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1
.end method

.method public deallocate()V
    .locals 2

    .prologue
    .line 431
    const-string v0, "VideoCaptureCamera2"

    const-string v1, "deallocate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void
.end method

.method public startCapture()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 385
    const-string v6, "VideoCaptureCamera2"

    const-string v7, "startCapture"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iput-boolean v4, p0, Lorg/chromium/media/VideoCaptureCamera2;->mOpeningCamera:Z

    .line 387
    iput-boolean v5, p0, Lorg/chromium/media/VideoCaptureCamera2;->mConfiguringCamera:Z

    .line 388
    iget-object v6, p0, Lorg/chromium/media/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    const-string v7, "camera"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 390
    .local v2, "manager":Landroid/hardware/camera2/CameraManager;
    new-instance v1, Landroid/os/Handler;

    iget-object v6, p0, Lorg/chromium/media/VideoCaptureCamera2;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 391
    .local v1, "mainHandler":Landroid/os/Handler;
    new-instance v3, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V

    .line 393
    .local v3, "stateListener":Lorg/chromium/media/VideoCaptureCamera2$CrStateListener;
    :try_start_0
    iget v6, p0, Lorg/chromium/media/VideoCaptureCamera2;->mId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v3, v1}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 404
    :goto_0
    return v4

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v4, "VideoCaptureCamera2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allocate: manager.openCamera: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 396
    goto :goto_0

    .line 397
    .end local v0    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v0

    .line 398
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v4, "VideoCaptureCamera2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allocate: manager.openCamera: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 399
    goto :goto_0

    .line 400
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 401
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v4, "VideoCaptureCamera2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allocate: manager.openCamera: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 402
    goto :goto_0
.end method

.method public stopCapture()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 409
    const-string v2, "VideoCaptureCamera2"

    const-string v3, "stopCapture"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v2, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v1

    .line 412
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 423
    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_0

    .line 424
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 426
    const/4 v1, 0x1

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "VideoCaptureCamera2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abortCaptures: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 416
    .end local v0    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v0

    .line 417
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "VideoCaptureCamera2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abortCaptures: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 419
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 420
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v2, "VideoCaptureCamera2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abortCaptures: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
