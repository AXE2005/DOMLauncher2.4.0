.class public Lorg/chromium/media/MediaDrmBridge;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/MediaDrmBridge$PostRequestTask;,
        Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;,
        Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "media"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ENABLE:Ljava/lang/String; = "enable"

.field private static final HEX_CHAR_LOOKUP:[C

.field private static final INVALID_SESSION_ID:I = 0x0

.field private static final KEY_STATUS_EXPIRED:I = 0x2

.field private static final KEY_STATUS_INTERNAL_ERROR:I = 0x1

.field private static final KEY_STATUS_OUTPUT_NOT_ALLOWED:I = 0x3

.field private static final KEY_STATUS_USABLE:I = 0x0

.field private static final PRIVACY_MODE:Ljava/lang/String; = "privacyMode"

.field private static final SECURITY_LEVEL:Ljava/lang/String; = "securityLevel"

.field private static final SESSION_SHARING:Ljava/lang/String; = "sessionSharing"

.field private static final TAG:Ljava/lang/String; = "MediaDrmBridge"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMediaCrypto:Landroid/media/MediaCrypto;

.field private mMediaCryptoSession:[B

.field private mMediaDrm:Landroid/media/MediaDrm;

.field private mNativeMediaDrmBridge:J

.field private mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;",
            ">;"
        }
    .end annotation
.end field

.field private mProvisioningPending:Z

.field private mResetDeviceCredentialsPending:Z

.field private mSchemeUUID:Ljava/util/UUID;

.field private mSessionIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/chromium/media/MediaDrmBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    .line 64
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/chromium/media/MediaDrmBridge;->HEX_CHAR_LOOKUP:[C

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/UUID;J)V
    .locals 3
    .param p1, "schemeUUID"    # Ljava/util/UUID;
    .param p2, "nativeMediaDrmBridge"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge;->mSchemeUUID:Ljava/util/UUID;

    .line 159
    new-instance v0, Landroid/media/MediaDrm;

    invoke-direct {v0, p1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    .line 160
    iput-wide p2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    .line 161
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    .line 163
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    .line 164
    iput-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->mResetDeviceCredentialsPending:Z

    .line 165
    iput-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    .line 167
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/media/MediaDrmBridge$MediaDrmListener;-><init>(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmBridge$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 168
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v1, "privacyMode"

    const-string v2, "enable"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v1, "sessionSharing"

    const-string v2, "enable"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method static synthetic access$1000(Lorg/chromium/media/MediaDrmBridge;J[B[BLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # [B
    .param p4, "x3"    # [B
    .param p5, "x4"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lorg/chromium/media/MediaDrmBridge;->nativeOnSessionMessage(J[B[BLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/chromium/media/MediaDrmBridge;J[B)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # [B

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->nativeOnSessionClosed(J[B)V

    return-void
.end method

.method static synthetic access$1200(Lorg/chromium/media/MediaDrmBridge;J[BZI)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # [B
    .param p4, "x3"    # Z
    .param p5, "x4"    # I

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lorg/chromium/media/MediaDrmBridge;->nativeOnSessionKeysChange(J[BZI)V

    return-void
.end method

.method static synthetic access$1300(Lorg/chromium/media/MediaDrmBridge;J[BLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # [B
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/MediaDrmBridge;->nativeOnLegacySessionError(J[BLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/chromium/media/MediaDrmBridge;[B)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # [B

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->sessionExists([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500([B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [B

    .prologue
    .line 35
    invoke-static {p0}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lorg/chromium/media/MediaDrmBridge;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;

    .prologue
    .line 35
    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    return v0
.end method

.method static synthetic access$1700(Lorg/chromium/media/MediaDrmBridge;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/chromium/media/MediaDrmBridge;[B[BLjava/lang/String;)Landroid/media/MediaDrm$KeyRequest;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B
    .param p3, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->getKeyRequest([B[BLjava/lang/String;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lorg/chromium/media/MediaDrmBridge;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->startProvisioning()V

    return-void
.end method

.method static synthetic access$2000(Lorg/chromium/media/MediaDrmBridge;[BLandroid/media/MediaDrm$KeyRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/media/MediaDrm$KeyRequest;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge;->onSessionMessage([BLandroid/media/MediaDrm$KeyRequest;)V

    return-void
.end method

.method static synthetic access$2100(Lorg/chromium/media/MediaDrmBridge;[BLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge;->onLegacySessionError([BLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lorg/chromium/media/MediaDrmBridge;[BZI)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->onSessionKeysChange([BZI)V

    return-void
.end method

.method static synthetic access$2300(Lorg/chromium/media/MediaDrmBridge;[B)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # [B

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->onProvisionResponse([B)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/media/MediaDrmBridge;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->processPendingCreateSessionData()V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/media/MediaDrmBridge;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;

    .prologue
    .line 35
    iget-wide v0, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/chromium/media/MediaDrmBridge;JJ)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/MediaDrmBridge;->nativeOnPromiseResolved(JJ)V

    return-void
.end method

.method static synthetic access$800(Lorg/chromium/media/MediaDrmBridge;JJ[B)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # [B

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lorg/chromium/media/MediaDrmBridge;->nativeOnPromiseResolvedWithSession(JJ[B)V

    return-void
.end method

.method static synthetic access$900(Lorg/chromium/media/MediaDrmBridge;JJLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Lorg/chromium/media/MediaDrmBridge;->nativeOnPromiseRejected(JJLjava/lang/String;)V

    return-void
.end method

.method public static addKeySystemUuidMapping(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 3
    .param p0, "keySystem"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 857
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 859
    .local v0, "uuidBuffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 860
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 861
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 862
    invoke-static {p0, v0}, Lorg/chromium/media/MediaDrmBridge;->nativeAddKeySystemUuidMapping(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 863
    return-void
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .local v0, "hexString":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 150
    sget-object v2, Lorg/chromium/media/MediaDrmBridge;->HEX_CHAR_LOOKUP:[C

    aget-byte v3, p0, v1

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 151
    sget-object v2, Lorg/chromium/media/MediaDrmBridge;->HEX_CHAR_LOOKUP:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private closeSession([BJ)V
    .locals 3
    .param p1, "sessionId"    # [B
    .param p2, "promiseId"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 540
    const-string v0, "MediaDrmBridge"

    const-string v1, "closeSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    .line 542
    const-string v0, "closeSession() called when MediaDrm is null."

    invoke-direct {p0, p2, p3, v0}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    .line 558
    :goto_0
    return-void

    .line 546
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->sessionExists([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid sessionId in closeSession(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    goto :goto_0

    .line 552
    :cond_1
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->removeKeys([B)V

    .line 553
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 554
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    invoke-direct {p0, p2, p3}, Lorg/chromium/media/MediaDrmBridge;->onPromiseResolved(J)V

    .line 556
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->onSessionClosed([B)V

    .line 557
    const-string v0, "MediaDrmBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static create([BJ)Lorg/chromium/media/MediaDrmBridge;
    .locals 6
    .param p0, "schemeUUID"    # [B
    .param p1, "nativeMediaDrmBridge"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 272
    invoke-static {p0}, Lorg/chromium/media/MediaDrmBridge;->getUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    .line 273
    .local v0, "cryptoScheme":Ljava/util/UUID;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 274
    :cond_0
    const/4 v2, 0x0

    .line 289
    :goto_0
    return-object v2

    .line 277
    :cond_1
    const/4 v2, 0x0

    .line 279
    .local v2, "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    :try_start_0
    new-instance v3, Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {v3, v0, p1, p2}, Lorg/chromium/media/MediaDrmBridge;-><init>(Ljava/util/UUID;J)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 280
    .end local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .local v3, "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    :try_start_1
    const-string v4, "MediaDrmBridge"

    const-string v5, "MediaDrmBridge successfully created."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 287
    .end local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Landroid/media/UnsupportedSchemeException;
    :goto_1
    const-string v4, "MediaDrmBridge"

    const-string v5, "Unsupported DRM scheme"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 283
    .end local v1    # "e":Landroid/media/UnsupportedSchemeException;
    :catch_1
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    const-string v4, "MediaDrmBridge"

    const-string v5, "Failed to create MediaDrmBridge"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 285
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/IllegalStateException;
    :goto_3
    const-string v4, "MediaDrmBridge"

    const-string v5, "Failed to create MediaDrmBridge"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 285
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    goto :goto_3

    .line 283
    .end local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    goto :goto_2

    .line 281
    .end local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    .restart local v2    # "mediaDrmBridge":Lorg/chromium/media/MediaDrmBridge;
    goto :goto_1
.end method

.method private createMediaCrypto()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v2, :cond_0

    .line 215
    :goto_0
    return v1

    .line 187
    :cond_0
    sget-boolean v2, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 188
    :cond_1
    sget-boolean v2, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    if-eqz v2, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 189
    :cond_2
    sget-boolean v2, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 192
    :cond_3
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->openSession()[B

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    .line 193
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    if-nez v2, :cond_4

    .line 194
    const-string v2, "MediaDrmBridge"

    const-string v3, "Cannot create MediaCrypto Session."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :cond_4
    const-string v2, "MediaDrmBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaCrypto Session created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    invoke-static {v4}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mSchemeUUID:Ljava/util/UUID;

    invoke-static {v2}, Landroid/media/MediaCrypto;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 202
    new-instance v2, Landroid/media/MediaCrypto;

    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mSchemeUUID:Ljava/util/UUID;

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    invoke-direct {v2, v3, v4}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    .line 203
    const-string v2, "MediaDrmBridge"

    const-string v3, "MediaCrypto successfully created!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-wide v2, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/media/MediaDrmBridge;->nativeOnMediaCryptoReady(J)V

    .line 206
    const/4 v1, 0x1

    goto :goto_0

    .line 208
    :cond_5
    const-string v2, "MediaDrmBridge"

    const-string v3, "Cannot create MediaCrypto for unsupported scheme."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_1
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    goto/16 :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/media/MediaCryptoException;
    const-string v2, "MediaDrmBridge"

    const-string v3, "Cannot create MediaCrypto"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private createSession([BLjava/lang/String;J)V
    .locals 7
    .param p1, "initData"    # [B
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "promiseId"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 461
    const-string v4, "MediaDrmBridge"

    const-string v5, "createSession()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v4, :cond_0

    .line 463
    const-string v4, "MediaDrmBridge"

    const-string v5, "createSession() called when MediaDrm is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-boolean v4, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-eqz v4, :cond_2

    .line 468
    sget-boolean v4, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 469
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/MediaDrmBridge;->savePendingCreateSessionData([BLjava/lang/String;J)V

    goto :goto_0

    .line 473
    :cond_2
    const/4 v1, 0x0

    .line 474
    .local v1, "newSessionOpened":Z
    const/4 v3, 0x0

    .line 477
    .local v3, "sessionId":[B
    :try_start_0
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-nez v4, :cond_4

    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->createMediaCrypto()Z

    move-result v4

    if-nez v4, :cond_4

    .line 478
    const-string v4, "MediaCrypto creation failed."

    invoke-direct {p0, p3, p4, v4}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Landroid/media/NotProvisionedException;
    const-string v4, "MediaDrmBridge"

    const-string v5, "Device not provisioned"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    if-eqz v1, :cond_3

    .line 508
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v4, v3}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 510
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/media/MediaDrmBridge;->savePendingCreateSessionData([BLjava/lang/String;J)V

    .line 511
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->startProvisioning()V

    goto :goto_0

    .line 481
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    :cond_4
    :try_start_1
    sget-boolean v4, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 482
    :cond_5
    sget-boolean v4, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 484
    :cond_6
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->openSession()[B

    move-result-object v3

    .line 485
    if-nez v3, :cond_7

    .line 486
    const-string v4, "Open session failed."

    invoke-direct {p0, p3, p4, v4}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_7
    const/4 v1, 0x1

    .line 490
    sget-boolean v4, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v4, :cond_8

    invoke-direct {p0, v3}, Lorg/chromium/media/MediaDrmBridge;->sessionExists([B)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 492
    :cond_8
    const/4 v2, 0x0

    .line 493
    .local v2, "request":Landroid/media/MediaDrm$KeyRequest;
    invoke-direct {p0, v3, p1, p2}, Lorg/chromium/media/MediaDrmBridge;->getKeyRequest([B[BLjava/lang/String;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v2

    .line 494
    if-nez v2, :cond_9

    .line 495
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v4, v3}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 496
    const-string v4, "Generate request failed."

    invoke-direct {p0, p3, p4, v4}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 501
    :cond_9
    const-string v4, "MediaDrmBridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createSession(): Session ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") created."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-direct {p0, p3, p4, v3}, Lorg/chromium/media/MediaDrmBridge;->onPromiseResolvedWithSession(J[B)V

    .line 503
    invoke-direct {p0, v3, v2}, Lorg/chromium/media/MediaDrmBridge;->onSessionMessage([BLandroid/media/MediaDrm$KeyRequest;)V

    .line 504
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private getKeyRequest([B[BLjava/lang/String;)Landroid/media/MediaDrm$KeyRequest;
    .locals 8
    .param p1, "sessionId"    # [B
    .param p2, "data"    # [B
    .param p3, "mime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .prologue
    .line 394
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 395
    :cond_0
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 396
    :cond_1
    sget-boolean v0, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 398
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 399
    .local v5, "optionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v6

    .line 401
    .local v6, "request":Landroid/media/MediaDrm$KeyRequest;
    if-eqz v6, :cond_3

    const-string v7, "successed"

    .line 402
    .local v7, "result":Ljava/lang/String;
    :goto_0
    const-string v0, "MediaDrmBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyRequest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-object v6

    .line 401
    .end local v7    # "result":Ljava/lang/String;
    :cond_3
    const-string v7, "failed"

    goto :goto_0
.end method

.method private getMediaCrypto()Landroid/media/MediaCrypto;
    .locals 1
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    return-object v0
.end method

.method private getSecurityLevel()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 610
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    .line 611
    const-string v0, "MediaDrmBridge"

    const-string v1, "getSecurityLevel() called when MediaDrm is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v0, 0x0

    .line 614
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v1, "securityLevel"

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getUUIDFromBytes([B)Ljava/util/UUID;
    .locals 11
    .param p0, "data"    # [B

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0x8

    .line 129
    array-length v5, p0

    if-eq v5, v10, :cond_0

    .line 130
    const/4 v5, 0x0

    .line 140
    :goto_0
    return-object v5

    .line 132
    :cond_0
    const-wide/16 v3, 0x0

    .line 133
    .local v3, "mostSigBits":J
    const-wide/16 v1, 0x0

    .line 134
    .local v1, "leastSigBits":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v9, :cond_1

    .line 135
    shl-long v5, v3, v9

    aget-byte v7, p0, v0

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long v3, v5, v7

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_1
    const/16 v0, 0x8

    :goto_2
    if-ge v0, v10, :cond_2

    .line 138
    shl-long v5, v1, v9

    aget-byte v7, p0, v0

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long v1, v5, v7

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 140
    :cond_2
    new-instance v5, Ljava/util/UUID;

    invoke-direct {v5, v3, v4, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    goto :goto_0
.end method

.method private static isCryptoSchemeSupported([BLjava/lang/String;)Z
    .locals 2
    .param p0, "schemeUUID"    # [B
    .param p1, "containerMimeType"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 255
    invoke-static {p0}, Lorg/chromium/media/MediaDrmBridge;->getUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    .line 257
    .local v0, "cryptoScheme":Ljava/util/UUID;
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-static {v0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v1

    .line 261
    :goto_0
    return v1

    :cond_0
    invoke-static {v0, p1}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private static native nativeAddKeySystemUuidMapping(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
.end method

.method private native nativeOnLegacySessionError(J[BLjava/lang/String;)V
.end method

.method private native nativeOnMediaCryptoReady(J)V
.end method

.method private native nativeOnPromiseRejected(JJLjava/lang/String;)V
.end method

.method private native nativeOnPromiseResolved(JJ)V
.end method

.method private native nativeOnPromiseResolvedWithSession(JJ[B)V
.end method

.method private native nativeOnResetDeviceCredentialsCompleted(JZ)V
.end method

.method private native nativeOnSessionClosed(J[B)V
.end method

.method private native nativeOnSessionKeysChange(J[BZI)V
.end method

.method private native nativeOnSessionMessage(J[B[BLjava/lang/String;)V
.end method

.method private onLegacySessionError([BLjava/lang/String;)V
    .locals 3
    .param p1, "sessionId"    # [B
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 737
    const-string v0, "MediaDrmBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLegacySessionError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$8;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge$8;-><init>(Lorg/chromium/media/MediaDrmBridge;[BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 744
    return-void
.end method

.method private onPromiseRejected(JLjava/lang/String;)V
    .locals 3
    .param p1, "promiseId"    # J
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 697
    const-string v0, "MediaDrmBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPromiseRejected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge$4;-><init>(Lorg/chromium/media/MediaDrmBridge;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 704
    return-void
.end method

.method private onPromiseResolved(J)V
    .locals 2
    .param p1, "promiseId"    # J

    .prologue
    .line 679
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge$2;-><init>(Lorg/chromium/media/MediaDrmBridge;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 685
    return-void
.end method

.method private onPromiseResolvedWithSession(J[B)V
    .locals 2
    .param p1, "promiseId"    # J
    .param p3, "sessionId"    # [B

    .prologue
    .line 688
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge$3;-><init>(Lorg/chromium/media/MediaDrmBridge;J[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 694
    return-void
.end method

.method private onProvisionResponse([B)V
    .locals 4
    .param p1, "response"    # [B

    .prologue
    const/4 v3, 0x0

    .line 633
    const-string v1, "MediaDrmBridge"

    const-string v2, "onProvisionResponse()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    sget-boolean v1, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 635
    :cond_0
    iput-boolean v3, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    .line 638
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v1, :cond_2

    .line 652
    :cond_1
    :goto_0
    return-void

    .line 642
    :cond_2
    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->provideProvisionResponse([B)Z

    move-result v0

    .line 644
    .local v0, "success":Z
    iget-boolean v1, p0, Lorg/chromium/media/MediaDrmBridge;->mResetDeviceCredentialsPending:Z

    if-eqz v1, :cond_3

    .line 645
    iget-wide v1, p0, Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J

    invoke-direct {p0, v1, v2, v0}, Lorg/chromium/media/MediaDrmBridge;->nativeOnResetDeviceCredentialsCompleted(JZ)V

    .line 646
    iput-boolean v3, p0, Lorg/chromium/media/MediaDrmBridge;->mResetDeviceCredentialsPending:Z

    .line 649
    :cond_3
    if-eqz v0, :cond_1

    .line 650
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->resumePendingOperations()V

    goto :goto_0
.end method

.method private onSessionClosed([B)V
    .locals 2
    .param p1, "sessionId"    # [B

    .prologue
    .line 717
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$6;

    invoke-direct {v1, p0, p1}, Lorg/chromium/media/MediaDrmBridge$6;-><init>(Lorg/chromium/media/MediaDrmBridge;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 723
    return-void
.end method

.method private onSessionKeysChange([BZI)V
    .locals 2
    .param p1, "sessionId"    # [B
    .param p2, "hasAdditionalUsableKey"    # Z
    .param p3, "keyStatus"    # I

    .prologue
    .line 727
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/chromium/media/MediaDrmBridge$7;-><init>(Lorg/chromium/media/MediaDrmBridge;[BZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 734
    return-void
.end method

.method private onSessionMessage([BLandroid/media/MediaDrm$KeyRequest;)V
    .locals 2
    .param p1, "sessionId"    # [B
    .param p2, "request"    # Landroid/media/MediaDrm$KeyRequest;

    .prologue
    .line 707
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$5;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge$5;-><init>(Lorg/chromium/media/MediaDrmBridge;[BLandroid/media/MediaDrm$KeyRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 714
    return-void
.end method

.method private openSession()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 224
    sget-boolean v2, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 226
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v1

    .line 228
    .local v1, "sessionId":[B
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/MediaDrmException; {:try_start_0 .. :try_end_0} :catch_2

    .line 241
    .end local v1    # "sessionId":[B
    :goto_0
    return-object v2

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "MediaDrmBridge"

    const-string v4, "Cannot open a new session"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    move-object v2, v3

    .line 232
    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 235
    .local v0, "e":Landroid/media/NotProvisionedException;
    throw v0

    .line 236
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    :catch_2
    move-exception v0

    .line 239
    .local v0, "e":Landroid/media/MediaDrmException;
    const-string v2, "MediaDrmBridge"

    const-string v4, "Cannot open a new session"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    move-object v2, v3

    .line 241
    goto :goto_0
.end method

.method private processPendingCreateSessionData()V
    .locals 7

    .prologue
    .line 424
    const-string v5, "MediaDrmBridge"

    const-string v6, "processPendingCreateSessionData()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    sget-boolean v5, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 431
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 432
    iget-object v5, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;

    .line 433
    .local v2, "pendingData":Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;
    invoke-static {v2}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->access$300(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)[B

    move-result-object v0

    .line 434
    .local v0, "initData":[B
    invoke-static {v2}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->access$400(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "mime":Ljava/lang/String;
    invoke-static {v2}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->access$100(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)J

    move-result-wide v3

    .line 436
    .local v3, "promiseId":J
    invoke-direct {p0, v0, v1, v3, v4}, Lorg/chromium/media/MediaDrmBridge;->createSession([BLjava/lang/String;J)V

    goto :goto_0

    .line 438
    .end local v0    # "initData":[B
    .end local v1    # "mime":Ljava/lang/String;
    .end local v2    # "pendingData":Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;
    .end local v3    # "promiseId":J
    :cond_1
    return-void
.end method

.method private release()V
    .locals 7
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 355
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;

    .line 356
    .local v0, "data":Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;
    invoke-static {v0}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->access$100(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)J

    move-result-wide v3

    const-string v5, "Create session aborted."

    invoke-direct {p0, v3, v4, v5}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    goto :goto_0

    .line 358
    .end local v0    # "data":Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;
    :cond_0
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 359
    iput-object v6, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    .line 361
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 362
    .local v2, "sessionId":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaDrm;->removeKeys([B)V

    .line 363
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 364
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/chromium/media/MediaDrmBridge;->onSessionClosed([B)V

    goto :goto_1

    .line 366
    .end local v2    # "sessionId":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 367
    iput-object v6, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    .line 370
    iput-object v6, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    .line 372
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v3, :cond_2

    .line 373
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {v3}, Landroid/media/MediaCrypto;->release()V

    .line 374
    iput-object v6, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    .line 377
    :cond_2
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-eqz v3, :cond_3

    .line 378
    iget-object v3, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v3}, Landroid/media/MediaDrm;->release()V

    .line 379
    iput-object v6, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    .line 381
    :cond_3
    return-void
.end method

.method private resetDeviceCredentials()V
    .locals 5
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 341
    iput-boolean v3, p0, Lorg/chromium/media/MediaDrmBridge;->mResetDeviceCredentialsPending:Z

    .line 342
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v1

    .line 343
    .local v1, "request":Landroid/media/MediaDrm$ProvisionRequest;
    new-instance v0, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;

    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;-><init>(Lorg/chromium/media/MediaDrmBridge;[B)V

    .line 344
    .local v0, "postTask":Lorg/chromium/media/MediaDrmBridge$PostRequestTask;
    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 345
    return-void
.end method

.method private resumePendingOperations()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/MediaDrmBridge$1;

    invoke-direct {v1, p0}, Lorg/chromium/media/MediaDrmBridge$1;-><init>(Lorg/chromium/media/MediaDrmBridge;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 450
    return-void
.end method

.method private savePendingCreateSessionData([BLjava/lang/String;J)V
    .locals 7
    .param p1, "initData"    # [B
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "promiseId"    # J

    .prologue
    .line 415
    const-string v0, "MediaDrmBridge"

    const-string v1, "savePendingCreateSessionData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v6, p0, Lorg/chromium/media/MediaDrmBridge;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    new-instance v0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;-><init>([BLjava/lang/String;JLorg/chromium/media/MediaDrmBridge$1;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 418
    return-void
.end method

.method private sessionExists([B)Z
    .locals 3
    .param p1, "sessionId"    # [B

    .prologue
    const/4 v0, 0x0

    .line 523
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    if-nez v1, :cond_2

    .line 524
    sget-boolean v1, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 525
    :cond_0
    const-string v1, "MediaDrmBridge"

    const-string v2, "Session doesn\'t exist because media crypto session is not created."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCryptoSession:[B

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mSessionIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setSecurityLevel(Ljava/lang/String;)Z
    .locals 7
    .param p1, "securityLevel"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 302
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 325
    :cond_1
    :goto_0
    return v2

    .line 306
    :cond_2
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v5, "securityLevel"

    invoke-virtual {v4, v5}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "currentSecurityLevel":Ljava/lang/String;
    const-string v4, "MediaDrmBridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Security level: current "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 316
    :try_start_0
    iget-object v4, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    const-string v5, "securityLevel"

    invoke-virtual {v4, v5, p1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaDrmBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set security level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const-string v2, "MediaDrmBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Security level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not supported!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 325
    goto :goto_0

    .line 320
    :catch_1
    move-exception v1

    .line 321
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "MediaDrmBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set security level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private startProvisioning()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 618
    const-string v2, "MediaDrmBridge"

    const-string v3, "startProvisioning"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    sget-boolean v2, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 620
    :cond_0
    sget-boolean v2, Lorg/chromium/media/MediaDrmBridge;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 621
    :cond_1
    iput-boolean v4, p0, Lorg/chromium/media/MediaDrmBridge;->mProvisioningPending:Z

    .line 622
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v1

    .line 623
    .local v1, "request":Landroid/media/MediaDrm$ProvisionRequest;
    new-instance v0, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;

    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;-><init>(Lorg/chromium/media/MediaDrmBridge;[B)V

    .line 624
    .local v0, "postTask":Lorg/chromium/media/MediaDrmBridge$PostRequestTask;
    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 625
    return-void
.end method

.method private updateSession([B[BJ)V
    .locals 4
    .param p1, "sessionId"    # [B
    .param p2, "response"    # [B
    .param p3, "promiseId"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 569
    const-string v1, "MediaDrmBridge"

    const-string v2, "updateSession()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v1, :cond_0

    .line 571
    const-string v1, "updateSession() called when MediaDrm is null."

    invoke-direct {p0, p3, p4, v1}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    .line 603
    :goto_0
    return-void

    .line 576
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge;->sessionExists([B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid session in updateSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, p4, v1}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    goto :goto_0

    .line 584
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 591
    :goto_1
    :try_start_1
    const-string v1, "MediaDrmBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key successfully added for session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/chromium/media/MediaDrmBridge;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-direct {p0, p3, p4}, Lorg/chromium/media/MediaDrmBridge;->onPromiseResolved(J)V

    .line 593
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lorg/chromium/media/MediaDrmBridge;->onSessionKeysChange([BZI)V
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/media/DeniedByServerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Landroid/media/NotProvisionedException;
    const-string v1, "MediaDrmBridge"

    const-string v2, "failed to provide key response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    :goto_2
    const-string v1, "Update session failed."

    invoke-direct {p0, p3, p4, v1}, Lorg/chromium/media/MediaDrmBridge;->onPromiseRejected(JLjava/lang/String;)V

    .line 602
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge;->release()V

    goto :goto_0

    .line 585
    :catch_1
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v1, "MediaDrmBridge"

    const-string v2, "Exception intentionally caught when calling provideKeyResponse()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/media/DeniedByServerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 598
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 599
    .local v0, "e":Landroid/media/DeniedByServerException;
    const-string v1, "MediaDrmBridge"

    const-string v2, "failed to provide key response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method provideProvisionResponse([B)Z
    .locals 4
    .param p1, "response"    # [B

    .prologue
    const/4 v1, 0x0

    .line 660
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 661
    :cond_0
    const-string v2, "MediaDrmBridge"

    const-string v3, "Invalid provision response."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :goto_0
    return v1

    .line 666
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 667
    const/4 v1, 0x1

    goto :goto_0

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Landroid/media/DeniedByServerException;
    const-string v2, "MediaDrmBridge"

    const-string v3, "failed to provide provision response"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 670
    .end local v0    # "e":Landroid/media/DeniedByServerException;
    :catch_1
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "MediaDrmBridge"

    const-string v3, "failed to provide provision response"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
