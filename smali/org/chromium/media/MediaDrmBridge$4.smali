.class Lorg/chromium/media/MediaDrmBridge$4;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$promiseId:J


# direct methods
.method constructor <init>(Lorg/chromium/media/MediaDrmBridge;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$4;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iput-wide p2, p0, Lorg/chromium/media/MediaDrmBridge$4;->val$promiseId:J

    iput-object p4, p0, Lorg/chromium/media/MediaDrmBridge$4;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 701
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$4;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$4;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v1}, Lorg/chromium/media/MediaDrmBridge;->access$600(Lorg/chromium/media/MediaDrmBridge;)J

    move-result-wide v1

    iget-wide v3, p0, Lorg/chromium/media/MediaDrmBridge$4;->val$promiseId:J

    iget-object v5, p0, Lorg/chromium/media/MediaDrmBridge$4;->val$errorMessage:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge;->access$900(Lorg/chromium/media/MediaDrmBridge;JJLjava/lang/String;)V

    .line 702
    return-void
.end method
