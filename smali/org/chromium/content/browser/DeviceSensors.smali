.class Lorg/chromium/content/browser/DeviceSensors;
.super Ljava/lang/Object;
.source "DeviceSensors.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;,
        Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final DEVICE_LIGHT:I = 0x2

.field static final DEVICE_LIGHT_SENSORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_MOTION:I = 0x1

.field static final DEVICE_MOTION_SENSORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_ORIENTATION:I = 0x0

.field static final DEVICE_ORIENTATION_BACKUP_SENSORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_ORIENTATION_DEFAULT_SENSORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DeviceSensors"

.field private static sSingleton:Lorg/chromium/content/browser/DeviceSensors;

.field private static sSingletonLock:Ljava/lang/Object;


# instance fields
.field private mAccelerationIncludingGravityVector:[F

.field final mActiveSensors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field mDeviceLightIsActive:Z

.field mDeviceMotionIsActive:Z

.field mDeviceOrientationIsActive:Z

.field mDeviceOrientationSensors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerLock:Ljava/lang/Object;

.field private mMagneticFieldVector:[F

.field private mNativePtr:J

.field private final mNativePtrLock:Ljava/lang/Object;

.field private mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

.field private mThread:Ljava/lang/Thread;

.field private mTruncatedRotationVector:[F

.field mUseBackupOrientationSensors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->sSingletonLock:Ljava/lang/Object;

    .line 75
    new-array v0, v2, [Ljava/lang/Integer;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_DEFAULT_SENSORS:Ljava/util/Set;

    .line 78
    new-array v0, v4, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_BACKUP_SENSORS:Ljava/util/Set;

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    .line 85
    new-array v0, v2, [Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_LIGHT_SENSORS:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandlerLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    .line 90
    sget-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_DEFAULT_SENSORS:Ljava/util/Set;

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    .line 91
    iput-boolean v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    .line 92
    iput-boolean v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    .line 93
    iput-boolean v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    .line 94
    iput-boolean v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mUseBackupOrientationSensors:Z

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mAppContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method public static computeDeviceOrientationFromRotationMatrix([F[D)[D
    .locals 9
    .param p0, "matrixR"    # [F
    .param p1, "values"    # [D
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x7

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 325
    array-length v0, p0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-object p1

    .line 327
    :cond_1
    const/16 v0, 0x8

    aget v0, p0, v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 328
    aget v0, p0, v6

    neg-float v0, v0

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 329
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    aput-wide v0, p1, v6

    .line 330
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v2, 0x8

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v8

    .line 355
    :goto_1
    aget-wide v0, p1, v7

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 356
    aget-wide v0, p1, v7

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    aput-wide v0, p1, v7

    goto :goto_0

    .line 331
    :cond_2
    const/16 v0, 0x8

    aget v0, p0, v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    .line 332
    aget v0, p0, v6

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 333
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    neg-double v0, v0

    aput-wide v0, p1, v6

    .line 334
    aget-wide v2, p1, v6

    aget-wide v0, p1, v6

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_3

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    :goto_2
    add-double/2addr v0, v2

    aput-wide v0, p1, v6

    .line 335
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    const/16 v2, 0x8

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v8

    goto :goto_1

    .line 334
    :cond_3
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    goto :goto_2

    .line 337
    :cond_4
    const/4 v0, 0x6

    aget v0, p0, v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    .line 338
    aget v0, p0, v6

    neg-float v0, v0

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 339
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    aput-wide v0, p1, v6

    .line 340
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 341
    :cond_5
    const/4 v0, 0x6

    aget v0, p0, v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_7

    .line 342
    aget v0, p0, v6

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 343
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    neg-double v0, v0

    aput-wide v0, p1, v6

    .line 344
    aget-wide v2, p1, v6

    aget-wide v0, p1, v6

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_6

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    :goto_3
    add-double/2addr v0, v2

    aput-wide v0, p1, v6

    .line 345
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 344
    :cond_6
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    goto :goto_3

    .line 348
    :cond_7
    const/4 v0, 0x3

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v7

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 349
    aget v0, p0, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    :goto_4
    aput-wide v0, p1, v6

    .line 350
    const-wide/16 v0, 0x0

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 349
    :cond_8
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_4
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 514
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 515
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 516
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceMotionAndOrientation"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 517
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 518
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandler:Landroid/os/Handler;

    .line 520
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandler:Landroid/os/Handler;

    monitor-exit v2

    return-object v1

    .line 521
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getInstance(Landroid/content/Context;)Lorg/chromium/content/browser/DeviceSensors;
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 526
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 527
    :try_start_0
    sget-object v0, Lorg/chromium/content/browser/DeviceSensors;->sSingleton:Lorg/chromium/content/browser/DeviceSensors;

    if-nez v0, :cond_0

    .line 528
    new-instance v0, Lorg/chromium/content/browser/DeviceSensors;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/DeviceSensors;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->sSingleton:Lorg/chromium/content/browser/DeviceSensors;

    .line 530
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/DeviceSensors;->sSingleton:Lorg/chromium/content/browser/DeviceSensors;

    monitor-exit v1

    return-object v0

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getOrientationFromGeomagneticVectors([F[F)V
    .locals 9
    .param p1, "acceleration"    # [F
    .param p2, "magnetic"    # [F

    .prologue
    .line 375
    const/16 v0, 0x9

    new-array v7, v0, [F

    .line 376
    .local v7, "deviceRotationMatrix":[F
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    const/4 v0, 0x0

    invoke-static {v7, v0, p1, p2}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const/4 v0, 0x3

    new-array v8, v0, [D

    .line 384
    .local v8, "rotationAngles":[D
    invoke-static {v7, v8}, Lorg/chromium/content/browser/DeviceSensors;->computeDeviceOrientationFromRotationMatrix([F[D)[D

    .line 386
    const/4 v0, 0x0

    aget-wide v0, v8, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    const/4 v0, 0x1

    aget-wide v3, v8, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    const/4 v0, 0x2

    aget-wide v5, v8, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/DeviceSensors;->gotOrientation(DDD)V

    goto :goto_0
.end method

.method private getOrientationFromRotationVector([F)V
    .locals 9
    .param p1, "rotationVector"    # [F

    .prologue
    .line 363
    const/16 v0, 0x9

    new-array v7, v0, [F

    .line 364
    .local v7, "deviceRotationMatrix":[F
    invoke-static {v7, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 366
    const/4 v0, 0x3

    new-array v8, v0, [D

    .line 367
    .local v8, "rotationAngles":[D
    invoke-static {v7, v8}, Lorg/chromium/content/browser/DeviceSensors;->computeDeviceOrientationFromRotationMatrix([F[D)[D

    .line 369
    const/4 v0, 0x0

    aget-wide v0, v8, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    const/4 v0, 0x1

    aget-wide v3, v8, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    const/4 v0, 0x2

    aget-wide v5, v8, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/DeviceSensors;->gotOrientation(DDD)V

    .line 372
    return-void
.end method

.method private getSensorManagerProxy()Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;
    .locals 3

    .prologue
    .line 392
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    .line 403
    :goto_0
    return-object v1

    .line 396
    :cond_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 397
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mAppContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 400
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_1

    .line 401
    new-instance v1, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;

    invoke-direct {v1, v0}, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    .line 403
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    goto :goto_0
.end method

.method private native nativeGotAcceleration(JDDD)V
.end method

.method private native nativeGotAccelerationIncludingGravity(JDDD)V
.end method

.method private native nativeGotLight(JD)V
.end method

.method private native nativeGotOrientation(JDDD)V
.end method

.method private native nativeGotRotationRate(JDDD)V
.end method

.method private registerForSensorType(II)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "rateInMicroseconds"    # I

    .prologue
    .line 463
    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceSensors;->getSensorManagerProxy()Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    move-result-object v0

    .line 464
    .local v0, "sensorManager":Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;
    if-nez v0, :cond_0

    .line 465
    const/4 v1, 0x0

    .line 467
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceSensors;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, p0, p1, p2, v1}, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;->registerListener(Landroid/hardware/SensorEventListener;IILandroid/os/Handler;)Z

    move-result v1

    goto :goto_0
.end method

.method private registerSensors(Ljava/util/Set;IZ)Z
    .locals 6
    .param p2, "rateInMicroseconds"    # I
    .param p3, "failOnMissingSensor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, "sensorTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 435
    .local v3, "sensorsToActivate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 436
    const/4 v4, 0x0

    .line 438
    .local v4, "success":Z
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 439
    .local v2, "sensorType":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, p2}, Lorg/chromium/content/browser/DeviceSensors;->registerForSensorType(II)Z

    move-result v1

    .line 440
    .local v1, "result":Z
    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    .line 442
    invoke-direct {p0, v3}, Lorg/chromium/content/browser/DeviceSensors;->unregisterSensors(Ljava/lang/Iterable;)V

    .line 443
    const/4 v4, 0x0

    .line 450
    .end local v1    # "result":Z
    .end local v2    # "sensorType":Ljava/lang/Integer;
    .end local v4    # "success":Z
    :cond_1
    return v4

    .line 445
    .restart local v1    # "result":Z
    .restart local v2    # "sensorType":Ljava/lang/Integer;
    .restart local v4    # "success":Z
    :cond_2
    if-eqz v1, :cond_0

    .line 446
    iget-object v5, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 447
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private setEventTypeActive(IZ)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "value"    # Z

    .prologue
    .line 412
    packed-switch p1, :pswitch_data_0

    .line 423
    :goto_0
    return-void

    .line 414
    :pswitch_0
    iput-boolean p2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    goto :goto_0

    .line 417
    :pswitch_1
    iput-boolean p2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    goto :goto_0

    .line 420
    :pswitch_2
    iput-boolean p2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    goto :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private unregisterSensors(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p1, "sensorTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 455
    .local v1, "sensorType":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceSensors;->getSensorManagerProxy()Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;->unregisterListener(Landroid/hardware/SensorEventListener;I)V

    .line 457
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 460
    .end local v1    # "sensorType":Ljava/lang/Integer;
    :cond_1
    return-void
.end method


# virtual methods
.method public getNumberActiveDeviceMotionSensors()I
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 148
    .local v0, "deviceMotionSensors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 149
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method protected gotAcceleration(DDD)V
    .locals 10
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 479
    iget-object v9, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v9

    .line 480
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 481
    iget-wide v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotAcceleration(JDDD)V

    .line 483
    :cond_0
    monitor-exit v9

    .line 484
    return-void

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotAccelerationIncludingGravity(DDD)V
    .locals 10
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 487
    iget-object v9, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v9

    .line 488
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 489
    iget-wide v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotAccelerationIncludingGravity(JDDD)V

    .line 491
    :cond_0
    monitor-exit v9

    .line 492
    return-void

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotLight(D)V
    .locals 6
    .param p1, "value"    # D

    .prologue
    .line 503
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v1

    .line 504
    :try_start_0
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 505
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    invoke-direct {p0, v2, v3, p1, p2}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotLight(JD)V

    .line 507
    :cond_0
    monitor-exit v1

    .line 508
    return-void

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotOrientation(DDD)V
    .locals 10
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "gamma"    # D

    .prologue
    .line 471
    iget-object v9, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v9

    .line 472
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 473
    iget-wide v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotOrientation(JDDD)V

    .line 475
    :cond_0
    monitor-exit v9

    .line 476
    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotRotationRate(DDD)V
    .locals 10
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "gamma"    # D

    .prologue
    .line 495
    iget-object v9, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v9

    .line 496
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 497
    iget-wide v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotRotationRate(JDDD)V

    .line 499
    :cond_0
    monitor-exit v9

    .line 500
    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUsingBackupSensorsForOrientation()Z
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 154
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mUseBackupOrientationSensors:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 213
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 217
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/DeviceSensors;->sensorChanged(I[F)V

    .line 218
    return-void
.end method

.method sensorChanged(I[F)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "values"    # [F
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 222
    packed-switch p1, :pswitch_data_0

    .line 276
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 224
    :pswitch_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v0, :cond_1

    .line 225
    aget v0, p2, v2

    float-to-double v1, v0

    aget v0, p2, v3

    float-to-double v3, v0

    aget v0, p2, v5

    float-to-double v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/DeviceSensors;->gotAccelerationIncludingGravity(DDD)V

    .line 227
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mUseBackupOrientationSensors:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    invoke-direct {p0, p2, v0}, Lorg/chromium/content/browser/DeviceSensors;->getOrientationFromGeomagneticVectors([F[F)V

    goto :goto_0

    .line 232
    :pswitch_2
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v0, :cond_0

    .line 233
    aget v0, p2, v2

    float-to-double v1, v0

    aget v0, p2, v3

    float-to-double v3, v0

    aget v0, p2, v5

    float-to-double v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/DeviceSensors;->gotAcceleration(DDD)V

    goto :goto_0

    .line 237
    :pswitch_3
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v0, :cond_0

    .line 238
    aget v0, p2, v2

    float-to-double v1, v0

    aget v0, p2, v3

    float-to-double v3, v0

    aget v0, p2, v5

    float-to-double v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/DeviceSensors;->gotRotationRate(DDD)V

    goto :goto_0

    .line 242
    :pswitch_4
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v0, :cond_0

    .line 243
    array-length v0, p2

    if-le v0, v1, :cond_3

    .line 248
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    if-nez v0, :cond_2

    .line 249
    new-array v0, v1, [F

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    .line 251
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/DeviceSensors;->getOrientationFromRotationVector([F)V

    goto :goto_0

    .line 254
    :cond_3
    invoke-direct {p0, p2}, Lorg/chromium/content/browser/DeviceSensors;->getOrientationFromRotationVector([F)V

    goto :goto_0

    .line 259
    :pswitch_5
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mUseBackupOrientationSensors:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    if-nez v0, :cond_4

    .line 261
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    .line 263
    :cond_4
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 268
    :pswitch_6
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    if-eqz v0, :cond_0

    .line 269
    aget v0, p2, v2

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/DeviceSensors;->gotLight(D)V

    goto/16 :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method setSensorManagerProxy(Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;)V
    .locals 0
    .param p1, "sensorManagerProxy"    # Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 408
    iput-object p1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    .line 409
    return-void
.end method

.method public start(JII)Z
    .locals 6
    .param p1, "nativePtr"    # J
    .param p3, "eventType"    # I
    .param p4, "rateInMicroseconds"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "success":Z
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v2

    .line 115
    packed-switch p3, :pswitch_data_0

    .line 134
    :try_start_0
    const-string v3, "DeviceSensors"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown event type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    monitor-exit v2

    .line 141
    :goto_0
    return v1

    .line 117
    :pswitch_0
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    const/4 v3, 0x1

    invoke-direct {p0, v1, p4, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v0

    .line 119
    if-nez v0, :cond_0

    .line 120
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_BACKUP_SENSORS:Ljava/util/Set;

    iput-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    .line 121
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    const/4 v3, 0x1

    invoke-direct {p0, v1, p4, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v0

    .line 123
    iput-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mUseBackupOrientationSensors:Z

    .line 137
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 138
    iput-wide p1, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    .line 139
    const/4 v1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/chromium/content/browser/DeviceSensors;->setEventTypeActive(IZ)V

    .line 141
    :cond_1
    monitor-exit v2

    move v1, v0

    goto :goto_0

    .line 128
    :pswitch_1
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    const/4 v3, 0x0

    invoke-direct {p0, v1, p4, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v0

    .line 129
    goto :goto_1

    .line 131
    :pswitch_2
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_LIGHT_SENSORS:Ljava/util/Set;

    const/4 v3, 0x1

    invoke-direct {p0, v1, p4, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v0

    .line 132
    goto :goto_1

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public stop(I)V
    .locals 6
    .param p1, "eventType"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 168
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 169
    .local v1, "sensorsToRemainActive":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v3

    .line 170
    packed-switch p1, :pswitch_data_0

    .line 196
    :try_start_0
    const-string v2, "DeviceSensors"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown event type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    monitor-exit v3

    .line 208
    :goto_0
    return-void

    .line 172
    :pswitch_0
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v2, :cond_0

    .line 173
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 175
    :cond_0
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    if-eqz v2, :cond_1

    .line 176
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_LIGHT_SENSORS:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 200
    :cond_1
    :goto_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 201
    .local v0, "sensorsToDeactivate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 202
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/DeviceSensors;->unregisterSensors(Ljava/lang/Iterable;)V

    .line 203
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lorg/chromium/content/browser/DeviceSensors;->setEventTypeActive(IZ)V

    .line 204
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    .line 207
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "sensorsToDeactivate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 180
    :pswitch_1
    :try_start_1
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v2, :cond_3

    .line 181
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 183
    :cond_3
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    if-eqz v2, :cond_1

    .line 184
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_LIGHT_SENSORS:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 188
    :pswitch_2
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v2, :cond_4

    .line 189
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 191
    :cond_4
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
