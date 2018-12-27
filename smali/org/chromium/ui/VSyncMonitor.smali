.class public Lorg/chromium/ui/VSyncMonitor;
.super Ljava/lang/Object;
.source "VSyncMonitor.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/VSyncMonitor$Listener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NANOSECONDS_PER_MICROSECOND:J = 0x3e8L

.field private static final NANOSECONDS_PER_MILLISECOND:J = 0xf4240L

.field private static final NANOSECONDS_PER_SECOND:J = 0x3b9aca00L


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private mConsecutiveVSync:Z

.field private mGoodStartingPointNano:J

.field private final mHandler:Landroid/os/Handler;

.field private mHaveRequestInFlight:Z

.field private mInsideVSync:Z

.field private mLastPostedNano:J

.field private mLastVSyncCpuTimeNano:J

.field private mListener:Lorg/chromium/ui/VSyncMonitor$Listener;

.field private mRefreshPeriodNano:J

.field private final mSyntheticVSyncRunnable:Ljava/lang/Runnable;

.field private final mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mVSyncRunnableCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lorg/chromium/ui/VSyncMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/VSyncMonitor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/VSyncMonitor$Listener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/chromium/ui/VSyncMonitor$Listener;

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/ui/VSyncMonitor;-><init>(Landroid/content/Context;Lorg/chromium/ui/VSyncMonitor$Listener;Z)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/VSyncMonitor$Listener;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/chromium/ui/VSyncMonitor$Listener;
    .param p3, "enableJBVSync"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lorg/chromium/ui/VSyncMonitor;->mInsideVSync:Z

    .line 31
    iput-boolean v1, p0, Lorg/chromium/ui/VSyncMonitor;->mConsecutiveVSync:Z

    .line 63
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lorg/chromium/ui/VSyncMonitor;->mHandler:Landroid/os/Handler;

    .line 83
    iput-object p2, p0, Lorg/chromium/ui/VSyncMonitor;->mListener:Lorg/chromium/ui/VSyncMonitor$Listener;

    .line 84
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    .line 86
    .local v0, "refreshRate":F
    const/high16 v2, 0x41f00000    # 30.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    const/4 v1, 0x1

    .line 88
    .local v1, "useEstimatedRefreshPeriod":Z
    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    const/high16 v0, 0x42700000    # 60.0f

    .line 89
    :cond_1
    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v0

    float-to-long v2, v2

    iput-wide v2, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    .line 91
    if-eqz p3, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 93
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/ui/VSyncMonitor;->mChoreographer:Landroid/view/Choreographer;

    .line 94
    new-instance v2, Lorg/chromium/ui/VSyncMonitor$1;

    invoke-direct {v2, p0, v1}, Lorg/chromium/ui/VSyncMonitor$1;-><init>(Lorg/chromium/ui/VSyncMonitor;Z)V

    iput-object v2, p0, Lorg/chromium/ui/VSyncMonitor;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 112
    iput-object v4, p0, Lorg/chromium/ui/VSyncMonitor;->mVSyncRunnableCallback:Ljava/lang/Runnable;

    .line 128
    :goto_0
    new-instance v2, Lorg/chromium/ui/VSyncMonitor$3;

    invoke-direct {v2, p0}, Lorg/chromium/ui/VSyncMonitor$3;-><init>(Lorg/chromium/ui/VSyncMonitor;)V

    iput-object v2, p0, Lorg/chromium/ui/VSyncMonitor;->mSyntheticVSyncRunnable:Ljava/lang/Runnable;

    .line 137
    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->getCurrentNanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/ui/VSyncMonitor;->mGoodStartingPointNano:J

    .line 138
    return-void

    .line 115
    :cond_2
    iput-object v4, p0, Lorg/chromium/ui/VSyncMonitor;->mChoreographer:Landroid/view/Choreographer;

    .line 116
    iput-object v4, p0, Lorg/chromium/ui/VSyncMonitor;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 117
    new-instance v2, Lorg/chromium/ui/VSyncMonitor$2;

    invoke-direct {v2, p0}, Lorg/chromium/ui/VSyncMonitor$2;-><init>(Lorg/chromium/ui/VSyncMonitor;)V

    iput-object v2, p0, Lorg/chromium/ui/VSyncMonitor;->mVSyncRunnableCallback:Ljava/lang/Runnable;

    .line 126
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/chromium/ui/VSyncMonitor;->mLastPostedNano:J

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/ui/VSyncMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;

    .prologue
    .line 22
    iget-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mConsecutiveVSync:Z

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/ui/VSyncMonitor;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;

    .prologue
    .line 22
    iget-wide v0, p0, Lorg/chromium/ui/VSyncMonitor;->mGoodStartingPointNano:J

    return-wide v0
.end method

.method static synthetic access$102(Lorg/chromium/ui/VSyncMonitor;J)J
    .locals 0
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 22
    iput-wide p1, p0, Lorg/chromium/ui/VSyncMonitor;->mGoodStartingPointNano:J

    return-wide p1
.end method

.method static synthetic access$200(Lorg/chromium/ui/VSyncMonitor;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;

    .prologue
    .line 22
    iget-wide v0, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    return-wide v0
.end method

.method static synthetic access$214(Lorg/chromium/ui/VSyncMonitor;J)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 22
    iget-wide v0, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/chromium/ui/VSyncMonitor;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->getCurrentNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lorg/chromium/ui/VSyncMonitor;JJ)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/ui/VSyncMonitor;->onVSyncCallback(JJ)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/ui/VSyncMonitor;J)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/VSyncMonitor;->estimateLastVSyncTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private estimateLastVSyncTime(J)J
    .locals 8
    .param p1, "currentTime"    # J

    .prologue
    .line 222
    iget-wide v2, p0, Lorg/chromium/ui/VSyncMonitor;->mGoodStartingPointNano:J

    iget-wide v4, p0, Lorg/chromium/ui/VSyncMonitor;->mGoodStartingPointNano:J

    sub-long v4, p1, v4

    iget-wide v6, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    div-long/2addr v4, v6

    iget-wide v6, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    mul-long/2addr v4, v6

    add-long v0, v2, v4

    .line 225
    .local v0, "lastRefreshTime":J
    return-wide v0
