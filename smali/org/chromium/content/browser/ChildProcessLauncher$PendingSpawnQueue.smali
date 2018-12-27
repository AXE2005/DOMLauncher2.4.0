.class Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;
.super Ljava/lang/Object;
.source "ChildProcessLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ChildProcessLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingSpawnQueue"
.end annotation


# static fields
.field private static sPendingSpawns:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;",
            ">;"
        }
    .end annotation
.end field

.field static final sPendingSpawnsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->sPendingSpawns:Ljava/util/Queue;

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->sPendingSpawnsLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/browser/ChildProcessLauncher$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/content/browser/ChildProcessLauncher$1;

    .prologue
    .line 170
    invoke-direct {p0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public dequeue()Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;
    .locals 2

    .prologue
    .line 191
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->sPendingSpawnsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->sPendingSpawns:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    monitor-exit v1

    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enqueue(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)V
    .locals 2
    .param p1, "pendingSpawn"    # Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    .prologue
    .line 181
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->sPendingSpawnsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->sPendingSpawns:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 183
    monitor-exit v1

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 198
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->sPendingSpawnsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->sPendingSpawns:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
