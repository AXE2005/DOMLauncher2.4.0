.class Lorg/chromium/media/WebAudioMediaCodecBridge;
.super Ljava/lang/Object;
.source "WebAudioMediaCodecBridge.java"


# annotations
.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "media"
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "WebAudioMediaCodec"

.field static final TIMEOUT_MICROSECONDS:J = 0x1f4L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createTempFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 30
    .local v0, "outputDirectory":Ljava/io/File;
    const-string v2, "webaudio"

    const-string v3, ".dat"

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 31
    .local v1, "outputFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static decodeAudioFile(Landroid/content/Context;JIJ)Z
    .locals 33
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "nativeMediaCodecBridge"    # J
    .param p3, "inputFD"    # I
    .param p4, "dataSize"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 41
    const-wide/16 v8, 0x0

    cmp-long v4, p4, v8

    if-ltz v4, :cond_0

    const-wide/32 v8, 0x7fffffff

    cmp-long v4, p4, v8

    if-lez v4, :cond_1

    .line 42
    :cond_0
    const/4 v4, 0x0

    .line 197
    :goto_0
    return v4

    .line 44
    :cond_1
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 47
    .local v1, "extractor":Landroid/media/MediaExtractor;
    invoke-static/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v25

    .line 49
    .local v25, "encodedFD":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    if-gtz v4, :cond_2

    .line 57
    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 58
    const/4 v4, 0x0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v24

    .line 51
    .local v24, "e":Ljava/lang/Exception;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 53
    const/4 v4, 0x0

    goto :goto_0

    .line 61
    .end local v24    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v26

    .line 64
    .local v26, "format":Landroid/media/MediaFormat;
    const-string v4, "channel-count"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    .line 69
    .local v10, "inputChannelCount":I
    move/from16 v19, v10

    .line 71
    .local v19, "outputChannelCount":I
    const-string v4, "sample-rate"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    .line 72
    .local v11, "sampleRate":I
    const-string v4, "mime"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 74
    .local v28, "mime":Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 75
    .local v12, "durationMicroseconds":J
    const-string v4, "durationUs"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    :try_start_1
    const-string v4, "durationUs"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v12

    .line 87
    :cond_3
    :goto_1
    const-wide/32 v8, 0x7fffffff

    cmp-long v4, v12, v8

    if-lez v4, :cond_4

    .line 88
    const-wide/16 v12, 0x0

    .line 91
    :cond_4
    const-string v4, "WebAudioMediaCodec"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Initial: Tracks: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Format: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :try_start_2
    invoke-static/range {v28 .. v28}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 103
    .local v2, "codec":Landroid/media/MediaCodec;
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v4, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 104
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 106
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 107
    .local v20, "codecInputBuffers":[Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 110
    .local v21, "codecOutputBuffers":[Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 112
    const/16 v31, 0x0

    .line 113
    .local v31, "sawInputEOS":Z
    const/16 v32, 0x0

    .line 114
    .local v32, "sawOutputEOS":Z
    const/16 v22, 0x0

    .line 117
    .local v22, "destinationInitialized":Z
    :cond_5
    :goto_2
    if-nez v32, :cond_d

    .line 118
    if-nez v31, :cond_6

    .line 120
    const-wide/16 v8, 0x1f4

    invoke-virtual {v2, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 122
    .local v3, "inputBufIndex":I
    if-ltz v3, :cond_6

    .line 123
    aget-object v23, v20, v3

    .line 124
    .local v23, "dstBuf":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v1, v0, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 125
    .local v5, "sampleSize":I
    const-wide/16 v6, 0x0

    .line 127
    .local v6, "presentationTimeMicroSec":J
    if-gez v5, :cond_9

    .line 128
    const/16 v31, 0x1

    .line 129
    const/4 v5, 0x0

    .line 134
    :goto_3
    const/4 v4, 0x0

    if-eqz v31, :cond_a

    const/4 v8, 0x4

    :goto_4
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 140
    if-nez v31, :cond_6

    .line 141
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    .line 147
    .end local v3    # "inputBufIndex":I
    .end local v5    # "sampleSize":I
    .end local v6    # "presentationTimeMicroSec":J
    .end local v23    # "dstBuf":Ljava/nio/ByteBuffer;
    :cond_6
    new-instance v27, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v27 .. v27}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 148
    .local v27, "info":Landroid/media/MediaCodec$BufferInfo;
    const-wide/16 v8, 0x1f4

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v30

    .line 150
    .local v30, "outputBufIndex":I
    if-ltz v30, :cond_b

    .line 151
    aget-object v16, v21, v30

    .line 153
    .local v16, "buf":Ljava/nio/ByteBuffer;
    if-nez v22, :cond_7

    .line 158
    const-string v4, "WebAudioMediaCodec"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Final:  Rate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Channels: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Mime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Duration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " microsec"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v8, p1

    .line 163
    invoke-static/range {v8 .. v13}, Lorg/chromium/media/WebAudioMediaCodecBridge;->nativeInitializeDestination(JIIJ)V

    .line 167
    const/16 v22, 0x1

    .line 170
    :cond_7
    if-eqz v22, :cond_8

    move-object/from16 v0, v27

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v4, :cond_8

    .line 171
    move-object/from16 v0, v27

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v17, v0

    move-wide/from16 v14, p1

    move/from16 v18, v10

    invoke-static/range {v14 .. v19}, Lorg/chromium/media/WebAudioMediaCodecBridge;->nativeOnChunkDecoded(JLjava/nio/ByteBuffer;III)V

    .line 175
    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 176
    const/4 v4, 0x0

    move/from16 v0, v30

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 178
    move-object/from16 v0, v27

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_5

    .line 179
    const/16 v32, 0x1

    goto/16 :goto_2

    .line 78
    .end local v2    # "codec":Landroid/media/MediaCodec;
    .end local v16    # "buf":Ljava/nio/ByteBuffer;
    .end local v20    # "codecInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v21    # "codecOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v22    # "destinationInitialized":Z
    .end local v27    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v30    # "outputBufIndex":I
    .end local v31    # "sawInputEOS":Z
    .end local v32    # "sawOutputEOS":Z
    :catch_1
    move-exception v24

    .line 79
    .restart local v24    # "e":Ljava/lang/Exception;
    const-string v4, "WebAudioMediaCodec"

    const-string v8, "Cannot get duration"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 97
    .end local v24    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v24

    .line 98
    .restart local v24    # "e":Ljava/lang/Exception;
    const-string v4, "WebAudioMediaCodec"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to create MediaCodec for mime type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 100
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 131
    .end local v24    # "e":Ljava/lang/Exception;
    .restart local v2    # "codec":Landroid/media/MediaCodec;
    .restart local v3    # "inputBufIndex":I
    .restart local v5    # "sampleSize":I
    .restart local v6    # "presentationTimeMicroSec":J
    .restart local v20    # "codecInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v21    # "codecOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v22    # "destinationInitialized":Z
    .restart local v23    # "dstBuf":Ljava/nio/ByteBuffer;
    .restart local v31    # "sawInputEOS":Z
    .restart local v32    # "sawOutputEOS":Z
    :cond_9
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    goto/16 :goto_3

    .line 134
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 181
    .end local v3    # "inputBufIndex":I
    .end local v5    # "sampleSize":I
    .end local v6    # "presentationTimeMicroSec":J
    .end local v23    # "dstBuf":Ljava/nio/ByteBuffer;
    .restart local v27    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v30    # "outputBufIndex":I
    :cond_b
    const/4 v4, -0x3

    move/from16 v0, v30

    if-ne v0, v4, :cond_c

    .line 182
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v21

    goto/16 :goto_2

    .line 183
    :cond_c
    const/4 v4, -0x2

    move/from16 v0, v30

    if-ne v0, v4, :cond_5

    .line 184
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v29

    .line 185
    .local v29, "newFormat":Landroid/media/MediaFormat;
    const-string v4, "channel-count"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v19

    .line 186
    const-string v4, "sample-rate"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    .line 187
    const-string v4, "WebAudioMediaCodec"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "output format changed to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 191
    .end local v27    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v29    # "newFormat":Landroid/media/MediaFormat;
    .end local v30    # "outputBufIndex":I
    :cond_d
    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 193
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    .line 194
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 195
    const/4 v2, 0x0

    .line 197
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method private static native nativeInitializeDestination(JIIJ)V
.end method

.method private static native nativeOnChunkDecoded(JLjava/nio/ByteBuffer;III)V
.end method
