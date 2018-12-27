.class Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;
.super Lorg/xwalk/core/internal/XWalkContentsClientBridge$1UriCallback;
.source "XWalkContentsClientBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/XWalkContentsClientBridge;->shouldOverrideRunFileChooser(IIILjava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field completed:Z

.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

.field final synthetic val$modeFlags:I

.field final synthetic val$processId:I

.field final synthetic val$renderId:I


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;III)V
    .locals 1

    .prologue
    .line 542
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->this$0:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iput p2, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->val$processId:I

    iput p3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->val$renderId:I

    iput p4, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->val$modeFlags:I

    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge$1UriCallback;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)V

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->completed:Z

    return-void
.end method


# virtual methods
.method public onReceiveValue(Landroid/net/Uri;)V
    .locals 8
    .param p1, "value"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    .line 546
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->completed:Z

    if-eqz v0, :cond_0

    .line 547
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Duplicate openFileChooser result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->syncCallFinished:Z

    if-nez v0, :cond_1

    .line 550
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->syncNullReceived:Z

    .line 575
    :goto_0
    return-void

    .line 553
    :cond_1
    iput-boolean v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->completed:Z

    .line 554
    if-nez p1, :cond_2

    .line 555
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->this$0:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->this$0:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->access$200(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)J

    move-result-wide v1

    iget v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->val$processId:I

    iget v4, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->val$renderId:I

    iget v5, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->val$modeFlags:I

    invoke-static/range {v0 .. v5}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->access$500(Lorg/xwalk/core/internal/XWalkContentsClientBridge;JIII)V

    goto :goto_0

    .line 558
    :cond_2
    const-string v6, ""

    .line 559
    .local v6, "result":Ljava/lang/String;
    const/4 v7, 0x0

    .line 560
    .local v7, "displayName":Ljava/lang/String;
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 561
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 562
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 571
    :goto_1
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move-object v7, v6

    .line 572
    :cond_4
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->this$0:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->this$0:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->access$200(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)J

    move-result-wide v1

    iget v3, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->val$processId:I

    iget v4, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->val$renderId:I

    iget v5, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->val$modeFlags:I

    invoke-static/range {v0 .. v7}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->access$600(Lorg/xwalk/core/internal/XWalkContentsClientBridge;JIIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 563
    :cond_5
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 564
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 565
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->this$0:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->access$100(Lorg/xwalk/core/internal/XWalkContentsClientBridge;)Lorg/xwalk/core/internal/XWalkViewInternal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkViewInternal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->resolveFileName(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 568
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 569
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 542
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge$3;->onReceiveValue(Landroid/net/Uri;)V

    return-void
.end method
