.class Lorg/chromium/media/MediaDrmBridge$2;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaDrmBridge;->onPromiseResolved(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;

.field final synthetic val$promiseId:J


# direct methods
.method constructor <init>(Lorg/chromium/media/MediaDrmBridge;J)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$2;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iput-wide p2, p0, Lorg/chromium/media/MediaDrmBridge$2;->val$promiseId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 682
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$2;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$2;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v1}, Lorg/chromium/media/MediaDrmBridge;->access$600(Lorg/chromium/media/MediaDrmBridge;)J

    move-result-wide v1

    iget-wide v3, p0, Lorg/chromium/media/MediaDrmBridge$2;->val$promiseId:J

    invoke-static {v0, v1, v2, v3, v4}, Lorg/chromium/media/MediaDrmBridge;->access$700(Lorg/chromium/media/MediaDrmBridge;JJ)V

    .line 683
    return-void
.end method
