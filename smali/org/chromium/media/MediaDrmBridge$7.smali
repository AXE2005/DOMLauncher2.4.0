.class Lorg/chromium/media/MediaDrmBridge$7;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaDrmBridge;->onSessionKeysChange([BZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;

.field final synthetic val$hasAdditionalUsableKey:Z

.field final synthetic val$keyStatus:I

.field final synthetic val$sessionId:[B


# direct methods
.method constructor <init>(Lorg/chromium/media/MediaDrmBridge;[BZI)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$7;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iput-object p2, p0, Lorg/chromium/media/MediaDrmBridge$7;->val$sessionId:[B

    iput-boolean p3, p0, Lorg/chromium/media/MediaDrmBridge$7;->val$hasAdditionalUsableKey:Z

    iput p4, p0, Lorg/chromium/media/MediaDrmBridge$7;->val$keyStatus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 730
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$7;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$7;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-static {v1}, Lorg/chromium/media/MediaDrmBridge;->access$600(Lorg/chromium/media/MediaDrmBridge;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge$7;->val$sessionId:[B

    iget-boolean v4, p0, Lorg/chromium/media/MediaDrmBridge$7;->val$hasAdditionalUsableKey:Z

    iget v5, p0, Lorg/chromium/media/MediaDrmBridge$7;->val$keyStatus:I

    invoke-static/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge;->access$1200(Lorg/chromium/media/MediaDrmBridge;J[BZI)V

    .line 732
    return-void
.end method
