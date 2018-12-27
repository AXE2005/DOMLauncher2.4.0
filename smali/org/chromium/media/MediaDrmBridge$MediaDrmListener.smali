.class Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaDrmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 746
    const-class v0, Lorg/chromium/media/MediaDrmBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/chromium/media/MediaDrmBridge;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmBridge$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p2, "x1"    # Lorg/chromium/media/MediaDrmBridge$1;

    .prologue
    .line 746
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;-><init>(Lorg/chromium/media/MediaDrmBridge;)V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 6
    .param p1, "mediaDrm"    # Landroid/media/MediaDrm;
    .param p2, "sessionId"    # [B
    .param p3, "event"    # I
    .param p4, "extra"    # I
    .param p5, "data"    # [B

    .prologue
    const/4 v5, 0x0

    .line 750
    if-nez p2, :cond_1

    .line 751
    const-string v3, "MediaDrmBridge"

    const-string v4, "MediaDrmListener: Null session."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v3, p2}, Lorg/chromium/media/MediaDrmBridge;->access$1400(Lorg/chromium/media/MediaDrmBridge;[B)Z

    move-result v3

    if-nez v3, :cond_2

    .line 755
    const-string v3, "MediaDrmBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaDrmListener: Invalid session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lorg/chromium/media/MediaDrmBridge;->access$1500([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 758
    :cond_2
    packed-switch p3, :pswitch_data_0

    .line 794
    const-string v3, "MediaDrmBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid DRM event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 760
    :pswitch_0
    const-string v3, "MediaDrmBridge"

    const-string v4, "MediaDrm.EVENT_PROVISION_REQUIRED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 763
    :pswitch_1
    const-string v3, "MediaDrmBridge"

    const-string v4, "MediaDrm.EVENT_KEY_REQUIRED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v3}, Lorg/chromium/media/MediaDrmBridge;->access$1600(Lorg/chromium/media/MediaDrmBridge;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 767
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v3}, Lorg/chromium/media/MediaDrmBridge;->access$1700(Lorg/chromium/media/MediaDrmBridge;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 768
    .local v1, "mime":Ljava/lang/String;
    const/4 v2, 0x0

    .line 770
    .local v2, "request":Landroid/media/MediaDrm$KeyRequest;
    :try_start_0
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v3, p2, p5, v1}, Lorg/chromium/media/MediaDrmBridge;->access$1800(Lorg/chromium/media/MediaDrmBridge;[B[BLjava/lang/String;)Landroid/media/MediaDrm$KeyRequest;
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 776
    if-eqz v2, :cond_3

    .line 777
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v3, p2, v2}, Lorg/chromium/media/MediaDrmBridge;->access$2000(Lorg/chromium/media/MediaDrmBridge;[BLandroid/media/MediaDrm$KeyRequest;)V

    goto :goto_0

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Landroid/media/NotProvisionedException;
    const-string v3, "MediaDrmBridge"

    const-string v4, "Device not provisioned"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v3}, Lorg/chromium/media/MediaDrmBridge;->access$1900(Lorg/chromium/media/MediaDrmBridge;)V

    goto/16 :goto_0

    .line 779
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    :cond_3
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    const-string v4, "MediaDrm EVENT_KEY_REQUIRED: Failed to generate request."

    invoke-static {v3, p2, v4}, Lorg/chromium/media/MediaDrmBridge;->access$2100(Lorg/chromium/media/MediaDrmBridge;[BLjava/lang/String;)V

    .line 781
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    const/4 v4, 0x1

    invoke-static {v3, p2, v5, v4}, Lorg/chromium/media/MediaDrmBridge;->access$2200(Lorg/chromium/media/MediaDrmBridge;[BZI)V

    goto/16 :goto_0

    .line 785
    .end local v1    # "mime":Ljava/lang/String;
    .end local v2    # "request":Landroid/media/MediaDrm$KeyRequest;
    :pswitch_2
    const-string v3, "MediaDrmBridge"

    const-string v4, "MediaDrm.EVENT_KEY_EXPIRED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    const-string v4, "MediaDrm EVENT_KEY_EXPIRED."

    invoke-static {v3, p2, v4}, Lorg/chromium/media/MediaDrmBridge;->access$2100(Lorg/chromium/media/MediaDrmBridge;[BLjava/lang/String;)V

    .line 787
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    const/4 v4, 0x2

    invoke-static {v3, p2, v5, v4}, Lorg/chromium/media/MediaDrmBridge;->access$2200(Lorg/chromium/media/MediaDrmBridge;[BZI)V

    goto/16 :goto_0

    .line 790
    :pswitch_3
    const-string v3, "MediaDrmBridge"

    const-string v4, "MediaDrm.EVENT_VENDOR_DEFINED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    sget-boolean v3, Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 758
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
