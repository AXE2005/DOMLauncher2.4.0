.class public Lorg/chromium/mojo/bindings/RouterImpl;
.super Ljava/lang/Object;
.source "RouterImpl.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Router;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/RouterImpl$1;,
        Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mConnector:Lorg/chromium/mojo/bindings/Connector;

.field private mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

.field private mNextRequestId:J

.field private mResponders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/chromium/mojo/bindings/MessageReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/mojo/bindings/RouterImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V
    .locals 1
    .param p1, "messagePipeHandle"    # Lorg/chromium/mojo/system/MessagePipeHandle;

    .prologue
    .line 68
    invoke-static {p1}, Lorg/chromium/mojo/bindings/BindingsHelper;->getDefaultAsyncWaiterForHandle(Lorg/chromium/mojo/system/Handle;)Lorg/chromium/mojo/system/AsyncWaiter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/chromium/mojo/bindings/RouterImpl;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/system/AsyncWaiter;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/system/AsyncWaiter;)V
    .locals 3
    .param p1, "messagePipeHandle"    # Lorg/chromium/mojo/system/MessagePipeHandle;
    .param p2, "asyncWaiter"    # Lorg/chromium/mojo/system/AsyncWaiter;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mNextRequestId:J

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mResponders:Ljava/util/Map;

    .line 79
    new-instance v0, Lorg/chromium/mojo/bindings/Connector;

    invoke-direct {v0, p1, p2}, Lorg/chromium/mojo/bindings/Connector;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/system/AsyncWaiter;)V

    iput-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mConnector:Lorg/chromium/mojo/bindings/Connector;

    .line 80
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mConnector:Lorg/chromium/mojo/bindings/Connector;

    new-instance v1, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/mojo/bindings/RouterImpl$ResponderThunk;-><init>(Lorg/chromium/mojo/bindings/RouterImpl;Lorg/chromium/mojo/bindings/RouterImpl$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/mojo/bindings/Connector;->setIncomingMessageReceiver(Lorg/chromium/mojo/bindings/MessageReceiver;)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/mojo/bindings/RouterImpl;Lorg/chromium/mojo/bindings/Message;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/mojo/bindings/RouterImpl;
    .param p1, "x1"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/RouterImpl;->handleIncomingMessage(Lorg/chromium/mojo/bindings/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/mojo/bindings/RouterImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/mojo/bindings/RouterImpl;

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/RouterImpl;->handleConnectorClose()V

    return-void
.end method

.method private handleConnectorClose()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    invoke-interface {v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->close()V

    .line 194
    :cond_0
    return-void
.end method

.method private handleIncomingMessage(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 7
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    const/4 v4, 0x0

    .line 164
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v0

    .line 165
    .local v0, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 166
    iget-object v5, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    if-eqz v5, :cond_1

    .line 167
    iget-object v4, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    invoke-interface {v4, p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result v4

    .line 187
    :cond_0
    :goto_0
    return v4

    .line 171
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/RouterImpl;->close()V

    goto :goto_0

    .line 173
    :cond_2
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 174
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    .line 175
    .local v1, "requestId":J
    iget-object v5, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mResponders:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 176
    .local v3, "responder":Lorg/chromium/mojo/bindings/MessageReceiver;
    if-eqz v3, :cond_0

    .line 179
    iget-object v4, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mResponders:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-interface {v3, p1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    move-result v4

    goto :goto_0

    .line 182
    .end local v1    # "requestId":J
    .end local v3    # "responder":Lorg/chromium/mojo/bindings/MessageReceiver;
    :cond_3
    iget-object v5, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    if-eqz v5, :cond_0

    .line 183
    iget-object v4, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    invoke-interface {v4, p1}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    move-result v4

    goto :goto_0
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 1
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mConnector:Lorg/chromium/mojo/bindings/Connector;

    invoke-virtual {v0, p1}, Lorg/chromium/mojo/bindings/Connector;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    move-result v0

    return v0
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 8
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;
    .param p2, "responder"    # Lorg/chromium/mojo/bindings/MessageReceiver;

    .prologue
    const-wide/16 v6, 0x1

    const/4 v3, 0x1

    .line 114
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 116
    .local v0, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    sget-boolean v4, Lorg/chromium/mojo/bindings/RouterImpl;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 119
    :cond_0
    iget-wide v1, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mNextRequestId:J

    add-long v4, v1, v6

    iput-wide v4, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mNextRequestId:J

    .line 121
    .local v1, "requestId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_1

    .line 122
    iget-wide v1, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mNextRequestId:J

    .end local v1    # "requestId":J
    add-long v4, v1, v6

    iput-wide v4, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mNextRequestId:J

    .line 124
    .restart local v1    # "requestId":J
    :cond_1
    iget-object v4, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mResponders:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to find a new request identifier."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 127
    :cond_2
    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->setRequestId(J)V

    .line 128
    iget-object v4, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mConnector:Lorg/chromium/mojo/bindings/Connector;

    invoke-virtual {v4, v0}, Lorg/chromium/mojo/bindings/Connector;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 129
    const/4 v3, 0x0

    .line 133
    :goto_0
    return v3

    .line 132
    :cond_3
    iget-object v4, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mResponders:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mConnector:Lorg/chromium/mojo/bindings/Connector;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Connector;->close()V

    .line 150
    return-void
.end method

.method public bridge synthetic passHandle()Lorg/chromium/mojo/system/Handle;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/RouterImpl;->passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    return-object v0
.end method

.method public passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mConnector:Lorg/chromium/mojo/bindings/Connector;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Connector;->passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    return-object v0
.end method

.method public setErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V
    .locals 1
    .param p1, "errorHandler"    # Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    .prologue
    .line 157
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mConnector:Lorg/chromium/mojo/bindings/Connector;

    invoke-virtual {v0, p1}, Lorg/chromium/mojo/bindings/Connector;->setErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V

    .line 158
    return-void
.end method

.method public setIncomingMessageReceiver(Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0
    .param p1, "incomingMessageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    .prologue
    .line 96
    iput-object p1, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mIncomingMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    .line 97
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/mojo/bindings/RouterImpl;->mConnector:Lorg/chromium/mojo/bindings/Connector;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Connector;->start()V

    .line 89
    return-void
.end method
