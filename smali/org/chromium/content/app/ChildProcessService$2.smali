.class Lorg/chromium/content/app/ChildProcessService$2;
.super Ljava/lang/Object;
.source "ChildProcessService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/app/ChildProcessService;->onCreate()V
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
    .line 134
    const-class v0, Lorg/chromium/content/app/ChildProcessService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/app/ChildProcessService$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/content/app/ChildProcessService;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "DM_EXIT"
        }
    .end annotation

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$200(Lorg/chromium/content/app/ChildProcessService;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_2 .. :try_end_2} :catch_1

    .line 223
    :catch_0
    move-exception v7

    .line 224
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string v0, "ChildProcessService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChildProcessMain startup failed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    return-void

    .line 145
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    :try_start_4
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$200(Lorg/chromium/content/app/ChildProcessService;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/CommandLine;->init([Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v12

    .line 148
    .local v12, "useLinker":Z
    const/4 v11, 0x0

    .line 149
    .local v11, "requestedSharedRelro":Z
    if-eqz v12, :cond_4

    .line 150
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_4 .. :try_end_4} :catch_1

    .line 151
    :goto_2
    :try_start_5
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$700(Lorg/chromium/content/app/ChildProcessService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 154
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_6 .. :try_end_6} :catch_1

    .line 225
    .end local v11    # "requestedSharedRelro":Z
    .end local v12    # "useLinker":Z
    :catch_1
    move-exception v7

    .line 226
    .local v7, "e":Lorg/chromium/base/library_loader/ProcessInitException;
    const-string v0, "ChildProcessService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChildProcessMain startup failed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 154
    .end local v7    # "e":Lorg/chromium/base/library_loader/ProcessInitException;
    .restart local v11    # "requestedSharedRelro":Z
    .restart local v12    # "useLinker":Z
    :cond_2
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 155
    :try_start_8
    sget-boolean v0, Lorg/chromium/content/app/ChildProcessService$2;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$800(Lorg/chromium/content/app/ChildProcessService;)Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 156
    :cond_3
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$800(Lorg/chromium/content/app/ChildProcessService;)Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/content/app/ChromiumLinkerParams;->mWaitForSharedRelro:Z

    if-eqz v0, :cond_8

    .line 157
    const/4 v11, 0x1

    .line 158
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$800(Lorg/chromium/content/app/ChildProcessService;)Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v0

    iget-wide v0, v0, Lorg/chromium/content/app/ChromiumLinkerParams;->mBaseLoadAddress:J

    invoke-static {v0, v1}, Lorg/chromium/base/library_loader/Linker;->initServiceProcess(J)V

    .line 162
    :goto_3
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$800(Lorg/chromium/content/app/ChildProcessService;)Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/content/app/ChromiumLinkerParams;->mTestRunnerClassName:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/library_loader/Linker;->setTestRunnerClassName(Ljava/lang/String;)V

    .line 164
    :cond_4
    const/4 v9, 0x0

    .line 165
    .local v9, "isLoaded":Z
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string v1, "renderer-wait-for-java-debugger"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 167
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_8 .. :try_end_8} :catch_1

    .line 170
    :cond_5
    const/4 v10, 0x0

    .line 172
    .local v10, "loadAtFixedAddressFailed":Z
    const/4 v0, 0x2

    :try_start_9
    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-virtual {v1}, Lorg/chromium/content/app/ChildProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lorg/chromium/base/library_loader/LibraryLoader;->loadNow(Landroid/content/Context;Z)V
    :try_end_9
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    .line 174
    const/4 v9, 0x1

    .line 184
    :goto_4
    if-nez v9, :cond_6

    if-eqz v11, :cond_6

    .line 185
    :try_start_a
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->disableSharedRelros()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_a .. :try_end_a} :catch_1

    .line 187
    const/4 v0, 0x2

    :try_start_b
    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-virtual {v1}, Lorg/chromium/content/app/ChildProcessService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lorg/chromium/base/library_loader/LibraryLoader;->loadNow(Landroid/content/Context;Z)V
    :try_end_b
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0

    .line 189
    const/4 v9, 0x1

    .line 194
    :cond_6
    :goto_5
    if-nez v9, :cond_7

    .line 195
    const/4 v0, -0x1

    :try_start_c
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 197
    :cond_7
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0, v11, v10}, Lorg/chromium/base/library_loader/LibraryLoader;->registerRendererProcessHistogram(ZZ)V

    .line 200
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->get(I)Lorg/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/base/library_loader/LibraryLoader;->initialize()V

    .line 201
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_c .. :try_end_c} :catch_1

    .line 202
    :try_start_d
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lorg/chromium/content/app/ChildProcessService;->access$902(Lorg/chromium/content/app/ChildProcessService;Z)Z

    .line 203
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 204
    :goto_6
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$500(Lorg/chromium/content/app/ChildProcessService;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_a

    .line 205
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$100(Lorg/chromium/content/app/ChildProcessService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_6

    .line 207
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v0

    .line 160
    .end local v9    # "isLoaded":Z
    .end local v10    # "loadAtFixedAddressFailed":Z
    :cond_8
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->disableSharedRelros()V

    goto/16 :goto_3

    .line 175
    .restart local v9    # "isLoaded":Z
    .restart local v10    # "loadAtFixedAddressFailed":Z
    :catch_2
    move-exception v7

    .line 176
    .restart local v7    # "e":Lorg/chromium/base/library_loader/ProcessInitException;
    if-eqz v11, :cond_9

    .line 177
    const-string v0, "ChildProcessService"

    const-string v1, "Failed to load native library with shared RELRO, retrying without"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v10, 0x1

    goto :goto_4

    .line 181
    :cond_9
    const-string v0, "ChildProcessService"

    const-string v1, "Failed to load native library"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 190
    .end local v7    # "e":Lorg/chromium/base/library_loader/ProcessInitException;
    :catch_3
    move-exception v7

    .line 191
    .restart local v7    # "e":Lorg/chromium/base/library_loader/ProcessInitException;
    const-string v0, "ChildProcessService"

    const-string v1, "Failed to load native library on retry"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_5

    .line 207
    .end local v7    # "e":Lorg/chromium/base/library_loader/ProcessInitException;
    :cond_a
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 208
    :try_start_10
    sget-boolean v0, Lorg/chromium/content/app/ChildProcessService$2;->$assertionsDisabled:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$500(Lorg/chromium/content/app/ChildProcessService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v1}, Lorg/chromium/content/app/ChildProcessService;->access$600(Lorg/chromium/content/app/ChildProcessService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 209
    :cond_b
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$500(Lorg/chromium/content/app/ChildProcessService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [I

    .line 210
    .local v2, "fileIds":[I
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$600(Lorg/chromium/content/app/ChildProcessService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [I

    .line 211
    .local v3, "fileFds":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_7
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$500(Lorg/chromium/content/app/ChildProcessService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_c

    .line 212
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$500(Lorg/chromium/content/app/ChildProcessService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v8

    .line 213
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$600(Lorg/chromium/content/app/ChildProcessService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    aput v0, v3, v8

    .line 211
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 215
    :cond_c
    invoke-static {}, Lorg/chromium/content/app/ChildProcessService;->access$1000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/content/app/ContentMain;->initApplicationContext(Landroid/content/Context;)V

    .line 216
    invoke-static {}, Lorg/chromium/content/app/ChildProcessService;->access$1000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    iget-object v4, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v4}, Lorg/chromium/content/app/ChildProcessService;->access$300(Lorg/chromium/content/app/ChildProcessService;)I

    move-result v4

    iget-object v5, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v5}, Lorg/chromium/content/app/ChildProcessService;->access$400(Lorg/chromium/content/app/ChildProcessService;)J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lorg/chromium/content/app/ChildProcessService;->access$1100(Landroid/content/Context;Lorg/chromium/content/app/ChildProcessService;[I[IIJ)V

    .line 219
    iget-object v0, p0, Lorg/chromium/content/app/ChildProcessService$2;->this$0:Lorg/chromium/content/app/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/content/app/ChildProcessService;->access$1200(Lorg/chromium/content/app/ChildProcessService;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Lorg/chromium/content/app/ContentMain;->start()I

    .line 221
    invoke-static {}, Lorg/chromium/content/app/ChildProcessService;->access$1300()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_1
.end method
