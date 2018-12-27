.class Lorg/chromium/media/MediaDrmBridge$6;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaDrmBridge;->onSessionClosed([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;

.field final synthetic val$sessionId:[B


# direct methods
.method constructor <init>(Lorg/chromium/media/MediaDrmBridge;[B)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$6;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iput-object p2, p0, Lorg/chromium/media/MediaDrmBridge$6;->val$sessionId:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 720
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$6;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$6;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v1}, Lorg/chromium/media/MediaDrmBridge;->access$600(Lorg/chromium/media/MediaDrmBridge;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge$6;->val$sessionId:[B

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/media/MediaDrmBridge;->access$1100(Lorg/chromium/media/MediaDrmBridge;J[B)V

    .line 721
    return-void
.end method
