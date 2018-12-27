.class public Lorg/chromium/content/browser/ChildProcessLauncher;
.super Ljava/lang/Object;
.source "ChildProcessLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;,
        Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;,
        Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final CALLBACK_FOR_GPU_PROCESS:I = 0x1

.field static final CALLBACK_FOR_RENDERER_PROCESS:I = 0x2

.field static final CALLBACK_FOR_UNKNOWN_PROCESS:I = 0x0

.field static final CALLBACK_FOR_UTILITY_PROCESS:I = 0x3

.field private static final FREE_CONNECTION_DELAY_MILLIS:J = 0x1L

.field private static final NULL_PROCESS_HANDLE:I = 0x0

.field private static final NUM_PRIVILEGED_SERVICES_KEY:Ljava/lang/String; = "org.chromium.content.browser.NUM_PRIVILEGED_SERVICES"

.field private static final NUM_SANDBOXED_SERVICES_KEY:Ljava/lang/String; = "org.chromium.content.browser.NUM_SANDBOXED_SERVICES"

.field private static final SWITCH_GPU_PROCESS:Ljava/lang/String; = "gpu-process"

.field private static final SWITCH_PROCESS_TYPE:Ljava/lang/String; = "type"

.field private static final SWITCH_RENDERER_PROCESS:Ljava/lang/String; = "renderer"

.field private static final SWITCH_UTILITY_PROCESS:Ljava/lang/String; = "utility"

.field private static final TAG:Ljava/lang/String; = "ChildProcessLauncher"

.field private static sApplicationInForeground:Z

.field private static sBindingManager:Lorg/chromium/content/browser/BindingManager;

.field private static sLinkerInitialized:Z

.field private static sLinkerLoadAddress:J

.field private static final sPendingSpawnQueue:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

.field private static sPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

.field private static sSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

.field private static sServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/chromium/content/browser/ChildProcessConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

.field private static sSurfaceTextureSurfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private static sViewSurfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    const-class v0, Lorg/chromium/content/browser/ChildProcessLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    .line 204
    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    invoke-direct {v0, v4}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;-><init>(Lorg/chromium/content/browser/ChildProcessLauncher$1;)V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPendingSpawnQueue:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    .line 268
    sput-boolean v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerInitialized:Z

    .line 269
    const-wide/16 v2, 0x0

    sput-wide v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    .line 337
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    .line 341
    sput-object v4, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 344
    invoke-static {}, Lorg/chromium/content/browser/BindingManagerImpl;->createBindingManager()Lorg/chromium/content/browser/BindingManagerImpl;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    .line 347
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    .line 351
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    .line 355
    sput-boolean v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sApplicationInForeground:Z

    return-void

    :cond_0
    move v0, v2

    .line 38
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 39
    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncher;->freeConnection(Lorg/chromium/content/browser/ChildProcessConnection;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZ)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # [Lorg/chromium/content/browser/FileDescriptorInfo;
    .param p4, "x4"    # J
    .param p6, "x5"    # I
    .param p7, "x6"    # Z

    .prologue
    .line 39
    invoke-static/range {p0 .. p7}, Lorg/chromium/content/browser/ChildProcessLauncher;->startInternal(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZ)V

    return-void
.end method

.method static synthetic access$1300()Lorg/chromium/content/browser/BindingManager;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/Map;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500(JI)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->nativeOnChildProcessStarted(JI)V

    return-void
.end method

