.class final Lorg/chromium/content/common/CleanupReference$LazyHolder$1;
.super Landroid/os/Handler;
.source "CleanupReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/common/CleanupReference$LazyHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    :try_start_0
    const-string v2, "CleanupReference.LazyHolder.handleMessage"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 89
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/chromium/content/common/CleanupReference;

    .line 90
    .local v1, "ref":Lorg/chromium/content/common/CleanupReference;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 98
    const-string v2, "CleanupReference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    invoke-static {}, Lorg/chromium/content/common/CleanupReference;->access$100()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :goto_1
    :try_start_1
    invoke-static {}, Lorg/chromium/content/common/CleanupReference;->access$000()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/chromium/content/common/CleanupReference;

    move-object v1, v0

    if-eqz v1, :cond_0

    .line 108
    invoke-static {v1}, Lorg/chromium/content/common/CleanupReference;->access$300(Lorg/chromium/content/common/CleanupReference;)V

    goto :goto_1

    .line 111
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    .end local v1    # "ref":Lorg/chromium/content/common/CleanupReference;
    :catchall_1
    move-exception v2

    const-string v3, "CleanupReference.LazyHolder.handleMessage"

    invoke-static {v3}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v2

    .line 92
    .restart local v1    # "ref":Lorg/chromium/content/common/CleanupReference;
    :pswitch_0
    :try_start_3
    invoke-static {}, Lorg/chromium/content/common/CleanupReference;->access$200()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :pswitch_1
    invoke-static {v1}, Lorg/chromium/content/common/CleanupReference;->access$300(Lorg/chromium/content/common/CleanupReference;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 110
    :cond_0
    :try_start_4
    invoke-static {}, Lorg/chromium/content/common/CleanupReference;->access$100()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    const-string v2, "CleanupReference.LazyHolder.handleMessage"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 115
    return-void

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
