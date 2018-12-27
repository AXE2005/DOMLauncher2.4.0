.class Lorg/chromium/content/app/ChildProcessService$1;
.super Lorg/chromium/content/common/IChildProcessService$Stub;
.source "ChildProcessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/app/ChildProcessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/content/app/ChildProcessService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lorg/chromium/content/app/ChildProcessService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/app/ChildProcessService$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/content/app/ChildProcessService;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-direct {p0}, Lorg/chromium/content/common/IChildProcessService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public crashIntentionallyForTesting()V
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 118
    return-void
.end method

.method public setupConnection(Landroid/os/Bundle;Lorg/chromium/content/common/IChildProcessCallback;)I
    .locals 9
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "callback"    # Lorg/chromium/content/common/IChildProcessCallback;

    .prologue
    .line 77
    iget-object v5, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v5, p2}, Lorg/chromium/content/app/ChildProcessService;->access$002(Lorg/chromium/content/app/ChildProcessService;Lorg/chromium/content/common/IChildProcessCallback;)Lorg/chromium/content/common/IChildProcessCallback;

    .line 78
    iget-object v5, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v5}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v6

    monitor-enter v6

    .line 81
    :try_start_0
    iget-object v5, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v5}, Lorg/chromium/content/app/ChildProcessService;->access$200(Lorg/chromium/content/app/ChildProcessService;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 82
    iget-object v5, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    const-string v7, "com.google.android.apps.chrome.extra.command_line"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lorg/chromium/content/app/ChildProcessService;->access$202(Lorg/chromium/content/app/ChildProcessService;[Ljava/lang/String;)[Ljava/lang/String;

    .line 86
    :cond_0
    sget-boolean v5, Lorg/chromium/content/app/ChildProcessService$1;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v5}, Lorg/chromium/content/app/ChildProcessService;->access$200(Lorg/chromium/content/app/ChildProcessService;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 111
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 87
    :cond_1
    :try_start_1
    iget-object v5, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    const-string v7, "com.google.android.apps.chrome.extra.cpu_count"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5, v7}, Lorg/chromium/content/app/ChildProcessService;->access$302(Lorg/chromium/content/app/ChildProcessService;I)I

    .line 88
    iget-object v5, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    const-string v7, "com.google.android.apps.chrome.extra.cpu_features"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v5, v7, v8}, Lorg/chromium/content/app/ChildProcessService;->access$402(Lorg/chromium/content/app/ChildProcessService;J)J

    .line 89
    sget-boolean v5, Lorg/chromium/content/app/ChildProcessService$1;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v5}, Lorg/chromium/content/app/ChildProcessService;->access$300(Lorg/chromium/content/app/ChildProcessService;)I

    move-result v5

    if-gtz v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 90
    :cond_2
    iget-object v5, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v7}, Lorg/chromium/content/app/ChildProcessService;->access$502(Lorg/chromium/content/app/ChildProcessService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 91
    iget-object v5, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v7}, Lorg/chromium/content/app/ChildProcessService;->access$602(Lorg/chromium/content/app/ChildProcessService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "i":I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.google.android.apps.chrome.extra.extraFile_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_fd"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "fdName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 96
    .local v3, "parcel":Landroid/os/ParcelFileDescriptor;
    if-nez v3, :cond_4

    .line 105
    const-string v5, "org.chromium.base.android.linker.shared_relros"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 106
    .local v4, "sharedRelros":Landroid/os/Bundle;
    if-eqz v4, :cond_3

    .line 107
    invoke-static {v4}, Lorg/chromium/base/library_loader/Linker;->useSharedRelros(Landroid/os/Bundle;)V

    .line 108
    const/4 v4, 0x0

    .line 110
    :cond_3
    iget-object v5, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v5}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    return v5

    .line 100
    .end local v4    # "sharedRelros":Landroid/os/Bundle;
    :cond_4
    :try_start_2
    iget-object v5, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v5}, Lorg/chromium/content/app/ChildProcessService;->access$600(Lorg/chromium/content/app/ChildProcessService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.google.android.apps.chrome.extra.extraFile_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_id"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "idName":Ljava/lang/String;
    iget-object v5, p0, Lorg/chromium/content/app/ChildProcessService$1;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v5}, Lorg/chromium/content/app/ChildProcessService;->access$500(Lorg/chromium/content/app/ChildProcessService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
