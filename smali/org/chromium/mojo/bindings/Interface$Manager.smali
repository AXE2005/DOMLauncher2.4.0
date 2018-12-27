.class public abstract Lorg/chromium/mojo/bindings/Interface$Manager;
.super Ljava/lang/Object;
.source "Interface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/Interface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Manager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Lorg/chromium/mojo/bindings/Interface;",
        "P::",
        "Lorg/chromium/mojo/bindings/Interface$Proxy;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 174
    .local p0, "this":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<TI;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final attachProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Router;)Lorg/chromium/mojo/bindings/Interface$Proxy;
    .locals 1
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "router"    # Lorg/chromium/mojo/bindings/Router;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/Core;",
            "Lorg/chromium/mojo/bindings/Router;",
            ")TP;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "this":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<TI;TP;>;"
    new-instance v0, Lorg/chromium/mojo/bindings/AutoCloseableRouter;

    invoke-direct {v0, p1, p2}, Lorg/chromium/mojo/bindings/AutoCloseableRouter;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Router;)V

    invoke-virtual {p0, p1, v0}, Lorg/chromium/mojo/bindings/Interface$Manager;->buildProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    return-object v0
.end method

.method public final attachProxy(Lorg/chromium/mojo/system/MessagePipeHandle;)Lorg/chromium/mojo/bindings/Interface$Proxy;
    .locals 4
    .param p1, "handle"    # Lorg/chromium/mojo/system/MessagePipeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/MessagePipeHandle;",
            ")TP;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<TI;TP;>;"
    new-instance v2, Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-direct {v2, p1}, Lorg/chromium/mojo/bindings/RouterImpl;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V

    .line 207
    .local v2, "router":Lorg/chromium/mojo/bindings/RouterImpl;
    invoke-interface {p1}, Lorg/chromium/mojo/system/MessagePipeHandle;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Interface$Manager;->attachProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Router;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v1

    .line 208
    .local v1, "proxy":Lorg/chromium/mojo/bindings/Interface$Proxy;, "TP;"
    new-instance v0, Lorg/chromium/mojo/bindings/DelegatingConnectionErrorHandler;

    invoke-direct {v0}, Lorg/chromium/mojo/bindings/DelegatingConnectionErrorHandler;-><init>()V

    .line 209
    .local v0, "handlers":Lorg/chromium/mojo/bindings/DelegatingConnectionErrorHandler;
    invoke-virtual {v0, v1}, Lorg/chromium/mojo/bindings/DelegatingConnectionErrorHandler;->addConnectionErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V

    .line 210
    invoke-virtual {v2, v0}, Lorg/chromium/mojo/bindings/RouterImpl;->setErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V

    .line 211
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/RouterImpl;->start()V

    .line 212
    return-object v1
.end method

.method public final bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<TI;>;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<TI;TP;>;"
    .local p1, "impl":Lorg/chromium/mojo/bindings/Interface;, "TI;"
    .local p2, "request":Lorg/chromium/mojo/bindings/InterfaceRequest;, "Lorg/chromium/mojo/bindings/InterfaceRequest<TI;>;"
    invoke-virtual {p2}, Lorg/chromium/mojo/bindings/InterfaceRequest;->passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/system/MessagePipeHandle;)V

    .line 199
    return-void
.end method

.method public bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/system/MessagePipeHandle;)V
    .locals 2
    .param p2, "handle"    # Lorg/chromium/mojo/system/MessagePipeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/chromium/mojo/system/MessagePipeHandle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<TI;TP;>;"
    .local p1, "impl":Lorg/chromium/mojo/bindings/Interface;, "TI;"
    new-instance v0, Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-direct {v0, p2}, Lorg/chromium/mojo/bindings/RouterImpl;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V

    .line 190
    .local v0, "router":Lorg/chromium/mojo/bindings/Router;
    invoke-interface {p2}, Lorg/chromium/mojo/system/MessagePipeHandle;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/bindings/Router;)V

    .line 191
    invoke-interface {v0}, Lorg/chromium/mojo/bindings/Router;->start()V

    .line 192
    return-void
.end method

.method final bind(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/bindings/Router;)V
    .locals 1
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p3, "router"    # Lorg/chromium/mojo/bindings/Router;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/Core;",
            "TI;",
            "Lorg/chromium/mojo/bindings/Router;",
            ")V"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<TI;TP;>;"
    .local p2, "impl":Lorg/chromium/mojo/bindings/Interface;, "TI;"
    invoke-interface {p3, p2}, Lorg/chromium/mojo/bindings/Router;->setErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V

    .line 231
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Manager;->buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)Lorg/chromium/mojo/bindings/Interface$Stub;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/chromium/mojo/bindings/Router;->setIncomingMessageReceiver(Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 232
    return-void
.end method

.method protected abstract buildArray(I)[Lorg/chromium/mojo/bindings/Interface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TI;"
        }
    .end annotation
.end method

.method protected abstract buildProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)Lorg/chromium/mojo/bindings/Interface$Proxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/Core;",
            "Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;",
            ")TP;"
        }
    .end annotation
.end method

.method protected abstract buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)Lorg/chromium/mojo/bindings/Interface$Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/Core;",
            "TI;)",
            "Lorg/chromium/mojo/bindings/Interface$Stub",
            "<TI;>;"
        }
    .end annotation
.end method

.method public final getInterfaceRequest(Lorg/chromium/mojo/system/Core;)Lorg/chromium/mojo/system/Pair;
    .locals 4
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/Core;",
            ")",
            "Lorg/chromium/mojo/system/Pair",
            "<TP;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<TI;>;>;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<TI;TP;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lorg/chromium/mojo/system/Core;->createMessagePipe(Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;)Lorg/chromium/mojo/system/Pair;

    move-result-object v0

    .line 222
    .local v0, "handles":Lorg/chromium/mojo/system/Pair;, "Lorg/chromium/mojo/system/Pair<Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/system/MessagePipeHandle;>;"
    iget-object v2, v0, Lorg/chromium/mojo/system/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Interface$Manager;->attachProxy(Lorg/chromium/mojo/system/MessagePipeHandle;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v1

    .line 223
    .local v1, "proxy":Lorg/chromium/mojo/bindings/Interface$Proxy;, "TP;"
    new-instance v3, Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v2, v0, Lorg/chromium/mojo/system/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-direct {v3, v2}, Lorg/chromium/mojo/bindings/InterfaceRequest;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V

    invoke-static {v1, v3}, Lorg/chromium/mojo/system/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lorg/chromium/mojo/system/Pair;

    move-result-object v2

    return-object v2
.end method

.method public abstract getName()Ljava/lang/String;
.end method
