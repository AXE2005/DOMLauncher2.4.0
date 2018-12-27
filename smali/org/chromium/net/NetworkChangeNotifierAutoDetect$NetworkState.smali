.class Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
.super Ljava/lang/Object;
.source "NetworkChangeNotifierAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkState"
.end annotation


# instance fields
.field private final mConnected:Z

.field private final mSubtype:I

.field private final mType:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 0
    .param p1, "connected"    # Z
    .param p2, "type"    # I
    .param p3, "subtype"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mConnected:Z

    .line 38
    iput p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mType:I

    .line 39
    iput p3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mSubtype:I

    .line 40
    return-void
.end method


# virtual methods
.method public getNetworkSubType()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mSubtype:I

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mType:I

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mConnected:Z

    return v0
.end method
