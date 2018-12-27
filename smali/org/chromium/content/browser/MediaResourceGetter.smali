.class Lorg/chromium/content/browser/MediaResourceGetter;
.super Ljava/lang/Object;
.source "MediaResourceGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "content"
.end annotation


# static fields
.field private static final EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

.field private static final TAG:Ljava/lang/String; = "MediaResourceGetter"


# instance fields
.field private final mRetriever:Landroid/media/MediaMetadataRetriever;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    new-instance v0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;-><init>(IIIZ)V

    sput-object v0, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/MediaResourceGetter;->mRetriever:Landroid/media/MediaMetadataRetriever;

    .line 41
    return-void
.end method

.method static androidDeviceOk(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "model"    # Ljava/lang/String;
    .param p1, "sdkVersion"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 347
    const-string v0, "GT-I9100"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canonicalize(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 386
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 387
    .local v2, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "MediaResourceGetter"

    const-string v5, "canonicalization of file path failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-object v3
.end method

.method private doExtractMetadata()Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    .locals 12

    .prologue
    .line 162
    const/16 v9, 0x9

    :try_start_0
    invoke-virtual {p0, v9}, Lorg/chromium/content/browser/MediaResourceGetter;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "durationString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 165
    const-string v9, "MediaResourceGetter"

    const-string v10, "missing duration metadata"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object v6, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 214
    .end local v1    # "durationString":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 169
    .restart local v1    # "durationString":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 171
    .local v0, "durationMillis":I
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 177
    const/4 v7, 0x0

    .line 178
    .local v7, "width":I
    const/4 v4, 0x0

    .line 179
    .local v4, "height":I
    :try_start_2
    const-string v9, "yes"

    const/16 v10, 0x11

    invoke-virtual {p0, v10}, Lorg/chromium/content/browser/MediaResourceGetter;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 181
    .local v3, "hasVideo":Z
    const-string v10, "MediaResourceGetter"

    if-eqz v3, :cond_1

    const-string v9, "resource has video"

    :goto_1
    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz v3, :cond_4

    .line 183
    const/16 v9, 0x12

    invoke-virtual {p0, v9}, Lorg/chromium/content/browser/MediaResourceGetter;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 185
    .local v8, "widthString":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 186
    const-string v9, "MediaResourceGetter"

    const-string v10, "missing video width metadata"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v6, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    goto :goto_0

    .line 172
    .end local v3    # "hasVideo":Z
    .end local v4    # "height":I
    .end local v7    # "width":I
    .end local v8    # "widthString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v9, "MediaResourceGetter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "non-numeric duration: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v6, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    goto :goto_0

    .line 181
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "hasVideo":Z
    .restart local v4    # "height":I
    .restart local v7    # "width":I
    :cond_1
    const-string v9, "resource doesn\'t have video"
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 190
    .restart local v8    # "widthString":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v7

    .line 196
    const/16 v9, 0x13

    :try_start_4
    invoke-virtual {p0, v9}, Lorg/chromium/content/browser/MediaResourceGetter;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 198
    .local v5, "heightString":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 199
    const-string v9, "MediaResourceGetter"

    const-string v10, "missing video height metadata"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v6, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    goto :goto_0

    .line 191
    .end local v5    # "heightString":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 192
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string v9, "MediaResourceGetter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "non-numeric width: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v6, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 203
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "heightString":Ljava/lang/String;
    :cond_3
    :try_start_5
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v4

    .line 209
    .end local v5    # "heightString":Ljava/lang/String;
    .end local v8    # "widthString":Ljava/lang/String;
    :cond_4
    :try_start_6
    new-instance v6, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    const/4 v9, 0x1

    invoke-direct {v6, v0, v7, v4, v9}, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;-><init>(IIIZ)V

    .line 210
    .local v6, "result":Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    const-string v9, "MediaResourceGetter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "extracted valid metadata: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 212
    .end local v0    # "durationMillis":I
    .end local v1    # "durationString":Ljava/lang/String;
    .end local v3    # "hasVideo":Z
    .end local v4    # "height":I
    .end local v6    # "result":Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    .end local v7    # "width":I
    :catch_2
    move-exception v2

    .line 213
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v9, "MediaResourceGetter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to extract metadata: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v6, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    goto/16 :goto_0

    .line 204
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "durationMillis":I
    .restart local v1    # "durationString":Ljava/lang/String;
    .restart local v3    # "hasVideo":Z
    .restart local v4    # "height":I
    .restart local v5    # "heightString":Ljava/lang/String;
    .restart local v7    # "width":I
    .restart local v8    # "widthString":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 205
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_7
    const-string v9, "MediaResourceGetter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "non-numeric height: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v6, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0
.end method

.method private static extractMediaMetadata(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cookies"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lorg/chromium/content/browser/MediaResourceGetter;

    invoke-direct {v0}, Lorg/chromium/content/browser/MediaResourceGetter;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/chromium/content/browser/MediaResourceGetter;->extract(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method private static extractMediaMetadataFromFd(IJJ)Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    .locals 6
    .param p0, "fd"    # I
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lorg/chromium/content/browser/MediaResourceGetter;

    invoke-direct {v0}, Lorg/chromium/content/browser/MediaResourceGetter;-><init>()V

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/MediaResourceGetter;->extract(IJJ)Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method private getRawAcceptableDirectories(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "/mnt/sdcard/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    const-string v1, "/sdcard/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    return-object v0
.end method

.method private isLoopbackAddress(Ljava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 304
    if-eqz p1, :cond_1

    const-string v0, "localhost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "127.0.0.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[::1]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method configure(IJJ)V
    .locals 8
    .param p1, "fd"    # I
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 404
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 406
    .local v7, "parcelFd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/MediaResourceGetter;->mRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :try_start_1
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 415
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v6

    .line 412
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "MediaResourceGetter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to close file descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 409
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 410
    :try_start_2
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 413
    :goto_1
    throw v0

    .line 411
    :catch_1
    move-exception v6

    .line 412
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v1, "MediaResourceGetter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close file descriptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method configure(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lorg/chromium/content/browser/MediaResourceGetter;->mRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method configure(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 419
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/chromium/content/browser/MediaResourceGetter;->mRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 420
    return-void
.end method

.method configure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cookies"    # Ljava/lang/String;
    .param p4, "userAgent"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 222
    :try_start_0
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 227
    .local v5, "uri":Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "scheme":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v8, "file"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "app"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 229
    :cond_0
    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/chromium/content/browser/MediaResourceGetter;->uriToFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 230
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 231
    const-string v7, "MediaResourceGetter"

    const-string v8, "File does not exist."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "uri":Ljava/net/URI;
    :cond_1
    :goto_0
    return v6

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "MediaResourceGetter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot parse uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 234
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "scheme":Ljava/lang/String;
    .restart local v5    # "uri":Ljava/net/URI;
    :cond_2
    invoke-virtual {p0, v1, p1}, Lorg/chromium/content/browser/MediaResourceGetter;->filePathAcceptable(Ljava/io/File;Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 235
    const-string v7, "MediaResourceGetter"

    const-string v8, "Refusing to read from unsafe file location."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/chromium/content/browser/MediaResourceGetter;->configure(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v6, v7

    .line 240
    goto :goto_0

    .line 241
    :catch_1
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v7, "MediaResourceGetter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error configuring data source: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "file":Ljava/io/File;
    :cond_4
    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".m3u8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 250
    :cond_5
    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "host":Ljava/lang/String;
    invoke-direct {p0, v3}, Lorg/chromium/content/browser/MediaResourceGetter;->isLoopbackAddress(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/MediaResourceGetter;->isNetworkReliable(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 252
    const-string v7, "MediaResourceGetter"

    const-string v8, "non-file URI can\'t be read due to unsuitable network conditions"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :cond_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 256
    .local v2, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 257
    const-string v8, "Cookie"

    invoke-interface {v2, v8, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_7
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 260
    const-string v8, "User-Agent"

    invoke-interface {v2, v8, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_8
    :try_start_2
    invoke-virtual {p0, p2, v2}, Lorg/chromium/content/browser/MediaResourceGetter;->configure(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    move v6, v7

    .line 264
    goto/16 :goto_0

    .line 265
    :catch_2
    move-exception v0

    .line 266
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const-string v7, "MediaResourceGetter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error configuring data source: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method extract(IJJ)Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    .locals 2
    .param p1, "fd"    # I
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 138
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0, v1}, Lorg/chromium/content/browser/MediaResourceGetter;->androidDeviceOk(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    sget-object v0, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    .line 143
    :goto_0
    return-object v0

    .line 142
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lorg/chromium/content/browser/MediaResourceGetter;->configure(IJJ)V

    .line 143
    invoke-direct {p0}, Lorg/chromium/content/browser/MediaResourceGetter;->doExtractMetadata()Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method extract(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cookies"    # Ljava/lang/String;
    .param p4, "userAgent"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 149
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0, v1}, Lorg/chromium/content/browser/MediaResourceGetter;->androidDeviceOk(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    sget-object v0, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    .line 157
    :goto_0
    return-object v0

    .line 153
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/chromium/content/browser/MediaResourceGetter;->configure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    const-string v0, "MediaResourceGetter"

    const-string v1, "Unable to configure metadata extractor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v0, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    goto :goto_0

    .line 157
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/MediaResourceGetter;->doExtractMetadata()Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method extractMetadata(I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lorg/chromium/content/browser/MediaResourceGetter;->mRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method filePathAcceptable(Ljava/io/File;Landroid/content/Context;)Z
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 318
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 328
    .local v4, "path":Ljava/lang/String;
    invoke-direct {p0, p2}, Lorg/chromium/content/browser/MediaResourceGetter;->getRawAcceptableDirectories(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/chromium/content/browser/MediaResourceGetter;->canonicalize(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 329
    .local v1, "acceptablePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/chromium/content/browser/MediaResourceGetter;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v6, "MediaResourceGetter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canonicalized file path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 332
    .local v0, "acceptablePath":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 333
    const/4 v5, 0x1

    .line 336
    .end local v0    # "acceptablePath":Ljava/lang/String;
    .end local v1    # "acceptablePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    return v5

    .line 319
    :catch_0
    move-exception v2

    .line 321
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "MediaResourceGetter"

    const-string v7, "canonicalization of file path failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getExternalStorageDirectory()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 399
    invoke-static {}, Lorg/chromium/base/PathUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNetworkType(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 360
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 362
    .local v1, "mConnectivityManager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 363
    const-string v3, "MediaResourceGetter"

    const-string v4, "no connectivity manager available"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :goto_0
    return-object v2

    .line 366
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 367
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 368
    const-string v3, "MediaResourceGetter"

    const-string v4, "no active network"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method isNetworkReliable(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 278
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    const-string v2, "MediaResourceGetter"

    const-string v3, "permission denied to access network state"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    :goto_0
    return v1

    .line 284
    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/MediaResourceGetter;->getNetworkType(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    .line 285
    .local v0, "networkType":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 296
    const-string v2, "MediaResourceGetter"

    const-string v3, "no ethernet/wifi connection detected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :sswitch_0
    const-string v1, "MediaResourceGetter"

    const-string v2, "ethernet/wifi connection detected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v1, 0x1

    goto :goto_0

    .line 288
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method uriToFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 354
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
