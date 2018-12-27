.class Lorg/chromium/media/MediaDrmBridge$3;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaDrmBridge;->onPromiseResolvedWithSession(J[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;

.field final synthetic val$promiseId:J

.field final synthetic val$sessionId:[B


# direct methods
.method constructor <init>(Lorg/chromium/media/MediaDrmBridge;J[B)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$3;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iput-wide p2, p0, Lorg/chromium/media/MediaDrmBridge$3;->val$promiseId:J

    iput-object p4, p0, Lorg/chromium/media/MediaDrmBridge$3;->val$sessionId:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 691
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$3;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$3;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v1}, Lorg/chromium/media/MediaDrmBridge;->access$600(Lorg/chromium/media/MediaDrmBridge;)J

    move-result-wide v1

    iget-wide v3, p0, Lorg/chromium/media/MediaDrmBridge$3;->val$promiseId:J

    iget-object v5, p0, Lorg/chromium/media/MediaDrmBridge$3;->val$sessionId:[B

    invoke-static/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge;->access$800(Lorg/chromium/media/MediaDrmBridge;JJ[B)V

    .line 692
    return-void
.end method
