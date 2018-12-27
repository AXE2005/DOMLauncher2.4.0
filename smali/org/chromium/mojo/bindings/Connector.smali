.class public Lorg/chromium/mojo/bindings/Connector;
.super Ljava/lang/Object;
.source "Connector.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;
.implements Lorg/chromium/mojo/bindings/HandleOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/Connector$1;,
        Lorg/chromium/mojo/bindings/Connector$AsyncWaiterCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/mojo/bindings/MessageReceiver;",
        "Lorg/chromium/mojo/bindings/HandleOwner",
        "<",
        "Lorg/chromium/mojo/system/MessagePipeHandle;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAsyncWaiter:Lorg/chromium/mojo/system/AsyncWaiter;

.field private final mAsyncWaiterCallback:Lorg/chromium/mojo/bindings/Connector$AsyncWaiterCallback;

.field private mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

.field private mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

.field private mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mMessagePipeHandle:Lorg/chromium/mojo/system/MessagePipeHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/chromium/mojo/bindings/Connector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/mojo/bindings/Connector;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V
    .locals 1
    .param p1, "messagePipeHandle"    # Lorg/chromium/mojo/system/MessagePipeHandle;

    .prologue
    .line 61
    invoke-static {p1}, Lorg/chromium/mojo/bindings/BindingsHelper;->getDefaultAsyncWaiterForHandle(Lorg/chromium/mojo/system/Handle;)Lorg/chromium/mojo/system/AsyncWaiter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/Connector;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/system/AsyncWaiter;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/system/AsyncWaiter;)V
    .locals 2
    .param p1, "messagePipeHandle"    # Lorg/chromium/mojo/system/MessagePipeHandle;
    .param p2, "asyncWaiter"    # Lorg/chromium/mojo/system/AsyncWaiter;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/chromium/mojo/bindings/Connector$AsyncWaiterCallback;

    invoke-direct {v0, p0, v1}, Lorg/chromium/mojo/bindings/Connector$AsyncWaiterCallback;-><init>(Lorg/chromium/mojo/bindings/Connector;Lorg/chromium/mojo/bindings/Connector$1;)V

    iput-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mAsyncWaiterCallback:Lorg/chromium/mojo/bindings/Connector$AsyncWaiterCallback;

    .line 69
    iput-object v1, p0, Lorg/chromium/mojo/bindings/Connector;->mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    .line 70
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Connector;->mMessagePipeHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    .line 71
    iput-object p2, p0, Lorg/chromium/mojo/bindings/Connector;->mAsyncWaiter:Lorg/chromium/mojo/system/AsyncWaiter;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/mojo/bindings/Connector;I)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/mojo/bindings/Connector;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/Connector;->onAsyncWaiterResult(I)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/mojo/bindings/Connector;Lorg/chromium/mojo/system/MojoException;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/mojo/bindings/Connector;
    .param p1, "x1"    # Lorg/chromium/mojo/system/MojoException;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/Connector;->onError(Lorg/chromium/mojo/system/MojoException;)V

    return-void
.end method

.method private cancelIfActive()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    invoke-interface {v0}, Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;->cancel()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    .line 218
    :cond_0
    return-void
.end method