.end method

.method private getCurrentNanoTime()J
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private isVSyncSignalAvailable()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onVSyncCallback(JJ)V
    .locals 4
    .param p1, "frameTimeNanos"    # J
    .param p3, "currentTimeNanos"    # J

    .prologue
    const/4 v3, 0x0

    .line 186
    sget-boolean v0, Lorg/chromium/ui/VSyncMonitor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mHaveRequestInFlight:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 187
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mInsideVSync:Z

    .line 188
    iput-boolean v3, p0, Lorg/chromium/ui/VSyncMonitor;->mHaveRequestInFlight:Z

    .line 189
    iput-wide p3, p0, Lorg/chromium/ui/VSyncMonitor;->mLastVSyncCpuTimeNano:J

    .line 191
    :try_start_0
    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor;->mListener:Lorg/chromium/ui/VSyncMonitor$Listener;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor;->mListener:Lorg/chromium/ui/VSyncMonitor$Listener;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    invoke-interface {v0, p0, v1, v2}, Lorg/chromium/ui/VSyncMonitor$Listener;->onVSync(Lorg/chromium/ui/VSyncMonitor;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_1
    iput-boolean v3, p0, Lorg/chromium/ui/VSyncMonitor;->mInsideVSync:Z

    .line 197
    return-void

    .line 195
    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lorg/chromium/ui/VSyncMonitor;->mInsideVSync:Z

    throw v0
.end method

.method private postCallback()V
    .locals 2

    .prologue
    .line 200
    iget-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mHaveRequestInFlight:Z

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mHaveRequestInFlight:Z

    .line 202
    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->postSyntheticVSync()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->isVSyncSignalAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mInsideVSync:Z

    iput-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mConsecutiveVSync:Z

    .line 205
    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lorg/chromium/ui/VSyncMonitor;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 207
    :cond_2
    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->postRunnableCallback()V

    goto :goto_0
.end method

.method private postRunnableCallback()V
    .locals 14

    .prologue
    .line 229
    sget-boolean v6, Lorg/chromium/ui/VSyncMonitor;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->isVSyncSignalAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 230
    :cond_0
    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->getCurrentNanoTime()J

    move-result-wide v0

    .line 231
    .local v0, "currentTime":J
    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/VSyncMonitor;->estimateLastVSyncTime(J)J

    move-result-wide v4

    .line 232
    .local v4, "lastRefreshTime":J
    iget-wide v6, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    add-long/2addr v6, v4

    sub-long v2, v6, v0

    .line 233
    .local v2, "delay":J
    sget-boolean v6, Lorg/chromium/ui/VSyncMonitor;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    iget-wide v6, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    :cond_1
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 235
    :cond_2
    add-long v6, v0, v2

    iget-wide v8, p0, Lorg/chromium/ui/VSyncMonitor;->mLastPostedNano:J

    iget-wide v10, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    const-wide/16 v12, 0x2

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3

    .line 236
    iget-wide v6, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    add-long/2addr v2, v6

    .line 239
    :cond_3
    add-long v6, v0, v2

    iput-wide v6, p0, Lorg/chromium/ui/VSyncMonitor;->mLastPostedNano:J

    .line 240
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/chromium/ui/VSyncMonitor;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lorg/chromium/ui/VSyncMonitor;->mVSyncRunnableCallback:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_4
    iget-object v6, p0, Lorg/chromium/ui/VSyncMonitor;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lorg/chromium/ui/VSyncMonitor;->mVSyncRunnableCallback:Ljava/lang/Runnable;

    const-wide/32 v8, 0xf4240

    div-long v8, v2, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private postSyntheticVSync()Z
    .locals 9

    .prologue
    const-wide/16 v7, 0x2

    const/4 v2, 0x0

    .line 212
    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->getCurrentNanoTime()J

    move-result-wide v0

    .line 215
    .local v0, "currentTime":J
    iget-wide v3, p0, Lorg/chromium/ui/VSyncMonitor;->mLastVSyncCpuTimeNano:J

    sub-long v3, v0, v3

    iget-wide v5, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    mul-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v2

    .line 216
    :cond_1
    invoke-direct {p0, v0, v1}, Lorg/chromium/ui/VSyncMonitor;->estimateLastVSyncTime(J)J

    move-result-wide v3

    sub-long v3, v0, v3

    iget-wide v5, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    div-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 217
    iget-object v2, p0, Lorg/chromium/ui/VSyncMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lorg/chromium/ui/VSyncMonitor;->mSyntheticVSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getVSyncPeriodInMicroseconds()J
    .locals 4

    .prologue
    .line 144
    iget-wide v0, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public isInsideVSync()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mInsideVSync:Z

    return v0
.end method

.method public requestUpdate()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->postCallback()V

    .line 160
    return-void
.end method

.method public setVSyncPointForICS(J)V
    .locals 0
    .param p1, "goodStartingPointNano"    # J

    .prologue
    .line 167
    iput-wide p1, p0, Lorg/chromium/ui/VSyncMonitor;->mGoodStartingPointNano:J

    .line 168
    return-void
.end method
