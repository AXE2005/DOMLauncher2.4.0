.class Lorg/chromium/device/battery/BatteryStatusManager;
.super Ljava/lang/Object;
.source "BatteryStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BatteryStatusManager"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

.field private mEnabled:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mIgnoreBatteryPresentState:Z

.field private mLollipopBatteryManager:Landroid/os/BatteryManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

    .prologue
    .line 62
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Galaxy Nexus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/os/BatteryManager;

    invoke-direct {v0}, Landroid/os/BatteryManager;-><init>()V

    :goto_0
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/chromium/device/battery/BatteryStatusManager;-><init>(Landroid/content/Context;Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;ZLandroid/os/BatteryManager;)V

    .line 65
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;ZLandroid/os/BatteryManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;
    .param p3, "ignoreBatteryPresentState"    # Z
    .param p4, "batteryManager"    # Landroid/os/BatteryManager;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mFilter:Landroid/content/IntentFilter;

    .line 35
    new-instance v0, Lorg/chromium/device/battery/BatteryStatusManager$1;

    invoke-direct {v0, p0}, Lorg/chromium/device/battery/BatteryStatusManager$1;-><init>(Lorg/chromium/device/battery/BatteryStatusManager;)V

    iput-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAppContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

    .line 55
    iput-boolean p3, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mIgnoreBatteryPresentState:Z

    .line 56
    iput-object p4, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mLollipopBatteryManager:Landroid/os/BatteryManager;

    .line 57
    return-void
.end method

.method static createBatteryStatusManagerForTesting(Landroid/content/Context;Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;Landroid/os/BatteryManager;)Lorg/chromium/device/battery/BatteryStatusManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;
    .param p2, "batteryManager"    # Landroid/os/BatteryManager;

    .prologue
    .line 75
    new-instance v0, Lorg/chromium/device/battery/BatteryStatusManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/chromium/device/battery/BatteryStatusManager;-><init>(Landroid/content/Context;Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;ZLandroid/os/BatteryManager;)V

    return-object v0
.end method