.method private onAsyncWaiterResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    .line 165
    if-nez p1, :cond_0

    .line 166
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Connector;->readOutstandingMessages()V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {v0, p1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/Connector;->onError(Lorg/chromium/mojo/system/MojoException;)V

    goto :goto_0
.end method

.method private onError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 1
    .param p1, "exception"    # Lorg/chromium/mojo/system/MojoException;

    .prologue
    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    .line 174
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Connector;->close()V

    .line 175
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    invoke-interface {v0, p1}, Lorg/chromium/mojo/bindings/ConnectionErrorHandler;->onConnectionError(Lorg/chromium/mojo/system/MojoException;)V

    .line 178
    :cond_0
    return-void
.end method

.method static readAndDispatchMessage(Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/bindings/MessageReceiver;)I
    .locals 5
    .param p0, "handle"    # Lorg/chromium/mojo/system/MessagePipeHandle;
    .param p1, "receiver"    # Lorg/chromium/mojo/bindings/MessageReceiver;

    .prologue
    .line 229
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;->NONE:Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;

    invoke-interface {p0, v2, v3, v4}, Lorg/chromium/mojo/system/MessagePipeHandle;->readMessage(Ljava/nio/ByteBuffer;ILorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;

    move-result-object v1

    .line 230
    .local v1, "result":Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;
    invoke-virtual {v1}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getMojoResult()I

    move-result v2

    const/4 v3, -0x8

    if-eq v2, v3, :cond_0

    .line 231
    invoke-virtual {v1}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getMojoResult()I

    move-result v2

    .line 239
    :goto_0
    return v2

    .line 233
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getMessageSize()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 234
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getHandlesCount()I

    move-result v2

    sget-object v3, Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;->NONE:Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;

    invoke-interface {p0, v0, v2, v3}, Lorg/chromium/mojo/system/MessagePipeHandle;->readMessage(Ljava/nio/ByteBuffer;ILorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;

    move-result-object v1

    .line 236
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getMojoResult()I

    move-result v2

    if-nez v2, :cond_1

    .line 237
    new-instance v2, Lorg/chromium/mojo/bindings/Message;

    invoke-virtual {v1}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getHandles()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/chromium/mojo/bindings/Message;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    invoke-interface {p1, v2}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 239
    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->getMojoResult()I

    move-result v2

    goto :goto_0
.end method

.method private readOutstandingMessages()V
    .locals 4

    .prologue
    .line 200
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/chromium/mojo/bindings/Connector;->mMessagePipeHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    iget-object v3, p0, Lorg/chromium/mojo/bindings/Connector;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-static {v2, v3}, Lorg/chromium/mojo/bindings/Connector;->readAndDispatchMessage(Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/bindings/MessageReceiver;)I
    :try_end_0
    .catch Lorg/chromium/mojo/system/MojoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 205
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 206
    const/16 v2, -0x11

    if-ne v1, v2, :cond_1

    .line 207
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Connector;->registerAsyncWaiterForRead()V

    .line 211
    .end local v1    # "result":I
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Lorg/chromium/mojo/system/MojoException;
    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/Connector;->onError(Lorg/chromium/mojo/system/MojoException;)V

    goto :goto_0

    .line 209
    .end local v0    # "e":Lorg/chromium/mojo/system/MojoException;
    .restart local v1    # "result":I
    :cond_1
    new-instance v2, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {v2, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    invoke-direct {p0, v2}, Lorg/chromium/mojo/bindings/Connector;->onError(Lorg/chromium/mojo/system/MojoException;)V

    goto :goto_0
.end method

.method private registerAsyncWaiterForRead()V
    .locals 6

    .prologue
    .line 184
    sget-boolean v0, Lorg/chromium/mojo/bindings/Connector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mAsyncWaiter:Lorg/chromium/mojo/system/AsyncWaiter;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mAsyncWaiter:Lorg/chromium/mojo/system/AsyncWaiter;

    iget-object v1, p0, Lorg/chromium/mojo/bindings/Connector;->mMessagePipeHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    sget-object v2, Lorg/chromium/mojo/system/Core$HandleSignals;->READABLE:Lorg/chromium/mojo/system/Core$HandleSignals;

    const-wide/16 v3, -0x1

    iget-object v5, p0, Lorg/chromium/mojo/bindings/Connector;->mAsyncWaiterCallback:Lorg/chromium/mojo/bindings/Connector$AsyncWaiterCallback;

    invoke-interface/range {v0 .. v5}, Lorg/chromium/mojo/system/AsyncWaiter;->asyncWait(Lorg/chromium/mojo/system/Handle;Lorg/chromium/mojo/system/Core$HandleSignals;JLorg/chromium/mojo/system/AsyncWaiter$Callback;)Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_1
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/Connector;->onError(Lorg/chromium/mojo/system/MojoException;)V

    goto :goto_0
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 5
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Connector;->mMessagePipeHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->getHandles()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;->NONE:Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;

    invoke-interface {v1, v2, v3, v4}, Lorg/chromium/mojo/system/MessagePipeHandle;->writeMessage(Ljava/nio/ByteBuffer;Ljava/util/List;Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;)V
    :try_end_0
    .catch Lorg/chromium/mojo/system/MojoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const/4 v1, 0x1

    .line 108
    :goto_0
    return v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lorg/chromium/mojo/system/MojoException;
    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/Connector;->onError(Lorg/chromium/mojo/system/MojoException;)V

    .line 108
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Connector;->cancelIfActive()V

    .line 134
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mMessagePipeHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {v0}, Lorg/chromium/mojo/system/MessagePipeHandle;->close()V

    .line 135
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->close()V

    .line 138
    :cond_0
    return-void
.end method

.method public bridge synthetic passHandle()Lorg/chromium/mojo/system/Handle;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Connector;->passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    return-object v0
.end method

.method public passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Connector;->cancelIfActive()V

    .line 121
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Connector;->mMessagePipeHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {v1}, Lorg/chromium/mojo/system/MessagePipeHandle;->pass()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    .line 122
    .local v0, "handle":Lorg/chromium/mojo/system/MessagePipeHandle;
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Connector;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lorg/chromium/mojo/bindings/Connector;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v1}, Lorg/chromium/mojo/bindings/MessageReceiver;->close()V

    .line 125
    :cond_0
    return-object v0
.end method

.method public setErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V
    .locals 0
    .param p1, "errorHandler"    # Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Connector;->mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    .line 87
    return-void
.end method

.method public setIncomingMessageReceiver(Lorg/chromium/mojo/bindings/MessageReceiver;)V
    .locals 0
    .param p1, "incomingMessageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiver;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Connector;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 79
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lorg/chromium/mojo/bindings/Connector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector;->mCancellable:Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 94
    :cond_0
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Connector;->registerAsyncWaiterForRead()V

    .line 95
    return-void
.end method
