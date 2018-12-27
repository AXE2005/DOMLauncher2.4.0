.class Lorg/chromium/media/MediaDrmBridge$5;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaDrmBridge;->onSessionMessage([BLandroid/media/MediaDrm$KeyRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;

.field final synthetic val$request:Landroid/media/MediaDrm$KeyRequest;

.field final synthetic val$sessionId:[B


# direct methods
.method constructor <init>(Lorg/chromium/media/MediaDrmBridge;[BLandroid/media/MediaDrm$KeyRequest;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$5;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iput-object p2, p0, Lorg/chromium/media/MediaDrmBridge$5;->val$sessionId:[B

    iput-object p3, p0, Lorg/chromium/media/MediaDrmBridge$5;->val$request:Landroid/media/MediaDrm$KeyRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 710
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$5;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$5;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v1}, Lorg/chromium/media/MediaDrmBridge;->access$600(Lorg/chromium/media/MediaDrmBridge;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge$5;->val$sessionId:[B

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge$5;->val$request:Landroid/media/MediaDrm$KeyRequest;

    invoke-virtual {v4}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/media/MediaDrmBridge$5;->val$request:Landroid/media/MediaDrm$KeyRequest;

    invoke-virtual {v5}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge;->access$1000(Lorg/chromium/media/MediaDrmBridge;J[B[BLjava/lang/String;)V

    .line 712
    return-void
.end method
