.class public Lorg/chromium/mojo/system/impl/CoreImpl;
.super Ljava/lang/Object;
.source "CoreImpl.java"

# interfaces
.implements Lorg/chromium/mojo/system/Core;
.implements Lorg/chromium/mojo/system/AsyncWaiter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/system/impl/CoreImpl$1;,
        Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;,
        Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;,
        Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;,
        Lorg/chromium/mojo/system/impl/CoreImpl$LazyHolder;
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "mojo::android"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FLAG_SIZE:I = 0x4

.field private static final HANDLE_SIZE:I = 0x4

.field static final INVALID_HANDLE:I = 0x0

.field private static final MOJO_READ_DATA_FLAG_DISCARD:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/mojo/system/impl/CoreImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/mojo/system/impl/CoreImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/mojo/system/impl/CoreImpl$1;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/chromium/mojo/system/impl/CoreImpl;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/mojo/system/impl/CoreImpl;JJ)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/mojo/system/impl/CoreImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeCancelAsyncWait(JJ)V

    return-void
.end method

.method private static allocateDirectBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "capacity"    # I

    .prologue
    .line 441
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 442
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 443
    return-object v0
.end method

.method private static filterMojoResultForWait(I)I
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 434
    invoke-static {p0}, Lorg/chromium/mojo/system/impl/CoreImpl;->isUnrecoverableError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0

    .line 437
    :cond_0
    return p0
.end method

.method public static getInstance()Lorg/chromium/mojo/system/Core;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImpl$LazyHolder;->access$100()Lorg/chromium/mojo/system/Core;

    move-result-object v0

    return-object v0
.end method

.method private getMojoHandle(Lorg/chromium/mojo/system/Handle;)I
    .locals 1
    .param p1, "handle"    # Lorg/chromium/mojo/system/Handle;

    .prologue
    .line 415
    invoke-interface {p1}, Lorg/chromium/mojo/system/Handle;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    check-cast p1, Lorg/chromium/mojo/system/impl/HandleBase;

    .end local p1    # "handle":Lorg/chromium/mojo/system/Handle;
    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/HandleBase;->getMojoHandle()I

    move-result v0

    .line 418
    :goto_0
    return v0

    .restart local p1    # "handle":Lorg/chromium/mojo/system/Handle;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUnrecoverableError(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 422
    sparse-switch p0, :sswitch_data_0

    .line 429
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 427
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 422
    nop

    :sswitch_data_0
    .sparse-switch
        -0x9 -> :sswitch_0
        -0x4 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private native nativeAsyncWait(IIJLorg/chromium/mojo/system/AsyncWaiter$Callback;)Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;
.end method

.method private native nativeBeginReadData(III)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;
.end method

.method private native nativeBeginWriteData(III)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;
.end method

.method private native nativeCancelAsyncWait(JJ)V
.end method

.method private native nativeClose(I)I
.end method

.method private native nativeCreateDataPipe(Ljava/nio/ByteBuffer;)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;
.end method

.method private native nativeCreateMessagePipe(Ljava/nio/ByteBuffer;)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;
.end method

.method private native nativeCreateSharedBuffer(Ljava/nio/ByteBuffer;J)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;
.end method

.method private native nativeDuplicate(ILjava/nio/ByteBuffer;)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;
.end method

.method private native nativeEndReadData(II)I
.end method

.method private native nativeEndWriteData(II)I
.end method

.method private native nativeGetTimeTicksNow()J
.end method

.method private native nativeMap(IJJI)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;
.end method

.method private native nativeReadData(ILjava/nio/ByteBuffer;II)I
.end method

.method private native nativeReadMessage(ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;
.end method

.method private native nativeUnmap(Ljava/nio/ByteBuffer;)I
.end method

.method private native nativeWait(Ljava/nio/ByteBuffer;IIJ)I
.end method

.method private native nativeWaitMany(Ljava/nio/ByteBuffer;J)I
.end method

.method private native nativeWriteData(ILjava/nio/ByteBuffer;II)I
.end method

.method private native nativeWriteMessage(ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)I
.end method

.method private newAsyncWaiterCancellableImpl(JJ)Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;
    .locals 7
    .param p1, "id"    # J
    .param p3, "dataPtr"    # J
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 514
    new-instance v0, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;JJLorg/chromium/mojo/system/impl/CoreImpl$1;)V

    return-object v0