.method static synthetic access$1600(ILandroid/view/Surface;II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/view/Surface;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 39
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/content/browser/ChildProcessLauncher;->nativeEstablishSurfacePeer(ILandroid/view/Surface;II)V

    return-void
.end method

.method static synthetic access$1700()Ljava/util/Map;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1800(IILandroid/view/Surface;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/Surface;

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->registerSurfaceTextureSurface(IILandroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$1900(II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-static {p0, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->unregisterSurfaceTextureSurface(II)V

    return-void
.end method

.method static synthetic access$200(Z)Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 39
    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncher;->getConnectionAllocator(Z)Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(II)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-static {p0, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->getSurfaceTextureSurface(II)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPendingSpawnQueue:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    return-object v0
.end method

.method private static allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;ZZ)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandLine"    # [Ljava/lang/String;
    .param p2, "inSandbox"    # Z
    .param p3, "alwaysInForeground"    # Z

    .prologue
    .line 294
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->getLinkerParamsForNewConnection()Lorg/chromium/content/app/ChromiumLinkerParams;

    move-result-object v0

    .line 295
    .local v0, "chromiumLinkerParams":Lorg/chromium/content/app/ChromiumLinkerParams;
    invoke-static {p0, p2, v0, p3}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateConnection(Landroid/content/Context;ZLorg/chromium/content/app/ChromiumLinkerParams;Z)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v1

    .line 297
    .local v1, "connection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-eqz v1, :cond_0

    .line 298
    invoke-interface {v1, p1}, Lorg/chromium/content/browser/ChildProcessConnection;->start([Ljava/lang/String;)V

    .line 300
    :cond_0
    return-object v1
.end method

.method static allocateBoundConnectionForTesting(Landroid/content/Context;)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 717
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;ZZ)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    return-object v0
.end method

.method private static allocateConnection(Landroid/content/Context;ZLorg/chromium/content/app/ChromiumLinkerParams;Z)Lorg/chromium/content/browser/ChildProcessConnection;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inSandbox"    # Z
    .param p2, "chromiumLinkerParams"    # Lorg/chromium/content/app/ChromiumLinkerParams;
    .param p3, "alwaysInForeground"    # Z

    .prologue
    .line 252
    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$1;

    invoke-direct {v0}, Lorg/chromium/content/browser/ChildProcessLauncher$1;-><init>()V

    .line 263
    .local v0, "deathCallback":Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;
    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncher;->initConnectionAllocatorsIfNecessary(Landroid/content/Context;)V

    .line 264
    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->getConnectionAllocator(Z)Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p2, p3}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->allocate(Landroid/content/Context;Lorg/chromium/content/browser/ChildProcessConnection$DeathCallback;Lorg/chromium/content/app/ChromiumLinkerParams;Z)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v1

    return-object v1
.end method

.method static allocatedConnectionsCountForTesting(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 732
    invoke-static {p0}, Lorg/chromium/content/browser/ChildProcessLauncher;->initConnectionAllocatorsIfNecessary(Landroid/content/Context;)V

    .line 733
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;->allocatedConnectionsCountForTesting()I

    move-result v0

    return v0
.end method

.method static connectedServicesCountForTesting()I
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 739
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static crashProcessForTesting(I)Z
    .locals 4
    .param p0, "pid"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 754
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v2

    .line 762
    :goto_0
    return v1

    .line 757
    :cond_0
    :try_start_0
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content/browser/ChildProcessConnectionImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ChildProcessConnectionImpl;->crashServiceForTesting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    const/4 v1, 0x1

    goto :goto_0

    .line 758
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    move v1, v2

    .line 759
    goto :goto_0
.end method

.method private static createCallback(II)Lorg/chromium/content/common/IChildProcessCallback;
    .locals 1
    .param p0, "childProcessId"    # I
    .param p1, "callbackType"    # I

    .prologue
    .line 635
    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$4;

    invoke-direct {v0, p1, p0}, Lorg/chromium/content/browser/ChildProcessLauncher$4;-><init>(II)V

    return-object v0
.end method

.method private static createSurfaceTextureSurface(IILandroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 396
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p0, p1, v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->registerSurfaceTextureSurface(IILandroid/view/Surface;)V

    .line 397
    return-void
.end method

.method private static destroySurfaceTextureSurface(II)V
    .locals 0
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 401
    invoke-static {p0, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->unregisterSurfaceTextureSurface(II)V

    .line 402
    return-void
.end method

.method public static determinedVisibility(I)V
    .locals 1
    .param p0, "pid"    # I

    .prologue
    .line 432
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/BindingManager;->determinedVisibility(I)V

    .line 433
    return-void
.end method

.method static enqueuePendingSpawnForTesting(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 725
    sget-object v10, Lorg/chromium/content/browser/ChildProcessLauncher;->sPendingSpawnQueue:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    new-array v2, v1, [Ljava/lang/String;

    new-array v4, v1, [Lorg/chromium/content/browser/FileDescriptorInfo;

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x0

    move-object v1, p0

    move v8, v3

    invoke-direct/range {v0 .. v9}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;-><init>(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZLorg/chromium/content/browser/ChildProcessLauncher$1;)V

    invoke-virtual {v10, v0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->enqueue(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)V

    .line 727
    return-void
.end method

.method private static freeConnection(Lorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 4
    .param p0, "connection"    # Lorg/chromium/content/browser/ChildProcessConnection;

    .prologue
    .line 311
    move-object v0, p0

    .line 312
    .local v0, "conn":Lorg/chromium/content/browser/ChildProcessConnection;
    new-instance v1, Lorg/chromium/content/browser/ChildProcessLauncher$2;

    invoke-direct {v1, v0}, Lorg/chromium/content/browser/ChildProcessLauncher$2;-><init>(Lorg/chromium/content/browser/ChildProcessConnection;)V

    const-wide/16 v2, 0x1

    invoke-static {v1, v2, v3}, Lorg/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 331
    return-void
.end method

.method private static getConnectionAllocator(Z)Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;
    .locals 1
    .param p0, "inSandbox"    # Z

    .prologue
    .line 246
    if-eqz p0, :cond_0

    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    goto :goto_0
.end method

.method private static getLinkerParamsForNewConnection()Lorg/chromium/content/app/ChromiumLinkerParams;
    .locals 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    .line 272
    sget-boolean v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerInitialized:Z

    if-nez v1, :cond_1

    .line 273
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getBaseLoadAddress()J

    move-result-wide v1

    sput-wide v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    .line 275
    sget-wide v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 276
    const-string v1, "ChildProcessLauncher"

    const-string v2, "Shared RELRO support disabled!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    sput-boolean v5, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerInitialized:Z

    .line 282
    :cond_1
    sget-wide v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 283
    const/4 v1, 0x0

    .line 287
    .local v0, "waitForSharedRelros":Z
    :goto_0
    return-object v1

    .line 286
    .end local v0    # "waitForSharedRelros":Z
    :cond_2
    const/4 v0, 0x1

    .line 287
    .restart local v0    # "waitForSharedRelros":Z
    new-instance v1, Lorg/chromium/content/app/ChromiumLinkerParams;

    sget-wide v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sLinkerLoadAddress:J

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getTestRunnerClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v5, v4}, Lorg/chromium/content/app/ChromiumLinkerParams;-><init>(JZLjava/lang/String;)V

    goto :goto_0
.end method

.method private static getNumberOfServices(Landroid/content/Context;Z)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inSandbox"    # Z

    .prologue
    .line 218
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 219
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 221
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v4, "org.chromium.content.browser.NUM_SANDBOXED_SERVICES"

    :goto_0
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 223
    .local v2, "numServices":I
    if-gtz v2, :cond_1

    .line 224
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Illegal meta data value for number of child services"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "numServices":I
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Could not get application info"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 221
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :try_start_1
    const-string v4, "org.chromium.content.browser.NUM_PRIVILEGED_SERVICES"
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 226
    .restart local v2    # "numServices":I
    :cond_1
    return v2
.end method

.method private static getSurfaceTextureSurface(II)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 4
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 407
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 409
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 410
    .local v1, "surface":Landroid/view/Surface;
    if-nez v1, :cond_0

    .line 411
    const-string v2, "ChildProcessLauncher"

    const-string v3, "Invalid Id for surface texture."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v2, 0x0

    .line 415
    :goto_0
    return-object v2

    .line 414
    :cond_0
    sget-boolean v2, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 415
    :cond_1
    new-instance v2, Lorg/chromium/content/common/SurfaceWrapper;

    invoke-direct {v2, v1}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method private static getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "commandLine"    # [Ljava/lang/String;
    .param p1, "switchKey"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 474
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-object v5

    .line 478
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, "switchKeyPrefix":Ljava/lang/String;
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 480
    .local v1, "command":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 481
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 479
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static initConnectionAllocatorsIfNecessary(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    const-class v1, Lorg/chromium/content/browser/ChildProcessLauncher;

    monitor-enter v1

    .line 234
    :try_start_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lorg/chromium/content/browser/ChildProcessLauncher;->getNumberOfServices(Landroid/content/Context;Z)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;-><init>(ZI)V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSandboxedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    .line 238
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    if-nez v0, :cond_1

    .line 239
    new-instance v0, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lorg/chromium/content/browser/ChildProcessLauncher;->getNumberOfServices(Landroid/content/Context;Z)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;-><init>(ZI)V

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPrivilegedChildConnectionAllocator:Lorg/chromium/content/browser/ChildProcessLauncher$ChildConnectionAllocator;

    .line 242
    :cond_1
    monitor-exit v1

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static isApplicationInForeground()Z
    .locals 1

    .prologue
    .line 455
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sApplicationInForeground:Z

    return v0
.end method

.method private static isOomProtected(I)Z
    .locals 1
    .param p0, "pid"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 365
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/BindingManager;->isOomProtected(I)Z

    move-result v0

    return v0
.end method

.method static logPidWarning(ILjava/lang/String;)V
    .locals 3
    .param p0, "pid"    # I
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 710
    if-lez p0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->nativeIsSingleProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    const-string v0, "ChildProcessLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_0
    return-void
.end method

.method private static native nativeEstablishSurfacePeer(ILandroid/view/Surface;II)V
.end method

.method private static native nativeIsSingleProcess()Z
.end method

.method private static native nativeOnChildProcessStarted(JI)V
.end method

.method public static onBroughtToForeground()V
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sApplicationInForeground:Z

    .line 448
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0}, Lorg/chromium/content/browser/BindingManager;->onBroughtToForeground()V

    .line 449
    return-void
.end method

.method public static onSentToBackground()V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    sput-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sApplicationInForeground:Z

    .line 440
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0}, Lorg/chromium/content/browser/BindingManager;->onSentToBackground()V

    .line 441
    return-void
.end method

.method static pendingSpawnsCountForTesting()I
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 745
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sPendingSpawnQueue:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->size()I

    move-result v0

    return v0
.end method

.method private static registerSurfaceTextureSurface(IILandroid/view/Surface;)V
    .locals 3
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 380
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 381
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    return-void
.end method

.method private static registerViewSurface(ILandroid/view/Surface;)V
    .locals 2
    .param p0, "surfaceId"    # I
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 370
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    return-void
.end method

.method public static setBindingManagerForTesting(Lorg/chromium/content/browser/BindingManager;)V
    .locals 0
    .param p0, "manager"    # Lorg/chromium/content/browser/BindingManager;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 359
    sput-object p0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    .line 360
    return-void
.end method

.method public static setInForeground(IZ)V
    .locals 1
    .param p0, "pid"    # I
    .param p1, "inForeground"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 424
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v0, p0, p1}, Lorg/chromium/content/browser/BindingManager;->setInForeground(IZ)V

    .line 425
    return-void
.end method

.method static start(Landroid/content/Context;[Ljava/lang/String;I[I[I[ZJ)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandLine"    # [Ljava/lang/String;
    .param p2, "childProcessId"    # I
    .param p3, "fileIds"    # [I
    .param p4, "fileFds"    # [I
    .param p5, "fileAutoClose"    # [Z
    .param p6, "clientContext"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 510
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_0

    array-length v0, p4

    array-length v1, p5

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 511
    :cond_1
    array-length v0, p4

    new-array v3, v0, [Lorg/chromium/content/browser/FileDescriptorInfo;

    .line 512
    .local v3, "filesToBeMapped":[Lorg/chromium/content/browser/FileDescriptorInfo;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, p4

    if-ge v8, v0, :cond_2

    .line 513
    new-instance v0, Lorg/chromium/content/browser/FileDescriptorInfo;

    aget v1, p3, v8

    aget v2, p4, v8

    aget-boolean v4, p5, v8

    invoke-direct {v0, v1, v2, v4}, Lorg/chromium/content/browser/FileDescriptorInfo;-><init>(IIZ)V

    aput-object v0, v3, v8

    .line 512
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 516
    :cond_2
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 518
    :cond_3
    const/4 v6, 0x0

    .line 519
    .local v6, "callbackType":I
    const/4 v7, 0x1

    .line 520
    .local v7, "inSandbox":Z
    const-string v0, "type"

    invoke-static {p1, v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->getSwitchValue([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 521
    .local v9, "processType":Ljava/lang/String;
    const-string v0, "renderer"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 522
    const/4 v6, 0x2

    :cond_4
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide/from16 v4, p6

    .line 533
    invoke-static/range {v0 .. v7}, Lorg/chromium/content/browser/ChildProcessLauncher;->startInternal(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZ)V

    .line 535
    return-void

    .line 523
    :cond_5
    const-string v0, "gpu-process"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 524
    const/4 v6, 0x1

    .line 525
    const/4 v7, 0x0

    goto :goto_1

    .line 526
    :cond_6
    const-string v0, "utility"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 528
    const/4 v6, 0x3

    goto :goto_1

    .line 530
    :cond_7
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static startInternal(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZ)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandLine"    # [Ljava/lang/String;
    .param p2, "childProcessId"    # I
    .param p3, "filesToBeMapped"    # [Lorg/chromium/content/browser/FileDescriptorInfo;
    .param p4, "clientContext"    # J
    .param p6, "callbackType"    # I
    .param p7, "inSandbox"    # Z

    .prologue
    .line 546
    :try_start_0
    const-string v2, "ChildProcessLauncher.startInternal"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 548
    const/4 v1, 0x0

    .line 549
    .local v1, "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    const-class v3, Lorg/chromium/content/browser/ChildProcessLauncher;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 550
    if-eqz p7, :cond_0

    .line 551
    :try_start_1
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 552
    const/4 v2, 0x0

    sput-object v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 554
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    if-nez v1, :cond_3

    .line 556
    const/4 v12, 0x0

    .line 557
    .local v12, "alwaysInForeground":Z
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_1

    const/4 v12, 0x1

    .line 558
    :cond_1
    :try_start_2
    move/from16 v0, p7

    invoke-static {p0, p1, v0, v12}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;ZZ)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v11

    .line 560
    .end local v1    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    .local v11, "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-nez v11, :cond_2

    .line 561
    const-string v2, "ChildProcessLauncher"

    const-string v3, "Allocation of new service failed. Queuing up pending spawn."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    sget-object v13, Lorg/chromium/content/browser/ChildProcessLauncher;->sPendingSpawnQueue:Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;

    new-instance v1, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;-><init>(Landroid/content/Context;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;JIZLorg/chromium/content/browser/ChildProcessLauncher$1;)V

    invoke-virtual {v13, v1}, Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnQueue;->enqueue(Lorg/chromium/content/browser/ChildProcessLauncher$PendingSpawnData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 574
    const-string v2, "ChildProcessLauncher.startInternal"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    move-object v1, v11

    .line 576
    .end local v11    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    .end local v12    # "alwaysInForeground":Z
    .restart local v1    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    :goto_0
    return-void

    .line 554
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 574
    .end local v1    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    :catchall_1
    move-exception v2

    const-string v3, "ChildProcessLauncher.startInternal"

    invoke-static {v3}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v2

    .restart local v11    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    .restart local v12    # "alwaysInForeground":Z
    :cond_2
    move-object v1, v11

    .line 569
    .end local v11    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    .end local v12    # "alwaysInForeground":Z
    .restart local v1    # "allocatedConnection":Lorg/chromium/content/browser/ChildProcessConnection;
    :cond_3
    :try_start_5
    const-string v2, "ChildProcessLauncher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting up connection to process: slot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/chromium/content/browser/ChildProcessConnection;->getServiceNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p6

    move-wide/from16 v6, p4

    .line 571
    invoke-static/range {v1 .. v7}, Lorg/chromium/content/browser/ChildProcessLauncher;->triggerConnectionSetup(Lorg/chromium/content/browser/ChildProcessConnection;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;IJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 574
    const-string v2, "ChildProcessLauncher.startInternal"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static stop(I)V
    .locals 4
    .param p0, "pid"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 619
    const-string v1, "ChildProcessLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopping child connection: pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ChildProcessConnection;

    .line 621
    .local v0, "connection":Lorg/chromium/content/browser/ChildProcessConnection;
    if-nez v0, :cond_0

    .line 622
    const-string v1, "Tried to stop non-existent connection"

    invoke-static {p0, v1}, Lorg/chromium/content/browser/ChildProcessLauncher;->logPidWarning(ILjava/lang/String;)V

    .line 628
    :goto_0
    return-void

    .line 625
    :cond_0
    sget-object v1, Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;

    invoke-interface {v1, p0}, Lorg/chromium/content/browser/BindingManager;->clearConnection(I)V

    .line 626
    invoke-interface {v0}, Lorg/chromium/content/browser/ChildProcessConnection;->stop()V

    .line 627
    invoke-static {v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->freeConnection(Lorg/chromium/content/browser/ChildProcessConnection;)V

    goto :goto_0
.end method

.method static triggerConnectionSetup(Lorg/chromium/content/browser/ChildProcessConnection;[Ljava/lang/String;I[Lorg/chromium/content/browser/FileDescriptorInfo;IJ)V
    .locals 6
    .param p0, "connection"    # Lorg/chromium/content/browser/ChildProcessConnection;
    .param p1, "commandLine"    # [Ljava/lang/String;
    .param p2, "childProcessId"    # I
    .param p3, "filesToBeMapped"    # [Lorg/chromium/content/browser/FileDescriptorInfo;
    .param p4, "callbackType"    # I
    .param p5, "clientContext"    # J
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 586
    new-instance v4, Lorg/chromium/content/browser/ChildProcessLauncher$3;

    invoke-direct {v4, p5, p6, p0}, Lorg/chromium/content/browser/ChildProcessLauncher$3;-><init>(JLorg/chromium/content/browser/ChildProcessConnection;)V

    .line 604
    .local v4, "connectionCallback":Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 605
    :cond_0
    invoke-static {p2, p4}, Lorg/chromium/content/browser/ChildProcessLauncher;->createCallback(II)Lorg/chromium/content/common/IChildProcessCallback;

    move-result-object v3

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getSharedRelros()Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lorg/chromium/content/browser/ChildProcessConnection;->setupConnection([Ljava/lang/String;[Lorg/chromium/content/browser/FileDescriptorInfo;Lorg/chromium/content/common/IChildProcessCallback;Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;Landroid/os/Bundle;)V

    .line 610
    return-void
.end method

.method private static unregisterSurfaceTextureSurface(II)V
    .locals 4
    .param p0, "surfaceTextureId"    # I
    .param p1, "clientId"    # I

    .prologue
    .line 385
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 386
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v2, Lorg/chromium/content/browser/ChildProcessLauncher;->sSurfaceTextureSurfaceMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 387
    .local v1, "surface":Landroid/view/Surface;
    if-nez v1, :cond_0

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    sget-boolean v2, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 390
    :cond_1
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    goto :goto_0
.end method

.method private static unregisterViewSurface(I)V
    .locals 2
    .param p0, "surfaceId"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 375
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    return-void
.end method

.method public static warmUp(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 465
    const-class v1, Lorg/chromium/content/browser/ChildProcessLauncher;

    monitor-enter v1

    .line 466
    :try_start_0
    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessLauncher;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 467
    :cond_0
    :try_start_1
    sget-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    if-nez v0, :cond_1

    .line 468
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lorg/chromium/content/browser/ChildProcessLauncher;->allocateBoundConnection(Landroid/content/Context;[Ljava/lang/String;ZZ)Lorg/chromium/content/browser/ChildProcessConnection;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/ChildProcessLauncher;->sSpareSandboxedConnection:Lorg/chromium/content/browser/ChildProcessConnection;

    .line 470
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    return-void
.end method