# virtual methods
.method onReceive(Landroid/content/Intent;)V
    .locals 31
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v27

    const-string v28, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_0

    .line 103
    const-string v27, "BatteryStatusManager"

    const-string v28, "Unexpected intent."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    return-void

    .line 107
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/chromium/device/battery/BatteryStatusManager;->mIgnoreBatteryPresentState:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    const/16 v23, 0x1

    .line 110
    .local v23, "present":Z
    :goto_1
    const-string v27, "plugged"

    const/16 v28, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 112
    .local v22, "pluggedStatus":I
    if-eqz v23, :cond_1

    const/16 v27, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 114
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/device/battery/BatteryStatusManager;->mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

    move-object/from16 v27, v0

    new-instance v28, Lorg/chromium/mojom/device/BatteryStatus;

    invoke-direct/range {v28 .. v28}, Lorg/chromium/mojom/device/BatteryStatus;-><init>()V

    invoke-interface/range {v27 .. v28}, Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;->onBatteryStatusChanged(Lorg/chromium/mojom/device/BatteryStatus;)V

    goto :goto_0

    .line 107
    .end local v22    # "pluggedStatus":I
    .end local v23    # "present":Z
    :cond_2
    const-string v27, "present"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    goto :goto_1

    .line 118
    .restart local v22    # "pluggedStatus":I
    .restart local v23    # "present":Z
    :cond_3
    const-string v27, "level"

    const/16 v28, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 119
    .local v14, "current":I
    const-string v27, "scale"

    const/16 v28, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 120
    .local v21, "max":I
    int-to-double v0, v14

    move-wide/from16 v27, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v29, v0

    div-double v19, v27, v29

    .line 121
    .local v19, "level":D
    const-wide/16 v27, 0x0

    cmpg-double v27, v19, v27

    if-ltz v27, :cond_4

    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    cmpl-double v27, v19, v27

    if-lez v27, :cond_5

    .line 123
    :cond_4
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 130
    :cond_5
    if-eqz v22, :cond_7

    const/4 v11, 0x1

    .line 131
    .local v11, "charging":Z
    :goto_2
    const-string v27, "status"

    const/16 v28, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 132
    .local v26, "status":I
    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    const/4 v7, 0x1

    .line 133
    .local v7, "batteryFull":Z
    :goto_3
    if-eqz v11, :cond_9

    if-eqz v7, :cond_9

    const-wide/16 v12, 0x0

    .line 134
    .local v12, "chargingTimeSeconds":D
    :goto_4
    const-wide/high16 v17, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 136
    .local v17, "dischargingTimeSeconds":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/device/battery/BatteryStatusManager;->mLollipopBatteryManager:Landroid/os/BatteryManager;

    move-object/from16 v27, v0

    if-eqz v27, :cond_6

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/device/battery/BatteryStatusManager;->mLollipopBatteryManager:Landroid/os/BatteryManager;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide/high16 v29, 0x4059000000000000L    # 100.0

    div-double v24, v27, v29

    .line 140
    .local v24, "remainingCapacityRatio":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/device/battery/BatteryStatusManager;->mLollipopBatteryManager:Landroid/os/BatteryManager;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v27

    move/from16 v0, v27

    int-to-double v5, v0

    .line 142
    .local v5, "batteryCapacityMicroAh":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/device/battery/BatteryStatusManager;->mLollipopBatteryManager:Landroid/os/BatteryManager;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v27

    move/from16 v0, v27

    int-to-double v3, v0

    .line 145
    .local v3, "averageCurrentMicroA":D
    if-eqz v11, :cond_a

    .line 146
    const-wide/high16 v27, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v27, v12, v27

    if-nez v27, :cond_6

    const-wide/16 v27, 0x0

    cmpl-double v27, v3, v27

    if-lez v27, :cond_6

    .line 147
    div-double v9, v5, v3

    .line 148
    .local v9, "chargeFromEmptyHours":D
    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    sub-double v27, v27, v24

    mul-double v27, v27, v9

    const-wide v29, 0x40ac200000000000L    # 3600.0

    mul-double v27, v27, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    .line 160
    .end local v3    # "averageCurrentMicroA":D
    .end local v5    # "batteryCapacityMicroAh":D
    .end local v9    # "chargeFromEmptyHours":D
    .end local v24    # "remainingCapacityRatio":D
    :cond_6
    :goto_5
    new-instance v8, Lorg/chromium/mojom/device/BatteryStatus;

    invoke-direct {v8}, Lorg/chromium/mojom/device/BatteryStatus;-><init>()V

    .line 161
    .local v8, "batteryStatus":Lorg/chromium/mojom/device/BatteryStatus;
    iput-boolean v11, v8, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    .line 162
    iput-wide v12, v8, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    .line 163
    move-wide/from16 v0, v17

    iput-wide v0, v8, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    .line 164
    move-wide/from16 v0, v19

    iput-wide v0, v8, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/device/battery/BatteryStatusManager;->mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;->onBatteryStatusChanged(Lorg/chromium/mojom/device/BatteryStatus;)V

    goto/16 :goto_0

    .line 130
    .end local v7    # "batteryFull":Z
    .end local v8    # "batteryStatus":Lorg/chromium/mojom/device/BatteryStatus;
    .end local v11    # "charging":Z
    .end local v12    # "chargingTimeSeconds":D
    .end local v17    # "dischargingTimeSeconds":D
    .end local v26    # "status":I
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 132
    .restart local v11    # "charging":Z
    .restart local v26    # "status":I
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 133
    .restart local v7    # "batteryFull":Z
    :cond_9
    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto/16 :goto_4

    .line 152
    .restart local v3    # "averageCurrentMicroA":D
    .restart local v5    # "batteryCapacityMicroAh":D
    .restart local v12    # "chargingTimeSeconds":D
    .restart local v17    # "dischargingTimeSeconds":D
    .restart local v24    # "remainingCapacityRatio":D
    :cond_a
    const-wide/16 v27, 0x0

    cmpg-double v27, v3, v27

    if-gez v27, :cond_6

    .line 153
    neg-double v0, v3

    move-wide/from16 v27, v0

    div-double v15, v5, v27

    .line 154
    .local v15, "dischargeFromFullHours":D
    mul-double v27, v24, v15

    const-wide v29, 0x40ac200000000000L    # 3600.0

    mul-double v27, v27, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->floor(D)D

    move-result-wide v17

    goto :goto_5
.end method

.method start()Z
    .locals 3

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    .line 87
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    return v0
.end method

.method stop()V
    .locals 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    .line 98
    :cond_0
    return-void
.end method
