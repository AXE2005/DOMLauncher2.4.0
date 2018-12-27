.class public Lorg/chromium/net/NetworkChangeNotifierAutoDetect;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeNotifierAutoDetect.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;,
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;,
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;,
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;,
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkChangeNotifierAutoDetect"

.field private static final UNKNOWN_LINK_SPEED:I = -0x1


# instance fields
.field private mConnectionType:I

.field private mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

.field private mMaxBandwidthMbps:D

.field private final mObserver:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

.field private mRegistered:Z

.field private mWifiManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

.field private mWifiSSID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;Landroid/content/Context;Z)V
    .locals 3
    .param p1, "observer"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "alwaysWatchForChanges"    # Z

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 169
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    .line 170
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mContext:Landroid/content/Context;

    .line 171
    new-instance v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-direct {v1, p2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    .line 172
    new-instance v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    invoke-direct {v1, p2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    .line 173
    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v0

    .line 174
    .local v0, "networkState":Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    invoke-virtual {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v1

    iput v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    .line 175
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentWifiSSID(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiSSID:Ljava/lang/String;

    .line 176
    invoke-virtual {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentMaxBandwidthInMbps(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)D

    move-result-wide v1

    iput-wide v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mMaxBandwidthMbps:D

    .line 177
    new-instance v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    invoke-virtual {v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->getHasWifiPermission()Z

    move-result v2

    invoke-direct {v1, v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;-><init>(Z)V

    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mIntentFilter:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    .line 180
    if-eqz p3, :cond_0

    .line 181
    invoke-direct {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->registerReceiver()V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->registerApplicationStateListener(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    goto :goto_0
.end method

.method private connectionTypeChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V
    .locals 5
    .param p1, "networkState"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v0

    .line 374
    .local v0, "newConnectionType":I
    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentWifiSSID(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "newWifiSSID":Ljava/lang/String;
    iget v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    :goto_0
    return-void

    .line 377
    :cond_0
    iput v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    .line 378
    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiSSID:Ljava/lang/String;

    .line 379
    const-string v2, "NetworkChangeNotifierAutoDetect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network connectivity changed, type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    invoke-interface {v2, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onConnectionTypeChanged(I)V

    goto :goto_0
.end method

.method private getCurrentConnectionSubtype(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I
    .locals 2
    .param p1, "networkState"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .prologue
    const/16 v0, 0x1e

    .line 291
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    const/16 v0, 0x1f

    .line 338
    :goto_0
    :pswitch_0
    return v0

    .line 295
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 303
    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkSubType()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 305
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 307
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 309
    :pswitch_5
    const/4 v0, 0x2

    goto :goto_0

    .line 311
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    .line 313
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_0

    .line 315
    :pswitch_8
    const/4 v0, 0x6

    goto :goto_0

    .line 317
    :pswitch_9
    const/4 v0, 0x7

    goto :goto_0

    .line 319
    :pswitch_a
    const/16 v0, 0x8

    goto :goto_0

    .line 321
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 323
    :pswitch_c
    const/16 v0, 0xc

    goto :goto_0

    .line 325
    :pswitch_d
    const/16 v0, 0x9

    goto :goto_0

    .line 327
    :pswitch_e
    const/16 v0, 0xa

    goto :goto_0

    .line 329
    :pswitch_f
    const/16 v0, 0xd

    goto :goto_0

    .line 331
    :pswitch_10
    const/16 v0, 0xe

    goto :goto_0

    .line 333
    :pswitch_11
    const/16 v0, 0xf

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 303
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_7
        :pswitch_e
        :pswitch_11
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private getCurrentWifiSSID(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)Ljava/lang/String;
    .locals 2
    .param p1, "networkState"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, ""

    .line 344
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->getWifiSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private maxBandwidthChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V
    .locals 4
    .param p1, "networkState"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentMaxBandwidthInMbps(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)D

    move-result-wide v0

    .line 385
    .local v0, "newMaxBandwidthMbps":D
    iget-wide v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mMaxBandwidthMbps:D

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    iput-wide v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mMaxBandwidthMbps:D

    .line 387
    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    invoke-interface {v2, v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onMaxBandwidthChanged(D)V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 209
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    .line 211
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mIntentFilter:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    .line 221
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->unregisterReceiver()V

    .line 203
    return-void
.end method

.method public getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I
    .locals 3
    .param p1, "networkState"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 230
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    const/4 v0, 0x6

    .line 268
    :goto_0
    :pswitch_0
    return v0

    .line 234
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    move v0, v1

    .line 268
    goto :goto_0

    .line 236
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 238
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 242
    :pswitch_4
    const/4 v0, 0x7

    goto :goto_0

    .line 245
    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkSubType()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    move v0, v1

    .line 265
    goto :goto_0

    .line 251
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    .line 261
    :pswitch_7
    const/4 v0, 0x4

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 245
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public getCurrentMaxBandwidthInMbps(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)D
    .locals 3
    .param p1, "networkState"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 280
    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    invoke-virtual {v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->getLinkSpeedInMbps()I

    move-result v0

    .line 281
    .local v0, "link_speed":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 282
    int-to-double v1, v0

    .line 286
    .end local v0    # "link_speed":I
    :goto_0
    return-wide v1

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionSubtype(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)I

    move-result v1

    invoke-static {v1}, Lorg/chromium/net/NetworkChangeNotifier;->getMaxBandwidthForConnectionSubtype(I)D

    move-result-wide v1

    goto :goto_0
.end method

.method public getCurrentNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public onApplicationStateChange(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 362
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v0

    .line 363
    .local v0, "networkState":Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 364
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->connectionTypeChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    .line 365
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->maxBandwidthChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    .line 366
    invoke-direct {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->registerReceiver()V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 368
    invoke-direct {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->unregisterReceiver()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 350
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v0

    .line 351
    .local v0, "networkState":Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->connectionTypeChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    .line 353
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->maxBandwidthChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->maxBandwidthChanged(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;)V

    goto :goto_0
.end method

.method setConnectivityManagerDelegateForTests(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    .prologue
    .line 191
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    .line 192
    return-void
.end method

.method setWifiManagerDelegateForTests(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    .prologue
    .line 198
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    .line 199
    return-void
.end method
