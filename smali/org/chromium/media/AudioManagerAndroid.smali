.class Lorg/chromium/media/AudioManagerAndroid;
.super Ljava/lang/Object;
.source "AudioManagerAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;,
        Lorg/chromium/media/AudioManagerAndroid$NonThreadSafe;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "media"
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_FRAME_PER_BUFFER:I = 0x100

.field private static final DEFAULT_SAMPLING_RATE:I = 0xac44

.field private static final DEVICE_BLUETOOTH_HEADSET:I = 0x3

.field private static final DEVICE_COUNT:I = 0x4

.field private static final DEVICE_DEFAULT:I = -0x2

.field private static final DEVICE_EARPIECE:I = 0x2

.field private static final DEVICE_INVALID:I = -0x1

.field private static final DEVICE_NAMES:[Ljava/lang/String;

.field private static final DEVICE_SPEAKERPHONE:I = 0x0

.field private static final DEVICE_WIRED_HEADSET:I = 0x1

.field private static final STATE_BLUETOOTH_SCO_INVALID:I = -0x1

.field private static final STATE_BLUETOOTH_SCO_OFF:I = 0x0

.field private static final STATE_BLUETOOTH_SCO_ON:I = 0x1

.field private static final STATE_BLUETOOTH_SCO_TURNING_OFF:I = 0x3

.field private static final STATE_BLUETOOTH_SCO_TURNING_ON:I = 0x2

.field private static final SUPPORTED_AEC_MODELS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AudioManagerAndroid"

.field private static final VALID_DEVICES:[Ljava/lang/Integer;


# instance fields
.field private mAudioDevices:[Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothScoReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothScoState:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentVolume:I

.field private mHasBluetoothPermission:Z

.field private mHasModifyAudioSettingsPermission:Z

.field private mHasRecordAudioPermission:Z

.field private mIsInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private final mNativeAudioManagerAndroid:J

.field private final mNonThreadSafe:Lorg/chromium/media/AudioManagerAndroid$NonThreadSafe;

.field private mRequestedAudioDevice:I

.field private mSavedAudioMode:I

.field private mSavedIsMicrophoneMute:Z

.field private mSavedIsSpeakerphoneOn:Z

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mSettingsObserverThread:Landroid/os/HandlerThread;

.field private mWiredHeadsetReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GT-I9300"

    aput-object v1, v0, v3

    const-string v1, "GT-I9500"

    aput-object v1, v0, v4

    const-string v1, "GT-N7105"

    aput-object v1, v0, v5

    const-string v1, "Nexus 4"

    aput-object v1, v0, v6

    const-string v1, "Nexus 5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Nexus 7"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SM-N9005"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SM-T310"

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/media/AudioManagerAndroid;->SUPPORTED_AEC_MODELS:[Ljava/lang/String;

    .line 136
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Speakerphone"

    aput-object v1, v0, v3

    const-string v1, "Wired headset"

    aput-object v1, v0, v4

    const-string v1, "Headset earpiece"

    aput-object v1, v0, v5

    const-string v1, "Bluetooth headset"

    aput-object v1, v0, v6

    sput-object v0, Lorg/chromium/media/AudioManagerAndroid;->DEVICE_NAMES:[Ljava/lang/String;

    .line 144
    new-array v0, v7, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lorg/chromium/media/AudioManagerAndroid;->VALID_DEVICES:[Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeAudioManagerAndroid"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-boolean v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasModifyAudioSettingsPermission:Z

    .line 175
    iput-boolean v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasRecordAudioPermission:Z

    .line 178
    iput-boolean v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasBluetoothPermission:Z

    .line 180
    const/4 v0, -0x2

    iput v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedAudioMode:I

    .line 185
    iput v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    .line 187
    iput-boolean v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mIsInitialized:Z

    .line 193
    iput v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mRequestedAudioDevice:I

    .line 198
    new-instance v0, Lorg/chromium/media/AudioManagerAndroid$NonThreadSafe;

    invoke-direct {v0}, Lorg/chromium/media/AudioManagerAndroid$NonThreadSafe;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mNonThreadSafe:Lorg/chromium/media/AudioManagerAndroid$NonThreadSafe;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;

    .line 205
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    .line 208
    iput-object v3, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 209
    iput-object v3, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserverThread:Landroid/os/HandlerThread;

    .line 232
    iput-object p1, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    .line 233
    iput-wide p2, p0, Lorg/chromium/media/AudioManagerAndroid;->mNativeAudioManagerAndroid:J

    .line 234
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    .line 235
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContentResolver:Landroid/content/ContentResolver;

    .line 236
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/media/AudioManagerAndroid;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/AudioManagerAndroid;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/media/AudioManagerAndroid;JZ)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/AudioManagerAndroid;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/AudioManagerAndroid;->nativeSetMute(JZ)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/media/AudioManagerAndroid;)[Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/AudioManagerAndroid;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/media/AudioManagerAndroid;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/AudioManagerAndroid;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->hasEarpiece()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Lorg/chromium/media/AudioManagerAndroid;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/media/AudioManagerAndroid;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/AudioManagerAndroid;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->deviceHasBeenRequested()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/chromium/media/AudioManagerAndroid;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/AudioManagerAndroid;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->updateDeviceActivation()V

    return-void
.end method

.method static synthetic access$702(Lorg/chromium/media/AudioManagerAndroid;I)I
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/AudioManagerAndroid;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    return p1
.end method

.method static synthetic access$800(Lorg/chromium/media/AudioManagerAndroid;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/AudioManagerAndroid;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900(Lorg/chromium/media/AudioManagerAndroid;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/media/AudioManagerAndroid;

    .prologue
    .line 36
    iget-wide v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mNativeAudioManagerAndroid:J

    return-wide v0
.end method

.method private checkIfCalledOnValidThread()V
    .locals 0

    .prologue
    .line 553
    return-void
.end method

.method private close()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 288
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->checkIfCalledOnValidThread()V

    .line 290
    iget-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->stopObservingVolumeChanges()V

    .line 294
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->unregisterForWiredHeadsetIntentBroadcast()V

    .line 295
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->unregisterBluetoothIntentsIfNeeded()V

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mIsInitialized:Z

    goto :goto_0
.end method

.method private static createAudioManagerAndroid(Landroid/content/Context;J)Lorg/chromium/media/AudioManagerAndroid;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nativeAudioManagerAndroid"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lorg/chromium/media/AudioManagerAndroid;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/media/AudioManagerAndroid;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method private deviceHasBeenRequested()Z
    .locals 3

    .prologue
    .line 974
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 975
    :try_start_0
    iget v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mRequestedAudioDevice:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 976
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getAudioInputDeviceNames()[Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;
    .locals 9
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 431
    iget-boolean v6, p0, Lorg/chromium/media/AudioManagerAndroid;->mIsInitialized:Z

    if-nez v6, :cond_1

    move-object v1, v7

    .line 455
    :cond_0
    :goto_0
    return-object v1

    .line 433
    :cond_1
    iget-boolean v6, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasModifyAudioSettingsPermission:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasRecordAudioPermission:Z

    if-nez v6, :cond_3

    .line 434
    :cond_2
    const-string v6, "AudioManagerAndroid"

    const-string v8, "Requires MODIFY_AUDIO_SETTINGS and RECORD_AUDIO"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v6, "AudioManagerAndroid"

    const-string v8, "No audio device will be available for recording"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    .line 436
    goto :goto_0

    .line 439
    :cond_3
    const/4 v2, 0x0

    .line 440
    .local v2, "devices":[Z
    iget-object v8, p0, Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 441
    :try_start_0
    iget-object v6, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    invoke-virtual {v6}, [Z->clone()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Z

    move-object v2, v0

    .line 442
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Lorg/chromium/media/AudioManagerAndroid;->getNumOfAudioDevices([Z)I

    move-result v6

    new-array v1, v6, [Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;

    .line 446
    .local v1, "array":[Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;
    const/4 v3, 0x0

    .line 447
    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "id":I
    :goto_1
    const/4 v6, 0x4

    if-ge v4, v6, :cond_0

    .line 448
    aget-boolean v6, v2, v4

    if-eqz v6, :cond_4

    .line 449
    new-instance v6, Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;

    sget-object v8, Lorg/chromium/media/AudioManagerAndroid;->DEVICE_NAMES:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-direct {v6, v4, v8, v7}, Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;-><init>(ILjava/lang/String;Lorg/chromium/media/AudioManagerAndroid$1;)V

    aput-object v6, v1, v3

    .line 450
    sget-object v6, Lorg/chromium/media/AudioManagerAndroid;->DEVICE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    add-int/lit8 v3, v3, 0x1

    .line 447
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 442
    .end local v1    # "array":[Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;
    .end local v3    # "i":I
    .end local v4    # "id":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private getAudioLowLatencyOutputFrameSize()I
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 518
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "framesPerBuffer":Ljava/lang/String;
    if-nez v0, :cond_0

    const/16 v1, 0x100

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private static getMinInputFrameSize(II)I
    .locals 3
    .param p0, "sampleRate"    # I
    .param p1, "channels"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 479
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 480
    const/16 v0, 0x10

    .line 486
    .local v0, "channelConfig":I
    :goto_0
    invoke-static {p0, v0, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/2addr v1, p1

    .end local v0    # "channelConfig":I
    :goto_1
    return v1

    .line 481
    :cond_0
    if-ne p1, v2, :cond_1

    .line 482
    const/16 v0, 0xc

    .restart local v0    # "channelConfig":I
    goto :goto_0

    .line 484
    .end local v0    # "channelConfig":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static getMinOutputFrameSize(II)I
    .locals 3
    .param p0, "sampleRate"    # I
    .param p1, "channels"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 499
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 500
    const/4 v0, 0x4

    .line 506
    .local v0, "channelConfig":I
    :goto_0
    invoke-static {p0, v0, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/2addr v1, p1

    .end local v0    # "channelConfig":I
    :goto_1
    return v1

    .line 501
    :cond_0
    if-ne p1, v2, :cond_1

    .line 502
    const/16 v0, 0xc

    .restart local v0    # "channelConfig":I
    goto :goto_0

    .line 504
    .end local v0    # "channelConfig":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getNativeOutputSampleRate()I
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const v1, 0xac44

    .line 460
    invoke-static {}, Lorg/chromium/media/AudioManagerAndroid;->runningOnJellyBeanMR1OrHigher()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    iget-object v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "sampleRateString":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 466
    .end local v0    # "sampleRateString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 463
    .restart local v0    # "sampleRateString":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private static getNumOfAudioDevices([Z)I
    .locals 3
    .param p0, "devices"    # [Z

    .prologue
    .line 1011
    const/4 v0, 0x0

    .line 1012
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 1013
    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1012
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1015
    :cond_1
    return v0
.end method

.method private hasBluetoothHeadset()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 646
    iget-boolean v5, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasBluetoothPermission:Z

    if-nez v5, :cond_1

    .line 647
    const-string v3, "AudioManagerAndroid"

    const-string v5, "hasBluetoothHeadset() requires BLUETOOTH permission"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_0
    :goto_0
    return v4

    .line 656
    :cond_1
    const/4 v0, 0x0

    .line 657
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-static {}, Lorg/chromium/media/AudioManagerAndroid;->runningOnJellyBeanMR2OrHigher()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 660
    iget-object v5, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    const-string v6, "bluetooth"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    .line 663
    .local v1, "btManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 670
    .end local v1    # "btManager":Landroid/bluetooth/BluetoothManager;
    :goto_1
    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v2

    .line 683
    .local v2, "profileConnectionState":I
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    :goto_2
    move v4, v3

    goto :goto_0

    .line 667
    .end local v2    # "profileConnectionState":I
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    goto :goto_1

    .restart local v2    # "profileConnectionState":I
    :cond_3
    move v3, v4

    .line 683
    goto :goto_2
.end method

.method private hasEarpiece()Z
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 634
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasWiredHeadset()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 4
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 245
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->checkIfCalledOnValidThread()V

    .line 248
    iget-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 253
    :cond_0
    const-string v0, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-direct {p0, v0}, Lorg/chromium/media/AudioManagerAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasModifyAudioSettingsPermission:Z

    .line 258
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-direct {p0, v0}, Lorg/chromium/media/AudioManagerAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasRecordAudioPermission:Z

    .line 265
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    const/4 v1, 0x2

    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->hasEarpiece()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 266
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->hasWiredHeadset()Z

    move-result v1

    aput-boolean v1, v0, v3

    .line 267
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    const/4 v1, 0x0

    aput-boolean v3, v0, v1

    .line 271
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->registerBluetoothIntentsIfNeeded()V

    .line 275
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->registerForWiredHeadsetIntentBroadcast()V

    .line 277
    iput-boolean v3, p0, Lorg/chromium/media/AudioManagerAndroid;->mIsInitialized:Z

    goto :goto_0
.end method

.method private isAudioLowLatencySupported()Z
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.audio.low_latency"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isMicrophoneMute()Z
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    return v0
.end method

.method private logDeviceInfo()V
    .locals 2

    .prologue
    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android SDK: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Release: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Brand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Hardware: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Manufacturer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Product: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->logd(Ljava/lang/String;)V

    .line 1050
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1054
    const-string v0, "AudioManagerAndroid"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1059
    const-string v0, "AudioManagerAndroid"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    return-void
.end method

.method private native nativeSetMute(JZ)V
.end method

.method private registerBluetoothIntentsIfNeeded()V
    .locals 3

    .prologue
    .line 561
    const-string v0, "android.permission.BLUETOOTH"

    invoke-direct {p0, v0}, Lorg/chromium/media/AudioManagerAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasBluetoothPermission:Z

    .line 570
    iget-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasBluetoothPermission:Z

    if-nez v0, :cond_0

    .line 571
    const-string v0, "AudioManagerAndroid"

    const-string v1, "Requires BLUETOOTH permission"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    const/4 v1, 0x3

    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->hasBluetoothHeadset()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 578
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->registerForBluetoothHeadsetIntentBroadcast()V

    .line 579
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->registerForBluetoothScoIntentBroadcast()V

    goto :goto_0
.end method

.method private registerForBluetoothHeadsetIntentBroadcast()V
    .locals 3

    .prologue
    .line 765
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 769
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lorg/chromium/media/AudioManagerAndroid$2;

    invoke-direct {v1, p0}, Lorg/chromium/media/AudioManagerAndroid$2;-><init>(Lorg/chromium/media/AudioManagerAndroid;)V

    iput-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 821
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 822
    return-void
.end method

.method private registerForBluetoothScoIntentBroadcast()V
    .locals 3

    .prologue
    .line 834
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 838
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lorg/chromium/media/AudioManagerAndroid$3;

    invoke-direct {v1, p0}, Lorg/chromium/media/AudioManagerAndroid$3;-><init>(Lorg/chromium/media/AudioManagerAndroid;)V

    iput-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoReceiver:Landroid/content/BroadcastReceiver;

    .line 869
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 870
    return-void
.end method

.method private registerForWiredHeadsetIntentBroadcast()V
    .locals 3

    .prologue
    .line 693
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 696
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lorg/chromium/media/AudioManagerAndroid$1;

    invoke-direct {v1, p0}, Lorg/chromium/media/AudioManagerAndroid$1;-><init>(Lorg/chromium/media/AudioManagerAndroid;)V

    iput-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mWiredHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 749
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mWiredHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 750
    return-void
.end method

.method private reportUpdate()V
    .locals 4

    .prologue
    .line 1025
    iget-object v3, p0, Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1026
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 1028
    iget-object v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 1029
    sget-object v2, Lorg/chromium/media/AudioManagerAndroid;->DEVICE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1036
    :cond_1
    monitor-exit v3

    .line 1037
    return-void

    .line 1036
    .end local v0    # "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static runningOnJellyBeanMR1OrHigher()Z
    .locals 2

    .prologue
    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static runningOnJellyBeanMR2OrHigher()Z
    .locals 2

    .prologue
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static runningOnJellyBeanOrHigher()Z
    .locals 2

    .prologue
    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static selectDefaultDevice([Z)I
    .locals 3
    .param p0, "devices"    # [Z

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x1

    .line 962
    aget-boolean v2, p0, v0

    if-eqz v2, :cond_0

    .line 969
    :goto_0
    return v0

    .line 964
    :cond_0
    aget-boolean v0, p0, v1

    if-eqz v0, :cond_1

    move v0, v1

    .line 967
    goto :goto_0

    .line 969
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAudioDevice(I)V
    .locals 2
    .param p1, "device"    # I

    .prologue
    const/4 v1, 0x0

    .line 931
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 932
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->startBluetoothSco()V

    .line 937
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 950
    const-string v0, "Invalid audio device selection"

    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->loge(Ljava/lang/String;)V

    .line 953
    :goto_1
    :pswitch_0
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->reportUpdate()V

    .line 954
    return-void

    .line 934
    :cond_0
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->stopBluetoothSco()V

    goto :goto_0

    .line 941
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/media/AudioManagerAndroid;->setSpeakerphoneOn(Z)V

    goto :goto_1

    .line 944
    :pswitch_2
    invoke-direct {p0, v1}, Lorg/chromium/media/AudioManagerAndroid;->setSpeakerphoneOn(Z)V

    goto :goto_1

    .line 947
    :pswitch_3
    invoke-direct {p0, v1}, Lorg/chromium/media/AudioManagerAndroid;->setSpeakerphoneOn(Z)V

    goto :goto_1

    .line 937
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private setCommunicationAudioModeOn(Z)V
    .locals 4
    .param p1, "on"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v3, -0x2

    .line 312
    iget-boolean v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasModifyAudioSettingsPermission:Z

    if-nez v1, :cond_0

    .line 313
    const-string v1, "AudioManagerAndroid"

    const-string v2, "MODIFY_AUDIO_SETTINGS is missing => client will run with reduced functionality"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :goto_0
    return-void

    .line 318
    :cond_0
    if-eqz p1, :cond_2

    .line 319
    iget v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedAudioMode:I

    if-eq v1, v3, :cond_1

    .line 320
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Audio mode has already been set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    iput v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedAudioMode:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedIsSpeakerphoneOn:Z

    .line 336
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedIsMicrophoneMute:Z

    .line 339
    :try_start_1
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 350
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->startObservingVolumeChanges()V

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->logDeviceInfo()V

    .line 329
    throw v0

    .line 340
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 341
    .restart local v0    # "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->logDeviceInfo()V

    .line 342
    throw v0

    .line 353
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2
    iget v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedAudioMode:I

    if-ne v1, v3, :cond_3

    .line 354
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Audio mode has not yet been set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    :cond_3
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->stopObservingVolumeChanges()V

    .line 360
    iget-boolean v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedIsMicrophoneMute:Z

    invoke-direct {p0, v1}, Lorg/chromium/media/AudioManagerAndroid;->setMicrophoneMute(Z)V

    .line 361
    iget-boolean v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedIsSpeakerphoneOn:Z

    invoke-direct {p0, v1}, Lorg/chromium/media/AudioManagerAndroid;->setSpeakerphoneOn(Z)V

    .line 366
    :try_start_2
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedAudioMode:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 371
    iput v3, p0, Lorg/chromium/media/AudioManagerAndroid;->mSavedAudioMode:I

    goto :goto_0

    .line 367
    :catch_2
    move-exception v0

    .line 368
    .restart local v0    # "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->logDeviceInfo()V

    .line 369
    throw v0
.end method

.method private setDevice(Ljava/lang/String;)Z
    .locals 9
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x2

    .line 387
    iget-boolean v8, p0, Lorg/chromium/media/AudioManagerAndroid;->mIsInitialized:Z

    if-nez v8, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v5

    .line 389
    :cond_1
    iget-boolean v8, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasModifyAudioSettingsPermission:Z

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasRecordAudioPermission:Z

    if-nez v8, :cond_3

    .line 390
    :cond_2
    const-string v6, "AudioManagerAndroid"

    const-string v7, "Requires MODIFY_AUDIO_SETTINGS and RECORD_AUDIO"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v6, "AudioManagerAndroid"

    const-string v7, "Selected device will not be available for recording"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    move v3, v7

    .line 397
    .local v3, "intDeviceId":I
    :goto_1
    if-ne v3, v7, :cond_5

    .line 398
    const/4 v2, 0x0

    .line 399
    .local v2, "devices":[Z
    iget-object v7, p0, Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 400
    :try_start_0
    iget-object v5, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    invoke-virtual {v5}, [Z->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Z

    move-object v2, v0

    .line 401
    const/4 v5, -0x2

    iput v5, p0, Lorg/chromium/media/AudioManagerAndroid;->mRequestedAudioDevice:I

    .line 402
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    invoke-static {v2}, Lorg/chromium/media/AudioManagerAndroid;->selectDefaultDevice([Z)I

    move-result v1

    .line 404
    .local v1, "defaultDevice":I
    invoke-direct {p0, v1}, Lorg/chromium/media/AudioManagerAndroid;->setAudioDevice(I)V

    move v5, v6

    .line 405
    goto :goto_0

    .line 395
    .end local v1    # "defaultDevice":I
    .end local v2    # "devices":[Z
    .end local v3    # "intDeviceId":I
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 402
    .restart local v2    # "devices":[Z
    .restart local v3    # "intDeviceId":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 410
    .end local v2    # "devices":[Z
    :cond_5
    sget-object v7, Lorg/chromium/media/AudioManagerAndroid;->VALID_DEVICES:[Ljava/lang/Integer;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 411
    .local v4, "validIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    aget-boolean v7, v7, v3

    if-eqz v7, :cond_0

    .line 414
    iget-object v7, p0, Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 415
    :try_start_2
    iput v3, p0, Lorg/chromium/media/AudioManagerAndroid;->mRequestedAudioDevice:I

    .line 416
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 417
    invoke-direct {p0, v3}, Lorg/chromium/media/AudioManagerAndroid;->setAudioDevice(I)V

    move v5, v6

    .line 418
    goto :goto_0

    .line 416
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method

.method private setMicrophoneMute(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 602
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    .line 603
    .local v0, "wasMuted":Z
    if-ne v0, p1, :cond_0

    .line 607
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    goto :goto_0
.end method

.method private setSpeakerphoneOn(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 593
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    .line 594
    .local v0, "wasOn":Z
    if-ne v0, p1, :cond_0

    .line 598
    :goto_0
    return-void

    .line 597
    :cond_0
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method private static shouldUseAcousticEchoCanceler()Z
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 527
    invoke-static {}, Lorg/chromium/media/AudioManagerAndroid;->runningOnJellyBeanOrHigher()Z

    move-result v2

    if-nez v2, :cond_1

    .line 542
    .local v0, "supportedModels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return v1

    .line 532
    .end local v0    # "supportedModels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-object v2, Lorg/chromium/media/AudioManagerAndroid;->SUPPORTED_AEC_MODELS:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 533
    .restart local v0    # "supportedModels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 542
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v1

    goto :goto_0
.end method

.method private startBluetoothSco()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 879
    iget-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasBluetoothPermission:Z

    if-nez v0, :cond_1

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    iget v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    if-eq v0, v2, :cond_0

    .line 890
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 891
    iput v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    goto :goto_0

    .line 896
    :cond_2
    iput v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    .line 897
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    goto :goto_0
.end method

.method private startObservingVolumeChanges()V
    .locals 4

    .prologue
    .line 1065
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserverThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 1096
    :goto_0
    return-void

    .line 1067
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SettingsObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserverThread:Landroid/os/HandlerThread;

    .line 1068
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserverThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1070
    new-instance v0, Lorg/chromium/media/AudioManagerAndroid$4;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserverThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lorg/chromium/media/AudioManagerAndroid$4;-><init>(Lorg/chromium/media/AudioManagerAndroid;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 1094
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private stopBluetoothSco()V
    .locals 2

    .prologue
    .line 902
    iget-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasBluetoothPermission:Z

    if-nez v0, :cond_1

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    iget v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 910
    :cond_2
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 912
    const-string v0, "Unable to stop BT SCO since it is already disabled"

    invoke-static {v0}, Lorg/chromium/media/AudioManagerAndroid;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 917
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoState:I

    .line 918
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    goto :goto_0
.end method

.method private stopObservingVolumeChanges()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1101
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserverThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 1114
    :goto_0
    return-void

    .line 1104
    :cond_0
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1105
    iput-object v3, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 1107
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserverThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 1109
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserverThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    :goto_1
    iput-object v3, p0, Lorg/chromium/media/AudioManagerAndroid;->mSettingsObserverThread:Landroid/os/HandlerThread;

    goto :goto_0

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "AudioManagerAndroid"

    const-string v2, "Thread.join() exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private unregisterBluetoothIntentsIfNeeded()V
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mHasBluetoothPermission:Z

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 586
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->unregisterForBluetoothHeadsetIntentBroadcast()V

    .line 587
    invoke-direct {p0}, Lorg/chromium/media/AudioManagerAndroid;->unregisterForBluetoothScoIntentBroadcast()V

    .line 589
    :cond_0
    return-void
.end method

.method private unregisterForBluetoothHeadsetIntentBroadcast()V
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 827
    return-void
.end method

.method private unregisterForBluetoothScoIntentBroadcast()V
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 874
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mBluetoothScoReceiver:Landroid/content/BroadcastReceiver;

    .line 875
    return-void
.end method

.method private unregisterForWiredHeadsetIntentBroadcast()V
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid;->mWiredHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 755
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid;->mWiredHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 756
    return-void
.end method

.method private updateDeviceActivation()V
    .locals 6

    .prologue
    .line 985
    const/4 v2, 0x0

    .line 986
    .local v2, "devices":[Z
    const/4 v3, -0x1

    .line 987
    .local v3, "requested":I
    iget-object v5, p0, Lorg/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 988
    :try_start_0
    iget v3, p0, Lorg/chromium/media/AudioManagerAndroid;->mRequestedAudioDevice:I

    .line 989
    iget-object v4, p0, Lorg/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z

    invoke-virtual {v4}, [Z->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Z

    move-object v2, v0

    .line 990
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 992
    const-string v4, "Unable to activate device since no device is selected"

    invoke-static {v4}, Lorg/chromium/media/AudioManagerAndroid;->loge(Ljava/lang/String;)V

    .line 1007
    :goto_0
    return-void

    .line 990
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 998
    :cond_0
    const/4 v4, -0x2

    if-eq v3, v4, :cond_1

    aget-boolean v4, v2, v3

    if-nez v4, :cond_2

    .line 1000
    :cond_1
    invoke-static {v2}, Lorg/chromium/media/AudioManagerAndroid;->selectDefaultDevice([Z)I

    move-result v1

    .line 1001
    .local v1, "defaultDevice":I
    invoke-direct {p0, v1}, Lorg/chromium/media/AudioManagerAndroid;->setAudioDevice(I)V

    goto :goto_0

    .line 1005
    .end local v1    # "defaultDevice":I
    :cond_2
    invoke-direct {p0, v3}, Lorg/chromium/media/AudioManagerAndroid;->setAudioDevice(I)V

    goto :goto_0
.end method
