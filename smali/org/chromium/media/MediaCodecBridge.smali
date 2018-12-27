.class Lorg/chromium/media/MediaCodecBridge;
.super Ljava/lang/Object;
.source "MediaCodecBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/MediaCodecBridge$1;,
        Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;,
        Lorg/chromium/media/MediaCodecBridge$CodecInfo;,
        Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "media"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final MAX_ADAPTIVE_PLAYBACK_HEIGHT:I = 0x438

.field private static final MAX_ADAPTIVE_PLAYBACK_WIDTH:I = 0x780

.field private static final MAX_PRESENTATION_TIMESTAMP_SHIFT_US:J = 0x186a0L

.field private static final MEDIA_CODEC_ABORT:I = 0x8

.field private static final MEDIA_CODEC_DECODER:I = 0x0

.field private static final MEDIA_CODEC_DEQUEUE_INPUT_AGAIN_LATER:I = 0x1

.field private static final MEDIA_CODEC_DEQUEUE_OUTPUT_AGAIN_LATER:I = 0x2

.field private static final MEDIA_CODEC_ENCODER:I = 0x1

.field private static final MEDIA_CODEC_ERROR:I = 0x9

.field private static final MEDIA_CODEC_INPUT_END_OF_STREAM:I = 0x5

.field private static final MEDIA_CODEC_NO_KEY:I = 0x7

.field private static final MEDIA_CODEC_OK:I = 0x0

.field private static final MEDIA_CODEC_OUTPUT_BUFFERS_CHANGED:I = 0x3

.field private static final MEDIA_CODEC_OUTPUT_END_OF_STREAM:I = 0x6

.field private static final MEDIA_CODEC_OUTPUT_FORMAT_CHANGED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MediaCodecBridge"


# instance fields
.field private mAdaptivePlaybackSupported:Z

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mFlushed:Z

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mLastPresentationTimeUs:J

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMime:Ljava/lang/String;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/chromium/media/MediaCodecBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/media/MediaCodec;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "adaptivePlaybackSupported"    # Z

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    sget-boolean v0, Lorg/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 300
    :cond_0
    iput-object p1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    .line 301
    iput-object p2, p0, Lorg/chromium/media/MediaCodecBridge;->mMime:Ljava/lang/String;

    .line 302
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mFlushed:Z

    .line 304
    iput-boolean p3, p0, Lorg/chromium/media/MediaCodecBridge;->mAdaptivePlaybackSupported:Z

    .line 305
    return-void
.end method

