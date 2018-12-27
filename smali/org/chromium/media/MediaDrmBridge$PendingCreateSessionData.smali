.class Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaDrmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingCreateSessionData"
.end annotation


# instance fields
.field private final mInitData:[B

.field private final mMimeType:Ljava/lang/String;

.field private final mPromiseId:J


# direct methods
.method private constructor <init>([BLjava/lang/String;J)V
    .locals 0
    .param p1, "initData"    # [B
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "promiseId"    # J

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mInitData:[B

    .line 111
    iput-object p2, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mMimeType:Ljava/lang/String;

    .line 112
    iput-wide p3, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mPromiseId:J

    .line 113
    return-void
.end method

.method synthetic constructor <init>([BLjava/lang/String;JLorg/chromium/media/MediaDrmBridge$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # Lorg/chromium/media/MediaDrmBridge$1;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;-><init>([BLjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->promiseId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)[B
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->initData()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initData()[B
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mInitData:[B

    return-object v0
.end method

.method private mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method private promiseId()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mPromiseId:J

    return-wide v0
.end method
