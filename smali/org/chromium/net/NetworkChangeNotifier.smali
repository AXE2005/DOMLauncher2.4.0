.class public Lorg/chromium/net/NetworkChangeNotifier;
.super Ljava/lang/Object;
.source "NetworkChangeNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "net"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sInstance:Lorg/chromium/net/NetworkChangeNotifier;


# instance fields
.field private mAutoDetector:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

.field private final mConnectionTypeObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList",
            "<",
            "Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentConnectionType:I

.field private mCurrentMaxBandwidth:D

.field private final mNativeChangeNotifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/chromium/net/NetworkChangeNotifier;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/net/NetworkChangeNotifier;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->mCurrentConnectionType:I

    .line 41
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->mCurrentMaxBandwidth:D

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->mNativeChangeNotifiers:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->mConnectionTypeObservers:Lorg/chromium/base/ObserverList;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/net/NetworkChangeNotifier;I)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/net/NetworkChangeNotifier;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifier;->updateCurrentConnectionType(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/net/NetworkChangeNotifier;D)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/net/NetworkChangeNotifier;
    .param p1, "x1"    # D

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lorg/chromium/net/NetworkChangeNotifier;->updateCurrentMaxBandwidth(D)V

    return-void
.end method

.method public static addConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V
    .locals 1
    .param p0, "observer"    # Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    .prologue
    .line 227
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->getInstance()Lorg/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/chromium/net/NetworkChangeNotifier;->addConnectionTypeObserverInternal(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    .line 228
    return-void
.end method

.method private addConnectionTypeObserverInternal(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    .prologue
    .line 231
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->mConnectionTypeObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method private destroyAutoDetector()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->mAutoDetector:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->mAutoDetector:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->destroy()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->mAutoDetector:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    .line 128
    :cond_0
    return-void
.end method

.method public static forceConnectivityState(Z)V
    .locals 1
    .param p0, "networkAvailable"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityState(Z)V

    .line 178
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->getInstance()Lorg/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/chromium/net/NetworkChangeNotifier;->forceConnectivityStateInternal(Z)V

    .line 179
    return-void
.end method

.method private forceConnectivityStateInternal(Z)V
    .locals 4
    .param p1, "forceOnline"    # Z

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 182
    iget v3, p0, Lorg/chromium/net/NetworkChangeNotifier;->mCurrentConnectionType:I

    if-eq v3, v2, :cond_1

    const/4 v0, 0x1

    .line 184
    .local v0, "connectionCurrentlyExists":Z
    :goto_0
    if-eq v0, p1, :cond_0

    .line 185
    if-eqz p1, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lorg/chromium/net/NetworkChangeNotifier;->updateCurrentConnectionType(I)V

    .line 187
    if-eqz p1, :cond_3

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_2
    invoke-direct {p0, v1, v2}, Lorg/chromium/net/NetworkChangeNotifier;->updateCurrentMaxBandwidth(D)V

    .line 189
    :cond_0
    return-void

    .end local v0    # "connectionCurrentlyExists":Z
    :cond_1
    move v0, v1

    .line 182
    goto :goto_0

    .restart local v0    # "connectionCurrentlyExists":Z
    :cond_2
    move v1, v2

    .line 185
    goto :goto_1

    .line 187
    :cond_3
    const-wide/16 v1, 0x0

    goto :goto_2
.end method

.method public static getAutoDetectorForTest()Lorg/chromium/net/NetworkChangeNotifierAutoDetect;
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->getInstance()Lorg/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/net/NetworkChangeNotifier;->mAutoDetector:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    return-object v0
.end method

.method public static getInstance()Lorg/chromium/net/NetworkChangeNotifier;
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lorg/chromium/net/NetworkChangeNotifier;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->sInstance:Lorg/chromium/net/NetworkChangeNotifier;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 108
    :cond_0
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->sInstance:Lorg/chromium/net/NetworkChangeNotifier;

    return-object v0
.end method

.method public static getMaxBandwidthForConnectionSubtype(I)D
    .locals 2
    .param p0, "subtype"    # I

    .prologue
    .line 84
    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->nativeGetMaxBandwidthForConnectionSubtype(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static init(Landroid/content/Context;)Lorg/chromium/net/NetworkChangeNotifier;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->sInstance:Lorg/chromium/net/NetworkChangeNotifier;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lorg/chromium/net/NetworkChangeNotifier;

    invoke-direct {v0, p0}, Lorg/chromium/net/NetworkChangeNotifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/net/NetworkChangeNotifier;->sInstance:Lorg/chromium/net/NetworkChangeNotifier;

    .line 59
    :cond_0
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->sInstance:Lorg/chromium/net/NetworkChangeNotifier;

    return-object v0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/chromium/net/NetworkChangeNotifier;->sInstance:Lorg/chromium/net/NetworkChangeNotifier;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnline()Z
    .locals 2

    .prologue
    .line 262
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->getInstance()Lorg/chromium/net/NetworkChangeNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/net/NetworkChangeNotifier;->getCurrentConnectionType()I

    move-result v0

    .line 263
    .local v0, "connectionType":I
    if-eqz v0, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static native nativeGetMaxBandwidthForConnectionSubtype(I)D
.end method

.method private native nativeNotifyConnectionTypeChanged(JI)V
    .annotation runtime Lorg/chromium/base/NativeClassQualifiedName;
        value = "NetworkChangeNotifierDelegateAndroid"
    .end annotation
.end method

.method private native nativeNotifyMaxBandwidthChanged(JD)V
    .annotation runtime Lorg/chromium/base/NativeClassQualifiedName;
        value = "NetworkChangeNotifierDelegateAndroid"
    .end annotation
.end method

.method public static registerToReceiveNotificationsAlways()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 139
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->getInstance()Lorg/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-direct {v0, v1, v1}, Lorg/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityStateInternal(ZZ)V

    .line 140
    return-void
.end method

.method public static removeConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V
    .locals 1
    .param p0, "observer"    # Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    .prologue
    .line 238
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->getInstance()Lorg/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/chromium/net/NetworkChangeNotifier;->removeConnectionTypeObserverInternal(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    .line 239
    return-void
.end method

.method private removeConnectionTypeObserverInternal(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    .prologue
    .line 242
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->mConnectionTypeObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method

.method static resetInstanceForTests(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    new-instance v0, Lorg/chromium/net/NetworkChangeNotifier;

    invoke-direct {v0, p0}, Lorg/chromium/net/NetworkChangeNotifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/net/NetworkChangeNotifier;->sInstance:Lorg/chromium/net/NetworkChangeNotifier;

    .line 68
    return-void
.end method

.method public static setAutoDetectConnectivityState(Z)V
    .locals 2
    .param p0, "shouldAutoDetect"    # Z

    .prologue
    .line 120
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->getInstance()Lorg/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityStateInternal(ZZ)V

    .line 121
    return-void
.end method

.method private setAutoDetectConnectivityStateInternal(ZZ)V
    .locals 4
    .param p1, "shouldAutoDetect"    # Z
    .param p2, "alwaysWatchForChanges"    # Z

    .prologue
    .line 144
    if-eqz p1, :cond_1

    .line 145
    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifier;->mAutoDetector:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    if-nez v1, :cond_0

    .line 146
    new-instance v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    new-instance v2, Lorg/chromium/net/NetworkChangeNotifier$1;

    invoke-direct {v2, p0}, Lorg/chromium/net/NetworkChangeNotifier$1;-><init>(Lorg/chromium/net/NetworkChangeNotifier;)V

    iget-object v3, p0, Lorg/chromium/net/NetworkChangeNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, p2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;Landroid/content/Context;Z)V

    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifier;->mAutoDetector:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    .line 159
    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifier;->mAutoDetector:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v0

    .line 161
    .local v0, "networkState":Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifier;->mAutoDetector:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v1, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/chromium/net/NetworkChangeNotifier;->updateCurrentConnectionType(I)V

    .line 162
    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifier;->mAutoDetector:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v1, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentMaxBandwidthInMbps(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lorg/chromium/net/NetworkChangeNotifier;->updateCurrentMaxBandwidth(D)V

    .line 167
    .end local v0    # "networkState":Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-direct {p0}, Lorg/chromium/net/NetworkChangeNotifier;->destroyAutoDetector()V

    goto :goto_0
.end method

.method private updateCurrentConnectionType(I)V
    .locals 0
    .param p1, "newConnectionType"    # I

    .prologue
    .line 192
    iput p1, p0, Lorg/chromium/net/NetworkChangeNotifier;->mCurrentConnectionType:I

    .line 193
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifier;->notifyObserversOfConnectionTypeChange(I)V

    .line 194
    return-void
.end method

.method private updateCurrentMaxBandwidth(D)V
    .locals 2
    .param p1, "maxBandwidthMbps"    # D

    .prologue
    .line 197
    iget-wide v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->mCurrentMaxBandwidth:D

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iput-wide p1, p0, Lorg/chromium/net/NetworkChangeNotifier;->mCurrentMaxBandwidth:D

    .line 199
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/NetworkChangeNotifier;->notifyObserversOfMaxBandwidthChange(D)V

    goto :goto_0
.end method


# virtual methods
.method public addNativeObserver(J)V
    .locals 2
    .param p1, "nativeChangeNotifier"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->mNativeChangeNotifiers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public getCurrentConnectionType()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 72
    iget v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->mCurrentConnectionType:I

    return v0
.end method

.method public getCurrentMaxBandwidthInMbps()D
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->mCurrentMaxBandwidth:D

    return-wide v0
.end method

.method notifyObserversOfConnectionTypeChange(I)V
    .locals 5
    .param p1, "newConnectionType"    # I

    .prologue
    .line 206
    iget-object v3, p0, Lorg/chromium/net/NetworkChangeNotifier;->mNativeChangeNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 207
    .local v1, "nativeChangeNotifier":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, p1}, Lorg/chromium/net/NetworkChangeNotifier;->nativeNotifyConnectionTypeChanged(JI)V

    goto :goto_0

    .line 209
    .end local v1    # "nativeChangeNotifier":Ljava/lang/Long;
    :cond_0
    iget-object v3, p0, Lorg/chromium/net/NetworkChangeNotifier;->mConnectionTypeObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v3}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    .line 210
    .local v2, "observer":Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;
    invoke-interface {v2, p1}, Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;->onConnectionTypeChanged(I)V

    goto :goto_1

    .line 212
    .end local v2    # "observer":Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;
    :cond_1
    return-void
.end method

.method notifyObserversOfMaxBandwidthChange(D)V
    .locals 4
    .param p1, "maxBandwidthMbps"    # D

    .prologue
    .line 218
    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifier;->mNativeChangeNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 219
    .local v1, "nativeChangeNotifier":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p1, p2}, Lorg/chromium/net/NetworkChangeNotifier;->nativeNotifyMaxBandwidthChanged(JD)V

    goto :goto_0

    .line 221
    .end local v1    # "nativeChangeNotifier":Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method public removeNativeObserver(J)V
    .locals 2
    .param p1, "nativeChangeNotifier"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifier;->mNativeChangeNotifiers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method
