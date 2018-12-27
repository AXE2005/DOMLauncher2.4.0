.class Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;
.super Ljava/lang/Object;
.source "CoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/impl/CoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeCodeAndBufferResult"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mMojoResult:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/mojo/system/impl/CoreImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/mojo/system/impl/CoreImpl$1;

    .prologue
    .line 446
    invoke-direct {p0}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getMojoResult()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;->mMojoResult:I

    return v0
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 475
    iput-object p1, p0, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;->mBuffer:Ljava/nio/ByteBuffer;

    .line 476
    return-void
.end method

.method public setMojoResult(I)V
    .locals 0
    .param p1, "mojoResult"    # I

    .prologue
    .line 461
    iput p1, p0, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;->mMojoResult:I

    .line 462
    return-void
.end method
