.class Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "VideoCaptureCamera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrCaptureSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera2;


# direct methods
.method private constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p2, "x1"    # Lorg/chromium/media/VideoCaptureCamera2$1;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;)V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 87
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v1, v1, Lorg/chromium/media/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    const-string v3, "Camera session configuration error"

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/media/VideoCaptureCamera2;->nativeOnError(JLjava/lang/String;)V

    .line 89
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 77
    const-string v0, "VideoCaptureCamera2"

    const-string v1, "onConfigured"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->access$402(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 79
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/media/VideoCaptureCamera2;->access$202(Lorg/chromium/media/VideoCaptureCamera2;Z)Z

    .line 80
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrCaptureSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera2;->access$500(Lorg/chromium/media/VideoCaptureCamera2;)Z

    .line 81
    return-void
.end method