.method private static codecSupportsAdaptivePlayback(Landroid/media/MediaCodec;Ljava/lang/String;)Z
    .locals 6
    .param p0, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p1, "mime"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 640
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_0

    if-nez p0, :cond_1

    .line 654
    :cond_0
    :goto_0
    return v3

    .line 644
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 645
    .local v2, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    .line 648
    invoke-virtual {v2, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 649
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    if-eqz v0, :cond_0

    const-string v4, "adaptive-playback"

    invoke-virtual {v0, v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 651
    .end local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v2    # "info":Landroid/media/MediaCodecInfo;
    :catch_0
    move-exception v1

    .line 652
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "MediaCodecBridge"

    const-string v5, "Cannot retrieve codec information"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private configureAudio(Landroid/media/MediaFormat;Landroid/media/MediaCrypto;IZ)Z
    .locals 11
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "crypto"    # Landroid/media/MediaCrypto;
    .param p3, "flags"    # I
    .param p4, "playAudio"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 691
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 692
    if-eqz p4, :cond_0

    .line 693
    const-string v0, "sample-rate"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 694
    .local v2, "sampleRate":I
    const-string v0, "channel-count"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    .line 695
    .local v7, "channelCount":I
    invoke-direct {p0, v7}, Lorg/chromium/media/MediaCodecBridge;->getAudioFormat(I)I

    move-result v3

    .line 698
    .local v3, "channelConfig":I
    const/4 v0, 0x2

    invoke-static {v2, v3, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 700
    .local v5, "minBufferSize":I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    .line 702
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 703
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v9

    .line 711
    .end local v2    # "sampleRate":I
    .end local v3    # "channelConfig":I
    .end local v5    # "minBufferSize":I
    .end local v7    # "channelCount":I
    :goto_0
    return v0

    :cond_0
    move v0, v10

    .line 707
    goto :goto_0

    .line 708
    :catch_0
    move-exception v8

    .line 709
    .local v8, "e":Ljava/lang/IllegalStateException;
    const-string v0, "MediaCodecBridge"

    const-string v1, "Cannot configure the audio codec"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v9

    .line 711
    goto :goto_0
.end method

.method private configureVideo(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)Z
    .locals 3
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "crypto"    # Landroid/media/MediaCrypto;
    .param p4, "flags"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 599
    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAdaptivePlaybackSupported:Z

    if-eqz v1, :cond_0

    .line 600
    const-string v1, "max-width"

    const/16 v2, 0x780

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 601
    const-string v1, "max-height"

    const/16 v2, 0x438

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 603
    :cond_0
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    const/4 v1, 0x1

    .line 608
    :goto_0
    return v1

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "MediaCodecBridge"

    const-string v2, "Cannot configure the video codec"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 608
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static create(Ljava/lang/String;ZI)Lorg/chromium/media/MediaCodecBridge;
    .locals 9
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "isSecure"    # Z
    .param p2, "direction"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 311
    if-eqz p1, :cond_1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-ge v6, v7, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-object v5

    .line 314
    :cond_1
    const/4 v4, 0x0

    .line 315
    .local v4, "mediaCodec":Landroid/media/MediaCodec;
    const/4 v0, 0x0

    .line 318
    .local v0, "adaptivePlaybackSupported":Z
    :try_start_0
    const-string v6, "video"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 319
    invoke-static {p0}, Lorg/chromium/media/MediaCodecBridge;->getDecoderNameForMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "decoderName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 323
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_2

    .line 327
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    .line 328
    .local v3, "insecureCodec":Landroid/media/MediaCodec;
    invoke-static {v3, p0}, Lorg/chromium/media/MediaCodecBridge;->codecSupportsAdaptivePlayback(Landroid/media/MediaCodec;Ljava/lang/String;)Z

    move-result v0

    .line 329
    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 331
    .end local v3    # "insecureCodec":Landroid/media/MediaCodec;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".secure"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 345
    .end local v1    # "decoderName":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_0

    .line 348
    new-instance v5, Lorg/chromium/media/MediaCodecBridge;

    invoke-direct {v5, v4, p0, v0}, Lorg/chromium/media/MediaCodecBridge;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;Z)V

    goto :goto_0

    .line 333
    :cond_3
    const/4 v6, 0x1

    if-ne p2, v6, :cond_4

    .line 334
    :try_start_1
    invoke-static {p0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    goto :goto_1

    .line 336
    :cond_4
    invoke-static {p0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    .line 337
    invoke-static {v4, p0}, Lorg/chromium/media/MediaCodecBridge;->codecSupportsAdaptivePlayback(Landroid/media/MediaCodec;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    .line 340
    :catch_0
    move-exception v2

    .line 341
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "MediaCodecBridge"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to create MediaCodec: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isSecure: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", direction: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .locals 1
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "sampleRate"    # I
    .param p2, "channelCount"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 613
    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoDecoderFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;
    .locals 1
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 618
    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoEncoderFormat(Ljava/lang/String;IIIIII)Landroid/media/MediaFormat;
    .locals 2
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitRate"    # I
    .param p4, "frameRate"    # I
    .param p5, "iFrameInterval"    # I
    .param p6, "colorFormat"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 624
    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 625
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v1, "bitrate"

    invoke-virtual {v0, v1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 626
    const-string v1, "frame-rate"

    invoke-virtual {v0, v1, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 627
    const-string v1, "i-frame-interval"

    invoke-virtual {v0, v1, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 628
    const-string v1, "color-format"

    invoke-virtual {v0, v1, p6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 629
    return-object v0
.end method

.method private dequeueInputBuffer(J)Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;
    .locals 7
    .param p1, "timeoutUs"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 384
    const/16 v3, 0x9

    .line 385
    .local v3, "status":I
    const/4 v1, -0x1

    .line 387
    .local v1, "index":I
    :try_start_0
    iget-object v4, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 388
    .local v2, "indexOrStatus":I
    if-ltz v2, :cond_1

    .line 389
    const/4 v3, 0x0

    .line 390
    move v1, v2

    .line 401
    .end local v2    # "indexOrStatus":I
    :cond_0
    :goto_0
    new-instance v4, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v1, v5}, Lorg/chromium/media/MediaCodecBridge$DequeueInputResult;-><init>(IILorg/chromium/media/MediaCodecBridge$1;)V

    return-object v4

    .line 391
    .restart local v2    # "indexOrStatus":I
    :cond_1
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 392
    :try_start_1
    const-string v4, "MediaCodecBridge"

    const-string v5, "dequeueInputBuffer: MediaCodec.INFO_TRY_AGAIN_LATER"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v3, 0x1

    goto :goto_0

    .line 395
    :cond_2
    const-string v4, "MediaCodecBridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected index_or_status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    sget-boolean v4, Lorg/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 398
    .end local v2    # "indexOrStatus":I
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MediaCodecBridge"

    const-string v5, "Failed to dequeue input buffer"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private dequeueOutputBuffer(J)Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;
    .locals 16
    .param p1, "timeoutUs"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 553
    new-instance v13, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v13}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 554
    .local v13, "info":Landroid/media/MediaCodec$BufferInfo;
    const/16 v3, 0x9

    .line 555
    .local v3, "status":I
    const/4 v4, -0x1

    .line 557
    .local v4, "index":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v13, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v12

    .line 558
    .local v12, "indexOrStatus":I
    iget-wide v5, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J

    cmp-long v2, v5, v7

    if-gez v2, :cond_0

    .line 562
    move-object/from16 v0, p0

    iget-wide v5, v0, Lorg/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J

    iput-wide v5, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 564
    :cond_0
    iget-wide v5, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iput-wide v5, v0, Lorg/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    if-ltz v12, :cond_2

    .line 567
    const/4 v3, 0x0

    .line 568
    move v4, v12

    .line 591
    .end local v12    # "indexOrStatus":I
    :cond_1
    :goto_0
    new-instance v2, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;

    iget v5, v13, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget v6, v13, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-wide v7, v13, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v9, v13, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lorg/chromium/media/MediaCodecBridge$DequeueOutputResult;-><init>(IIIIJILorg/chromium/media/MediaCodecBridge$1;)V

    return-object v2

    .line 569
    .restart local v12    # "indexOrStatus":I
    :cond_2
    const/4 v2, -0x3

    if-ne v12, v2, :cond_3

    .line 570
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/chromium/media/MediaCodecBridge;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 571
    const/4 v3, 0x3

    goto :goto_0

    .line 572
    :cond_3
    const/4 v2, -0x2

    if-ne v12, v2, :cond_4

    .line 573
    const/4 v3, 0x4

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v14

    .line 575
    .local v14, "newFormat":Landroid/media/MediaFormat;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_1

    const-string v2, "sample-rate"

    invoke-virtual {v14, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 576
    const-string v2, "sample-rate"

    invoke-virtual {v14, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v15

    .line 577
    .local v15, "newSampleRate":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2, v15}, Landroid/media/AudioTrack;->setPlaybackRate(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 578
    const/16 v3, 0x9

    goto :goto_0

    .line 581
    .end local v14    # "newFormat":Landroid/media/MediaFormat;
    .end local v15    # "newSampleRate":I
    :cond_4
    const/4 v2, -0x1

    if-ne v12, v2, :cond_5

    .line 582
    const/4 v3, 0x2

    goto :goto_0

    .line 584
    :cond_5
    const-string v2, "MediaCodecBridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected index_or_status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    sget-boolean v2, Lorg/chromium/media/MediaCodecBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 587
    .end local v12    # "indexOrStatus":I
    :catch_0
    move-exception v11

    .line 588
    .local v11, "e":Ljava/lang/IllegalStateException;
    const-string v2, "MediaCodecBridge"

    const-string v5, "Failed to dequeue output buffer"

    invoke-static {v2, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private flush()I
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 407
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/chromium/media/MediaCodecBridge;->mFlushed:Z

    .line 408
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    .line 411
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V

    .line 413
    :cond_0
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->flush()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "MediaCodecBridge"

    const-string v2, "Failed to flush MediaCodec"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    const/16 v1, 0x9

    goto :goto_0
.end method

.method private getAudioFormat(I)I
    .locals 1
    .param p1, "channelCount"    # I

    .prologue
    .line 763
    packed-switch p1, :pswitch_data_0

    .line 775
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 765
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 767
    :pswitch_2
    const/16 v0, 0xc

    goto :goto_0

    .line 769
    :pswitch_3
    const/16 v0, 0xcc

    goto :goto_0

    .line 771
    :pswitch_4
    const/16 v0, 0xfc

    goto :goto_0

    .line 773
    :pswitch_5
    const/16 v0, 0x3fc

    goto :goto_0

    .line 763
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static getCodecsInfo()[Lorg/chromium/media/MediaCodecBridge$CodecInfo;
    .locals 15
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 188
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v5, "encoderInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/chromium/media/MediaCodecBridge$CodecInfo;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v3, "decoderInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/chromium/media/MediaCodecBridge$CodecInfo;>;"
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    .line 191
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_4

    .line 192
    invoke-static {v6}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v7

    .line 193
    .local v7, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v4, 0x1

    .line 195
    .local v4, "direction":I
    :goto_1
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "codecString":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v10

    .line 197
    .local v10, "supportedTypes":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    array-length v11, v10

    if-ge v8, v11, :cond_3

    .line 198
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v9, v5

    .line 199
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/chromium/media/MediaCodecBridge$CodecInfo;>;"
    :goto_3
    aget-object v11, v10, v8

    invoke-interface {v9, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 200
    aget-object v11, v10, v8

    new-instance v12, Lorg/chromium/media/MediaCodecBridge$CodecInfo;

    aget-object v13, v10, v8

    const/4 v14, 0x0

    invoke-direct {v12, v13, v1, v4, v14}, Lorg/chromium/media/MediaCodecBridge$CodecInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/chromium/media/MediaCodecBridge$1;)V

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 193
    .end local v1    # "codecString":Ljava/lang/String;
    .end local v4    # "direction":I
    .end local v8    # "j":I
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/chromium/media/MediaCodecBridge$CodecInfo;>;"
    .end local v10    # "supportedTypes":[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .restart local v1    # "codecString":Ljava/lang/String;
    .restart local v4    # "direction":I
    .restart local v8    # "j":I
    .restart local v10    # "supportedTypes":[Ljava/lang/String;
    :cond_2
    move-object v9, v3

    .line 198
    goto :goto_3

    .line 191
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 205
    .end local v1    # "codecString":Ljava/lang/String;
    .end local v4    # "direction":I
    .end local v7    # "info":Landroid/media/MediaCodecInfo;
    .end local v8    # "j":I
    .end local v10    # "supportedTypes":[Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v11

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .local v0, "codecInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/chromium/media/MediaCodecBridge$CodecInfo;>;"
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 208
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 209
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lorg/chromium/media/MediaCodecBridge$CodecInfo;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/chromium/media/MediaCodecBridge$CodecInfo;

    return-object v11
.end method

.method private static getDecoderNameForMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "mime"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    .line 280
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 281
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 282
    .local v2, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 280
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, "supportedTypes":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 288
    aget-object v5, v4, v3

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 289
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 294
    .end local v2    # "info":Landroid/media/MediaCodecInfo;
    .end local v3    # "j":I
    .end local v4    # "supportedTypes":[Ljava/lang/String;
    :goto_2
    return-object v5

    .line 287
    .restart local v2    # "info":Landroid/media/MediaCodecInfo;
    .restart local v3    # "j":I
    .restart local v4    # "supportedTypes":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 294
    .end local v2    # "info":Landroid/media/MediaCodecInfo;
    .end local v3    # "j":I
    .end local v4    # "supportedTypes":[Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private static getDefaultCodecName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "direction"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 218
    const-string v0, ""

    .line 219
    .local v0, "codecName":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    .line 221
    const/4 v2, 0x0

    .line 222
    .local v2, "mediaCodec":Landroid/media/MediaCodec;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 223
    :try_start_0
    invoke-static {p0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    .line 227
    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 234
    .end local v2    # "mediaCodec":Landroid/media/MediaCodec;
    :cond_0
    :goto_1
    return-object v0

    .line 225
    .restart local v2    # "mediaCodec":Landroid/media/MediaCodec;
    :cond_1
    invoke-static {p0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MediaCodecBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultCodecName: Failed to create MediaCodec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", direction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static getEncoderColorFormatsForMime(Ljava/lang/String;)[I
    .locals 11
    .param p0, "mime"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, "codecs":[Landroid/media/MediaCodecInfo;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_2

    .line 244
    new-instance v6, Landroid/media/MediaCodecList;

    const/4 v9, 0x1

    invoke-direct {v6, v9}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 245
    .local v6, "mediaCodecList":Landroid/media/MediaCodecList;
    invoke-virtual {v6}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 258
    .end local v6    # "mediaCodecList":Landroid/media/MediaCodecList;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v1

    if-ge v3, v9, :cond_3

    .line 259
    aget-object v9, v1, v3

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v9

    if-nez v9, :cond_5

    .line 258
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    .end local v3    # "i":I
    :cond_2
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    .line 248
    .local v2, "count":I
    if-gtz v2, :cond_4

    .line 274
    .end local v2    # "count":I
    :cond_3
    :goto_1
    return-object v8

    .line 251
    .restart local v2    # "count":I
    :cond_4
    new-array v1, v2, [Landroid/media/MediaCodecInfo;

    .line 252
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_0

    .line 253
    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 254
    .local v4, "info":Landroid/media/MediaCodecInfo;
    aput-object v4, v1, v3

    .line 252
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 263
    .end local v2    # "count":I
    .end local v4    # "info":Landroid/media/MediaCodecInfo;
    :cond_5
    aget-object v9, v1, v3

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    .line 264
    .local v7, "supportedTypes":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    array-length v9, v7

    if-ge v5, v9, :cond_1

    .line 265
    aget-object v9, v7, v5

    invoke-virtual {v9, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 264
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 269
    :cond_6
    aget-object v8, v1, v3

    invoke-virtual {v8, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 271
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    iget-object v8, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    goto :goto_1
.end method

.method private getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 458
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 459
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 461
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 466
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 467
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 469
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private getOutputBuffersCapacity()I
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 479
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getOutputBuffersCount()I
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getOutputHeight()I
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 436
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 437
    .local v0, "format":Landroid/media/MediaFormat;
    invoke-direct {p0, v0}, Lorg/chromium/media/MediaCodecBridge;->outputFormatHasCropValues(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "crop-bottom"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "crop-top"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private getOutputSamplingRate()I
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 452
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 453
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v1, "sample-rate"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getOutputWidth()I
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 444
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 445
    .local v0, "format":Landroid/media/MediaFormat;
    invoke-direct {p0, v0}, Lorg/chromium/media/MediaCodecBridge;->outputFormatHasCropValues(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "crop-right"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "crop-left"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private isAdaptivePlaybackSupported(II)Z
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 634
    iget-boolean v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAdaptivePlaybackSupported:Z

    if-nez v1, :cond_1

    .line 636
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x780

    if-gt p1, v1, :cond_0

    const/16 v1, 0x438

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private outputFormatHasCropValues(Landroid/media/MediaFormat;)Z
    .locals 1
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 430
    const-string v0, "crop-right"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crop-left"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crop-bottom"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crop-top"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playOutputBuffer([B)J
    .locals 4
    .param p1, "buf"    # [B
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 723
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_0

    .line 724
    const-wide/16 v1, 0x0

    .line 743
    :goto_0
    return-wide v1

    .line 727
    :cond_0
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 728
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 730
    :cond_1
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    .line 731
    .local v0, "size":I
    array-length v1, p1

    if-eq v1, v0, :cond_2

    .line 732
    const-string v1, "MediaCodecBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send all data to audio output, expected size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_2
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0
.end method

.method private queueInputBuffer(IIIJI)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "presentationTimeUs"    # J
    .param p6, "flags"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 485
    invoke-direct {p0, p4, p5}, Lorg/chromium/media/MediaCodecBridge;->resetLastPresentationTimeIfNeeded(J)V

    .line 487
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 488
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    .line 490
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 491
    :catch_0
    move-exception v7

    .line 492
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "MediaCodecBridge"

    const-string v1, "Failed to queue input buffer"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private queueSecureInputBuffer(II[B[B[I[IIJ)I
    .locals 11
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "iv"    # [B
    .param p4, "keyId"    # [B
    .param p5, "numBytesOfClearData"    # [I
    .param p6, "numBytesOfEncryptedData"    # [I
    .param p7, "numSubSamples"    # I
    .param p8, "presentationTimeUs"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 516
    move-wide/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lorg/chromium/media/MediaCodecBridge;->resetLastPresentationTimeIfNeeded(J)V

    .line 518
    :try_start_0
    new-instance v2, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    .line 519
    .local v2, "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    const/4 v8, 0x1

    move/from16 v3, p7

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object v6, p4

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec$CryptoInfo;->set(I[I[I[B[BI)V

    .line 521
    iget-object v3, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    move v4, p1

    move v5, p2

    move-object v6, v2

    move-wide/from16 v7, p8

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 534
    const/4 v3, 0x0

    .end local v2    # "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    :goto_0
    return v3

    .line 522
    :catch_0
    move-exception v10

    .line 523
    .local v10, "e":Landroid/media/MediaCodec$CryptoException;
    const-string v3, "MediaCodecBridge"

    const-string v4, "Failed to queue secure input buffer"

    invoke-static {v3, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    invoke-virtual {v10}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 525
    const-string v3, "MediaCodecBridge"

    const-string v4, "MediaCodec.CryptoException.ERROR_NO_KEY"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v3, 0x7

    goto :goto_0

    .line 528
    :cond_0
    const-string v3, "MediaCodecBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaCodec.CryptoException with error code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/16 v3, 0x9

    goto :goto_0

    .line 530
    .end local v10    # "e":Landroid/media/MediaCodec$CryptoException;
    :catch_1
    move-exception v10

    .line 531
    .local v10, "e":Ljava/lang/IllegalStateException;
    const-string v3, "MediaCodecBridge"

    const-string v4, "Failed to queue secure input buffer"

    invoke-static {v3, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    const/16 v3, 0x9

    goto :goto_0
.end method

.method private release()V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 354
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    .line 361
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 364
    :cond_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "MediaCodecBridge"

    const-string v2, "Cannot release media codec"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private releaseOutputBuffer(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "render"    # Z
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 540
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_0

    .line 541
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 543
    :cond_0
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "MediaCodecBridge"

    const-string v2, "Failed to release output buffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private requestKeyFrameSoon()V
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 507
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 508
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "request-sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 509
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 510
    return-void
.end method

.method private resetLastPresentationTimeIfNeeded(J)V
    .locals 4
    .param p1, "presentationTimeUs"    # J

    .prologue
    .line 755
    iget-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mFlushed:Z

    if-eqz v0, :cond_0

    .line 756
    const-wide/32 v0, 0x186a0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/media/MediaCodecBridge;->mLastPresentationTimeUs:J

    .line 758
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/media/MediaCodecBridge;->mFlushed:Z

    .line 760
    :cond_0
    return-void
.end method

.method private static setCodecSpecificData(Landroid/media/MediaFormat;I[B)V
    .locals 2
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "index"    # I
    .param p2, "bytes"    # [B
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 663
    packed-switch p1, :pswitch_data_0

    .line 674
    const/4 v0, 0x0

    .line 677
    .local v0, "name":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 678
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 680
    :cond_0
    return-void

    .line 665
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_0
    const-string v0, "csd-0"

    .line 666
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 668
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_1
    const-string v0, "csd-1"

    .line 669
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 671
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_2
    const-string v0, "csd-2"

    .line 672
    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 663
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static setFrameHasADTSHeader(Landroid/media/MediaFormat;)V
    .locals 2
    .param p0, "format"    # Landroid/media/MediaFormat;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 684
    const-string v0, "is-adts"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 685
    return-void
.end method

.method private setVideoBitrate(I)V
    .locals 2
    .param p1, "bps"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 500
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 501
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "video-bitrate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 502
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 503
    return-void
.end method

.method private setVolume(D)V
    .locals 3
    .param p1, "volume"    # D
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 749
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    double-to-float v1, p1

    double-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 752
    :cond_0
    return-void
.end method

.method private start()Z
    .locals 3
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 370
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 371
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_0

    .line 372
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 373
    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/media/MediaCodecBridge;->mOutputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "MediaCodecBridge"

    const-string v2, "Cannot start the media codec"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private stop()V
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 423
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 424
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 427
    :cond_0
    return-void
.end method