.end method

.method private static newNativeCodeAndBufferResult(ILjava/nio/ByteBuffer;)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;
    .locals 2
    .param p0, "mojoResult"    # I
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 535
    new-instance v0, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl$1;)V

    .line 536
    .local v0, "result":Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;
    invoke-virtual {v0, p0}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;->setMojoResult(I)V

    .line 537
    invoke-virtual {v0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 538
    return-object v0
.end method

.method private static newNativeCreationResult(III)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;
    .locals 2
    .param p0, "mojoResult"    # I
    .param p1, "mojoHandle1"    # I
    .param p2, "mojoHandle2"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 606
    new-instance v0, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl$1;)V

    .line 607
    .local v0, "result":Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;
    invoke-virtual {v0, p0}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->setMojoResult(I)V

    .line 608
    invoke-virtual {v0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->setMojoHandle1(I)V

    .line 609
    invoke-virtual {v0, p2}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->setMojoHandle2(I)V

    .line 610
    return-object v0
.end method

.method private static newReadMessageResult(III)Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;
    .locals 2
    .param p0, "mojoResult"    # I
    .param p1, "messageSize"    # I
    .param p2, "handlesCount"    # I
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 544
    new-instance v0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;

    invoke-direct {v0}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;-><init>()V

    .line 545
    .local v0, "result":Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;
    if-ltz p0, :cond_0

    .line 546
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->setMojoResult(I)V

    .line 550
    :goto_0
    invoke-virtual {v0, p1}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->setMessageSize(I)V

    .line 551
    invoke-virtual {v0, p2}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->setHandlesCount(I)V

    .line 552
    return-object v0

    .line 548
    :cond_0
    invoke-virtual {v0, p0}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->setMojoResult(I)V

    goto :goto_0
.end method

.method private onAsyncWaitResult(ILorg/chromium/mojo/system/AsyncWaiter$Callback;Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;)V
    .locals 1
    .param p1, "mojoResult"    # I
    .param p2, "callback"    # Lorg/chromium/mojo/system/AsyncWaiter$Callback;
    .param p3, "cancellable"    # Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 520
    invoke-static {p3}, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->access$400(Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-static {p3}, Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;->access$500(Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;)V

    .line 525
    invoke-static {p1}, Lorg/chromium/mojo/system/impl/CoreImpl;->isUnrecoverableError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {v0, p1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    invoke-interface {p2, v0}, Lorg/chromium/mojo/system/AsyncWaiter$Callback;->onError(Lorg/chromium/mojo/system/MojoException;)V

    goto :goto_0

    .line 529
    :cond_1
    invoke-interface {p2, p1}, Lorg/chromium/mojo/system/AsyncWaiter$Callback;->onResult(I)V

    goto :goto_0
.end method


# virtual methods
.method public acquireNativeHandle(I)Lorg/chromium/mojo/system/UntypedHandle;
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 197
    new-instance v0, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;

    invoke-direct {v0, p0, p1}, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    return-object v0
.end method

.method public asyncWait(Lorg/chromium/mojo/system/Handle;Lorg/chromium/mojo/system/Core$HandleSignals;JLorg/chromium/mojo/system/AsyncWaiter$Callback;)Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;
    .locals 6
    .param p1, "handle"    # Lorg/chromium/mojo/system/Handle;
    .param p2, "signals"    # Lorg/chromium/mojo/system/Core$HandleSignals;
    .param p3, "deadline"    # J
    .param p5, "callback"    # Lorg/chromium/mojo/system/AsyncWaiter$Callback;

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl;->getMojoHandle(Lorg/chromium/mojo/system/Handle;)I

    move-result v1

    invoke-virtual {p2}, Lorg/chromium/mojo/system/Core$HandleSignals;->getFlags()I

    move-result v2

    move-object v0, p0

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeAsyncWait(IIJLorg/chromium/mojo/system/AsyncWaiter$Callback;)Lorg/chromium/mojo/system/impl/CoreImpl$AsyncWaiterCancellableImpl;

    move-result-object v0

    return-object v0
.end method

.method beginReadData(Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;ILorg/chromium/mojo/system/DataPipe$ReadFlags;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "handle"    # Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;
    .param p2, "numBytes"    # I
    .param p3, "flags"    # Lorg/chromium/mojo/system/DataPipe$ReadFlags;

    .prologue
    .line 321
    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;->getMojoHandle()I

    move-result v1

    invoke-virtual {p3}, Lorg/chromium/mojo/system/DataPipe$ReadFlags;->getFlags()I

    move-result v2

    invoke-direct {p0, v1, p2, v2}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeBeginReadData(III)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;

    move-result-object v0

    .line 323
    .local v0, "result":Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;
    invoke-virtual {v0}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;->getMojoResult()I

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    new-instance v1, Lorg/chromium/mojo/system/MojoException;

    invoke-virtual {v0}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;->getMojoResult()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v1

    .line 326
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method beginWriteData(Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;ILorg/chromium/mojo/system/DataPipe$WriteFlags;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "handle"    # Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;
    .param p2, "numBytes"    # I
    .param p3, "flags"    # Lorg/chromium/mojo/system/DataPipe$WriteFlags;

    .prologue
    .line 353
    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;->getMojoHandle()I

    move-result v1

    invoke-virtual {p3}, Lorg/chromium/mojo/system/DataPipe$WriteFlags;->getFlags()I

    move-result v2

    invoke-direct {p0, v1, p2, v2}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeBeginWriteData(III)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;

    move-result-object v0

    .line 355
    .local v0, "result":Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;
    invoke-virtual {v0}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;->getMojoResult()I

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    new-instance v1, Lorg/chromium/mojo/system/MojoException;

    invoke-virtual {v0}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;->getMojoResult()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v1

    .line 358
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method close(I)V
    .locals 2
    .param p1, "mojoHandle"    # I

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeClose(I)I

    move-result v0

    .line 223
    .local v0, "mojoResult":I
    if-eqz v0, :cond_0

    .line 224
    new-instance v1, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {v1, v0}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v1

    .line 226
    :cond_0
    return-void
.end method

.method closeWithResult(I)I
    .locals 1
    .param p1, "mojoHandle"    # I

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeClose(I)I

    move-result v0

    return v0
.end method

.method public createDataPipe(Lorg/chromium/mojo/system/DataPipe$CreateOptions;)Lorg/chromium/mojo/system/Pair;
    .locals 5
    .param p1, "options"    # Lorg/chromium/mojo/system/DataPipe$CreateOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/DataPipe$CreateOptions;",
            ")",
            "Lorg/chromium/mojo/system/Pair",
            "<",
            "Lorg/chromium/mojo/system/DataPipe$ProducerHandle;",
            "Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "optionsBuffer":Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_0

    .line 157
    invoke-static {v3}, Lorg/chromium/mojo/system/impl/CoreImpl;->allocateDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 158
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 159
    const/4 v2, 0x4

    invoke-virtual {p1}, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->getFlags()Lorg/chromium/mojo/system/DataPipe$CreateFlags;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/system/DataPipe$CreateFlags;->getFlags()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 160
    const/16 v2, 0x8

    invoke-virtual {p1}, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->getElementNumBytes()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 161
    const/16 v2, 0xc

    invoke-virtual {p1}, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->getCapacityNumBytes()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 163
    :cond_0
    invoke-direct {p0, v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeCreateDataPipe(Ljava/nio/ByteBuffer;)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;

    move-result-object v1

    .line 164
    .local v1, "result":Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;
    invoke-virtual {v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->getMojoResult()I

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    new-instance v2, Lorg/chromium/mojo/system/MojoException;

    invoke-virtual {v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->getMojoResult()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v2

    .line 167
    :cond_1
    new-instance v2, Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;

    invoke-virtual {v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->getMojoHandle1()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    new-instance v3, Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;

    invoke-virtual {v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->getMojoHandle2()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    invoke-static {v2, v3}, Lorg/chromium/mojo/system/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lorg/chromium/mojo/system/Pair;

    move-result-object v2

    return-object v2
.end method

.method public createMessagePipe(Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;)Lorg/chromium/mojo/system/Pair;
    .locals 5
    .param p1, "options"    # Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;",
            ")",
            "Lorg/chromium/mojo/system/Pair",
            "<",
            "Lorg/chromium/mojo/system/MessagePipeHandle;",
            "Lorg/chromium/mojo/system/MessagePipeHandle;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "optionsBuffer":Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_0

    .line 137
    invoke-static {v3}, Lorg/chromium/mojo/system/impl/CoreImpl;->allocateDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 138
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 139
    const/4 v2, 0x4

    invoke-virtual {p1}, Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;->getFlags()Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;->getFlags()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 141
    :cond_0
    invoke-direct {p0, v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeCreateMessagePipe(Ljava/nio/ByteBuffer;)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;

    move-result-object v1

    .line 142
    .local v1, "result":Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;
    invoke-virtual {v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->getMojoResult()I

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    new-instance v2, Lorg/chromium/mojo/system/MojoException;

    invoke-virtual {v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->getMojoResult()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v2

    .line 145
    :cond_1
    new-instance v2, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;

    invoke-virtual {v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->getMojoHandle1()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    new-instance v3, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;

    invoke-virtual {v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->getMojoHandle2()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    invoke-static {v2, v3}, Lorg/chromium/mojo/system/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lorg/chromium/mojo/system/Pair;

    move-result-object v2

    return-object v2
.end method

.method public createSharedBuffer(Lorg/chromium/mojo/system/SharedBufferHandle$CreateOptions;J)Lorg/chromium/mojo/system/SharedBufferHandle;
    .locals 4
    .param p1, "options"    # Lorg/chromium/mojo/system/SharedBufferHandle$CreateOptions;
    .param p2, "numBytes"    # J

    .prologue
    const/16 v3, 0x8

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "optionsBuffer":Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_0

    .line 180
    invoke-static {v3}, Lorg/chromium/mojo/system/impl/CoreImpl;->allocateDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 181
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 182
    const/4 v2, 0x4

    invoke-virtual {p1}, Lorg/chromium/mojo/system/SharedBufferHandle$CreateOptions;->getFlags()Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;->getFlags()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 184
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeCreateSharedBuffer(Ljava/nio/ByteBuffer;J)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;

    move-result-object v1

    .line 185
    .local v1, "result":Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;
    invoke-virtual {v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->getMojoResult()I

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    new-instance v2, Lorg/chromium/mojo/system/MojoException;

    invoke-virtual {v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->getMojoResult()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v2

    .line 188
    :cond_1
    sget-boolean v2, Lorg/chromium/mojo/system/impl/CoreImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->getMojoHandle2()I

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 189
    :cond_2
    new-instance v2, Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;

    invoke-virtual {v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->getMojoHandle1()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    return-object v2
.end method

.method discardData(Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;ILorg/chromium/mojo/system/DataPipe$ReadFlags;)I
    .locals 4
    .param p1, "handle"    # Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;
    .param p2, "numBytes"    # I
    .param p3, "flags"    # Lorg/chromium/mojo/system/DataPipe$ReadFlags;

    .prologue
    .line 293
    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;->getMojoHandle()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p3}, Lorg/chromium/mojo/system/DataPipe$ReadFlags;->getFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v1, v2, p2, v3}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeReadData(ILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 295
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 296
    new-instance v1, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {v1, v0}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v1

    .line 298
    :cond_0
    return v0
.end method

.method duplicate(Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;Lorg/chromium/mojo/system/SharedBufferHandle$DuplicateOptions;)Lorg/chromium/mojo/system/SharedBufferHandle;
    .locals 4
    .param p1, "handle"    # Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;
    .param p2, "options"    # Lorg/chromium/mojo/system/SharedBufferHandle$DuplicateOptions;

    .prologue
    const/16 v3, 0x8

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "optionsBuffer":Ljava/nio/ByteBuffer;
    if-eqz p2, :cond_0

    .line 377
    invoke-static {v3}, Lorg/chromium/mojo/system/impl/CoreImpl;->allocateDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 378
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 379
    const/4 v2, 0x4

    invoke-virtual {p2}, Lorg/chromium/mojo/system/SharedBufferHandle$DuplicateOptions;->getFlags()Lorg/chromium/mojo/system/SharedBufferHandle$DuplicateFlags;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/system/SharedBufferHandle$DuplicateFlags;->getFlags()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 381
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;->getMojoHandle()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeDuplicate(ILjava/nio/ByteBuffer;)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;

    move-result-object v1

    .line 382
    .local v1, "result":Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;
    invoke-virtual {v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->getMojoResult()I

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    new-instance v2, Lorg/chromium/mojo/system/MojoException;

    invoke-virtual {v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->getMojoResult()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v2

    .line 385
    :cond_1
    sget-boolean v2, Lorg/chromium/mojo/system/impl/CoreImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->getMojoHandle2()I

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 386
    :cond_2
    new-instance v2, Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;

    invoke-virtual {v1}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCreationResult;->getMojoHandle1()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    return-object v2
.end method

.method endReadData(Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;I)V
    .locals 2
    .param p1, "handle"    # Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;
    .param p2, "numBytesRead"    # I

    .prologue
    .line 333
    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;->getMojoHandle()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeEndReadData(II)I

    move-result v0

    .line 334
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 335
    new-instance v1, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {v1, v0}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v1

    .line 337
    :cond_0
    return-void
.end method

.method endWriteData(Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;I)V
    .locals 2
    .param p1, "handle"    # Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;
    .param p2, "numBytesWritten"    # I

    .prologue
    .line 365
    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;->getMojoHandle()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeEndWriteData(II)I

    move-result v0

    .line 366
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 367
    new-instance v1, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {v1, v0}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v1

    .line 369
    :cond_0
    return-void
.end method

.method public getDefaultAsyncWaiter()Lorg/chromium/mojo/system/AsyncWaiter;
    .locals 0

    .prologue
    .line 205
    return-object p0
.end method

.method public getTimeTicksNow()J
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeGetTimeTicksNow()J

    move-result-wide v0

    return-wide v0
.end method

.method map(Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;JJLorg/chromium/mojo/system/SharedBufferHandle$MapFlags;)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "handle"    # Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;
    .param p2, "offset"    # J
    .param p4, "numBytes"    # J
    .param p6, "flags"    # Lorg/chromium/mojo/system/SharedBufferHandle$MapFlags;

    .prologue
    .line 393
    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;->getMojoHandle()I

    move-result v1

    invoke-virtual {p6}, Lorg/chromium/mojo/system/SharedBufferHandle$MapFlags;->getFlags()I

    move-result v6

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeMap(IJJI)Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;

    move-result-object v7

    .line 395
    .local v7, "result":Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;
    invoke-virtual {v7}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;->getMojoResult()I

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    invoke-virtual {v7}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;->getMojoResult()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0

    .line 398
    :cond_0
    invoke-virtual {v7}, Lorg/chromium/mojo/system/impl/CoreImpl$NativeCodeAndBufferResult;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method readData(Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;Ljava/nio/ByteBuffer;Lorg/chromium/mojo/system/DataPipe$ReadFlags;)I
    .locals 4
    .param p1, "handle"    # Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;
    .param p2, "elements"    # Ljava/nio/ByteBuffer;
    .param p3, "flags"    # Lorg/chromium/mojo/system/DataPipe$ReadFlags;

    .prologue
    .line 305
    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;->getMojoHandle()I

    move-result v2

    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p3}, Lorg/chromium/mojo/system/DataPipe$ReadFlags;->getFlags()I

    move-result v3

    invoke-direct {p0, v2, p2, v1, v3}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeReadData(ILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 307
    .local v0, "result":I
    if-gez v0, :cond_1

    .line 308
    new-instance v1, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {v1, v0}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v1

    .line 305
    .end local v0    # "result":I
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    goto :goto_0

    .line 310
    .restart local v0    # "result":I
    :cond_1
    if-eqz p2, :cond_2

    .line 311
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 313
    :cond_2
    return v0
.end method

.method readMessage(Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;Ljava/nio/ByteBuffer;ILorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;
    .locals 7
    .param p1, "handle"    # Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;
    .param p2, "bytes"    # Ljava/nio/ByteBuffer;
    .param p3, "maxNumberOfHandles"    # I
    .param p4, "flags"    # Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;

    .prologue
    .line 261
    const/4 v1, 0x0

    .line 262
    .local v1, "handlesBuffer":Ljava/nio/ByteBuffer;
    if-lez p3, :cond_0

    .line 263
    mul-int/lit8 v5, p3, 0x4

    invoke-static {v5}, Lorg/chromium/mojo/system/impl/CoreImpl;->allocateDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 265
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;->getMojoHandle()I

    move-result v5

    invoke-virtual {p4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;->getFlags()I

    move-result v6

    invoke-direct {p0, v5, p2, v1, v6}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeReadMessage(ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;

    move-result-object v4

    .line 267
    .local v4, "result":Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;
    invoke-virtual {v4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getMojoResult()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getMojoResult()I

    move-result v5

    const/4 v6, -0x8

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getMojoResult()I

    move-result v5

    const/16 v6, -0x11

    if-eq v5, v6, :cond_1

    .line 270
    new-instance v5, Lorg/chromium/mojo/system/MojoException;

    invoke-virtual {v4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getMojoResult()I

    move-result v6

    invoke-direct {v5, v6}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v5

    .line 273
    :cond_1
    invoke-virtual {v4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getMojoResult()I

    move-result v5

    if-nez v5, :cond_4

    .line 274
    if-eqz p2, :cond_2

    .line 275
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 276
    invoke-virtual {v4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getMessageSize()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 279
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getHandlesCount()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 280
    .local v0, "handles":Ljava/util/List;, "Ljava/util/List<Lorg/chromium/mojo/system/UntypedHandle;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getHandlesCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 281
    mul-int/lit8 v5, v2, 0x4

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 282
    .local v3, "mojoHandle":I
    new-instance v5, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;

    invoke-direct {v5, p0, v3}, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    .end local v3    # "mojoHandle":I
    :cond_3
    invoke-virtual {v4, v0}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->setHandles(Ljava/util/List;)V

    .line 286
    .end local v0    # "handles":Ljava/util/List;, "Ljava/util/List<Lorg/chromium/mojo/system/UntypedHandle;>;"
    .end local v2    # "i":I
    :cond_4
    return-object v4
.end method

.method unmap(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeUnmap(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 406
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 407
    new-instance v1, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {v1, v0}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v1

    .line 409
    :cond_0
    return-void
.end method

.method public wait(Lorg/chromium/mojo/system/Handle;Lorg/chromium/mojo/system/Core$HandleSignals;J)Lorg/chromium/mojo/system/Core$WaitResult;
    .locals 8
    .param p1, "handle"    # Lorg/chromium/mojo/system/Handle;
    .param p2, "signals"    # Lorg/chromium/mojo/system/Core$HandleSignals;
    .param p3, "deadline"    # J

    .prologue
    .line 119
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->allocateDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 120
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    new-instance v6, Lorg/chromium/mojo/system/Core$WaitResult;

    invoke-direct {v6}, Lorg/chromium/mojo/system/Core$WaitResult;-><init>()V

    .line 121
    .local v6, "result":Lorg/chromium/mojo/system/Core$WaitResult;
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl;->getMojoHandle(Lorg/chromium/mojo/system/Handle;)I

    move-result v2

    invoke-virtual {p2}, Lorg/chromium/mojo/system/Core$HandleSignals;->getFlags()I

    move-result v3

    move-object v0, p0

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeWait(Ljava/nio/ByteBuffer;IIJ)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->filterMojoResultForWait(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/chromium/mojo/system/Core$WaitResult;->setMojoResult(I)V

    .line 123
    new-instance v7, Lorg/chromium/mojo/system/Core$HandleSignalsState;

    new-instance v0, Lorg/chromium/mojo/system/Core$HandleSignals;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    invoke-direct {v0, v2}, Lorg/chromium/mojo/system/Core$HandleSignals;-><init>(I)V

    new-instance v2, Lorg/chromium/mojo/system/Core$HandleSignals;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    invoke-direct {v2, v3}, Lorg/chromium/mojo/system/Core$HandleSignals;-><init>(I)V

    invoke-direct {v7, v0, v2}, Lorg/chromium/mojo/system/Core$HandleSignalsState;-><init>(Lorg/chromium/mojo/system/Core$HandleSignals;Lorg/chromium/mojo/system/Core$HandleSignals;)V

    .line 125
    .local v7, "signalsState":Lorg/chromium/mojo/system/Core$HandleSignalsState;
    invoke-virtual {v6, v7}, Lorg/chromium/mojo/system/Core$WaitResult;->setHandleSignalsState(Lorg/chromium/mojo/system/Core$HandleSignalsState;)V

    .line 126
    return-object v6
.end method

.method public waitMany(Ljava/util/List;J)Lorg/chromium/mojo/system/Core$WaitManyResult;
    .locals 12
    .param p2, "deadline"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/mojo/system/Pair",
            "<",
            "Lorg/chromium/mojo/system/Handle;",
            "Lorg/chromium/mojo/system/Core$HandleSignals;",
            ">;>;J)",
            "Lorg/chromium/mojo/system/Core$WaitManyResult;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "handles":Ljava/util/List;, "Ljava/util/List<Lorg/chromium/mojo/system/Pair<Lorg/chromium/mojo/system/Handle;Lorg/chromium/mojo/system/Core$HandleSignals;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Lorg/chromium/mojo/system/impl/CoreImpl;->allocateDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 88
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 89
    .local v5, "index":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/mojo/system/Pair;

    .line 90
    .local v2, "handle":Lorg/chromium/mojo/system/Pair;, "Lorg/chromium/mojo/system/Pair<Lorg/chromium/mojo/system/Handle;Lorg/chromium/mojo/system/Core$HandleSignals;>;"
    mul-int/lit8 v9, v5, 0x4

    iget-object v8, v2, Lorg/chromium/mojo/system/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lorg/chromium/mojo/system/Handle;

    invoke-direct {p0, v8}, Lorg/chromium/mojo/system/impl/CoreImpl;->getMojoHandle(Lorg/chromium/mojo/system/Handle;)I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 91
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x4

    mul-int/lit8 v9, v5, 0x4

    add-int/2addr v9, v8

    iget-object v8, v2, Lorg/chromium/mojo/system/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lorg/chromium/mojo/system/Core$HandleSignals;

    invoke-virtual {v8}, Lorg/chromium/mojo/system/Core$HandleSignals;->getFlags()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 93
    add-int/lit8 v5, v5, 0x1

    .line 94
    goto :goto_0

    .line 95
    .end local v2    # "handle":Lorg/chromium/mojo/system/Pair;, "Lorg/chromium/mojo/system/Pair<Lorg/chromium/mojo/system/Handle;Lorg/chromium/mojo/system/Core$HandleSignals;>;"
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeWaitMany(Ljava/nio/ByteBuffer;J)I

    move-result v1

    .line 96
    .local v1, "code":I
    new-instance v6, Lorg/chromium/mojo/system/Core$WaitManyResult;

    invoke-direct {v6}, Lorg/chromium/mojo/system/Core$WaitManyResult;-><init>()V

    .line 97
    .local v6, "result":Lorg/chromium/mojo/system/Core$WaitManyResult;
    invoke-static {v1}, Lorg/chromium/mojo/system/impl/CoreImpl;->filterMojoResultForWait(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lorg/chromium/mojo/system/Core$WaitManyResult;->setMojoResult(I)V

    .line 98
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lorg/chromium/mojo/system/Core$WaitManyResult;->setHandleIndex(I)V

    .line 99
    invoke-virtual {v6}, Lorg/chromium/mojo/system/Core$WaitManyResult;->getMojoResult()I

    move-result v8

    const/4 v9, -0x3

    if-eq v8, v9, :cond_2

    invoke-virtual {v6}, Lorg/chromium/mojo/system/Core$WaitManyResult;->getMojoResult()I

    move-result v8

    const/4 v9, -0x8

    if-eq v8, v9, :cond_2

    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    new-array v7, v8, [Lorg/chromium/mojo/system/Core$HandleSignalsState;

    .line 102
    .local v7, "states":[Lorg/chromium/mojo/system/Core$HandleSignalsState;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 103
    new-instance v8, Lorg/chromium/mojo/system/Core$HandleSignalsState;

    new-instance v9, Lorg/chromium/mojo/system/Core$HandleSignals;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v10, v3

    mul-int/lit8 v10, v10, 0x8

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    invoke-direct {v9, v10}, Lorg/chromium/mojo/system/Core$HandleSignals;-><init>(I)V

    new-instance v10, Lorg/chromium/mojo/system/Core$HandleSignals;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v11, v3

    mul-int/lit8 v11, v11, 0x8

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    invoke-direct {v10, v11}, Lorg/chromium/mojo/system/Core$HandleSignals;-><init>(I)V

    invoke-direct {v8, v9, v10}, Lorg/chromium/mojo/system/Core$HandleSignalsState;-><init>(Lorg/chromium/mojo/system/Core$HandleSignals;Lorg/chromium/mojo/system/Core$HandleSignals;)V

    aput-object v8, v7, v3

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 107
    :cond_1
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/chromium/mojo/system/Core$WaitManyResult;->setSignalStates(Ljava/util/List;)V

    .line 109
    .end local v3    # "i":I
    .end local v7    # "states":[Lorg/chromium/mojo/system/Core$HandleSignalsState;
    :cond_2
    return-object v6
.end method

.method writeData(Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;Ljava/nio/ByteBuffer;Lorg/chromium/mojo/system/DataPipe$WriteFlags;)I
    .locals 3
    .param p1, "handle"    # Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;
    .param p2, "elements"    # Ljava/nio/ByteBuffer;
    .param p3, "flags"    # Lorg/chromium/mojo/system/DataPipe$WriteFlags;

    .prologue
    .line 344
    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;->getMojoHandle()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p3}, Lorg/chromium/mojo/system/DataPipe$WriteFlags;->getFlags()I

    move-result v2

    invoke-direct {p0, v0, p2, v1, v2}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeWriteData(ILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method writeMessage(Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;Ljava/nio/ByteBuffer;Ljava/util/List;Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;)V
    .locals 9
    .param p1, "pipeHandle"    # Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;
    .param p2, "bytes"    # Ljava/nio/ByteBuffer;
    .param p4, "flags"    # Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List",
            "<+",
            "Lorg/chromium/mojo/system/Handle;",
            ">;",
            "Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "handles":Ljava/util/List;, "Ljava/util/List<+Lorg/chromium/mojo/system/Handle;>;"
    const/4 v3, 0x0

    .line 233
    const/4 v4, 0x0

    .line 234
    .local v4, "handlesBuffer":Ljava/nio/ByteBuffer;
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->allocateDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 236
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/mojo/system/Handle;

    .line 237
    .local v6, "handle":Lorg/chromium/mojo/system/Handle;
    invoke-direct {p0, v6}, Lorg/chromium/mojo/system/impl/CoreImpl;->getMojoHandle(Lorg/chromium/mojo/system/Handle;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 239
    .end local v6    # "handle":Lorg/chromium/mojo/system/Handle;
    :cond_0
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 241
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;->getMojoHandle()I

    move-result v1

    if-nez p2, :cond_2

    :goto_1
    invoke-virtual {p4}, Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;->getFlags()I

    move-result v5

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/mojo/system/impl/CoreImpl;->nativeWriteMessage(ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)I

    move-result v8

    .line 243
    .local v8, "mojoResult":I
    if-eqz v8, :cond_3

    .line 244
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {v0, v8}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0

    .line 241
    .end local v8    # "mojoResult":I
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    goto :goto_1

    .line 247
    .restart local v8    # "mojoResult":I
    :cond_3
    if-eqz p3, :cond_5

    .line 248
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/mojo/system/Handle;

    .line 249
    .restart local v6    # "handle":Lorg/chromium/mojo/system/Handle;
    invoke-interface {v6}, Lorg/chromium/mojo/system/Handle;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 250
    check-cast v6, Lorg/chromium/mojo/system/impl/HandleBase;

    .end local v6    # "handle":Lorg/chromium/mojo/system/Handle;
    invoke-virtual {v6}, Lorg/chromium/mojo/system/impl/HandleBase;->invalidateHandle()V

    goto :goto_2

    .line 254
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method
