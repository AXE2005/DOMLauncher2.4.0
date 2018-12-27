.class public abstract Lorg/chromium/mojo/bindings/InterfaceWithClient$Manager;
.super Lorg/chromium/mojo/bindings/Interface$Manager;
.source "InterfaceWithClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/InterfaceWithClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Manager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Lorg/chromium/mojo/bindings/InterfaceWithClient",
        "<TCI;>;P::",
        "Lorg/chromium/mojo/bindings/InterfaceWithClient$Proxy",
        "<TCI;>;CI::",
        "Lorg/chromium/mojo/bindings/Interface;",
        ">",
        "Lorg/chromium/mojo/bindings/Interface$Manager",
        "<TI;TP;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    .local p0, "this":Lorg/chromium/mojo/bindings/InterfaceWithClient$Manager;, "Lorg/chromium/mojo/bindings/InterfaceWithClient$Manager<TI;TP;TCI;>;"
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Interface$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public attachProxy(Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/bindings/Interface;)Lorg/chromium/mojo/bindings/InterfaceWithClient$Proxy;
    .locals 5
    .param p1, "handle"    # Lorg/chromium/mojo/system/MessagePipeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/MessagePipeHandle;",
            "TCI;)TP;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lorg/chromium/mojo/bindings/InterfaceWithClient$Manager;, "Lorg/chromium/mojo/bindings/InterfaceWithClient$Manager<TI;TP;TCI;>;"
    .local p2, "client":Lorg/chromium/mojo/bindings/Interface;, "TCI;"
    new-instance v2, Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-direct {v2, p1}, Lorg/chromium/mojo/bindings/RouterImpl;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V

    .line 82
    .local v2, "router":Lorg/chromium/mojo/bindings/Router;
    new-instance v0, Lorg/chromium/mojo/bindings/DelegatingConnectionErrorHandler;

    invoke-direct {v0}, Lorg/chromium/mojo/bindings/DelegatingConnectionErrorHandler;-><init>()V

    .line 83
    .local v0, "handlers":Lorg/chromium/mojo/bindings/DelegatingConnectionErrorHandler;
    invoke-virtual {v0, p2}, Lorg/chromium/mojo/bindings/DelegatingConnectionErrorHandler;->addConnectionErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V

    .line 84
    invoke-interface {v2, v0}, Lorg/chromium/mojo/bindings/Router;->setErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V

    .line 85
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/InterfaceWithClient$Manager;->getClientManager()Lorg/chromium/mojo/bindings/Interface$Manager;

    move-result-object v3

    invoke-interface {p1}, Lorg/chromium/mojo/system/MessagePipeHandle;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v4

    invoke-virtual {v3, v4, p2, v2}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/bindings/Router;)V

    .line 86
    invoke-interface {p1}, Lorg/chromium/mojo/system/MessagePipeHandle;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v3

    invoke-super {p0, v3, v2}, Lorg/chromium/mojo/bindings/Interface$Manager;->attachProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Router;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v1

    check-cast v1, Lorg/chromium/mojo/bindings/InterfaceWithClient$Proxy;

    .line 87
    .local v1, "proxy":Lorg/chromium/mojo/bindings/InterfaceWithClient$Proxy;, "TP;"
    invoke-virtual {v0, v1}, Lorg/chromium/mojo/bindings/DelegatingConnectionErrorHandler;->addConnectionErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V

    .line 88
    invoke-interface {v2}, Lorg/chromium/mojo/bindings/Router;->start()V

    .line 89
    return-object v1
.end method

.method public bridge synthetic bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/system/MessagePipeHandle;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/mojo/bindings/Interface;
    .param p2, "x1"    # Lorg/chromium/mojo/system/MessagePipeHandle;

    .prologue
    .line 59
    .local p0, "this":Lorg/chromium/mojo/bindings/InterfaceWithClient$Manager;, "Lorg/chromium/mojo/bindings/InterfaceWithClient$Manager<TI;TP;TCI;>;"
    check-cast p1, Lorg/chromium/mojo/bindings/InterfaceWithClient;

    .end local p1    # "x0":Lorg/chromium/mojo/bindings/Interface;
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceWithClient$Manager;->bind(Lorg/chromium/mojo/bindings/InterfaceWithClient;Lorg/chromium/mojo/system/MessagePipeHandle;)V

    return-void
.end method

.method public final bind(Lorg/chromium/mojo/bindings/InterfaceWithClient;Lorg/chromium/mojo/system/MessagePipeHandle;)V
    .locals 4
    .param p2, "handle"    # Lorg/chromium/mojo/system/MessagePipeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lorg/chromium/mojo/system/MessagePipeHandle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lorg/chromium/mojo/bindings/InterfaceWithClient$Manager;, "Lorg/chromium/mojo/bindings/InterfaceWithClient$Manager<TI;TP;TCI;>;"
    .local p1, "impl":Lorg/chromium/mojo/bindings/InterfaceWithClient;, "TI;"
    new-instance v1, Lorg/chromium/mojo/bindings/RouterImpl;

    invoke-direct {v1, p2}, Lorg/chromium/mojo/bindings/RouterImpl;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V

    .line 68
    .local v1, "router":Lorg/chromium/mojo/bindings/Router;
    invoke-interface {p2}, Lorg/chromium/mojo/system/MessagePipeHandle;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    invoke-super {p0, v2, p1, v1}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/bindings/Router;)V

    .line 70
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/InterfaceWithClient$Manager;->getClientManager()Lorg/chromium/mojo/bindings/Interface$Manager;

    move-result-object v2

    invoke-interface {p2}, Lorg/chromium/mojo/system/MessagePipeHandle;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/chromium/mojo/bindings/Interface$Manager;->attachProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Router;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    .line 71
    .local v0, "client":Lorg/chromium/mojo/bindings/Interface;, "TCI;"
    invoke-interface {p1, v0}, Lorg/chromium/mojo/bindings/InterfaceWithClient;->setClient(Lorg/chromium/mojo/bindings/Interface;)V

    .line 72
    invoke-interface {v1}, Lorg/chromium/mojo/bindings/Router;->start()V

    .line 73
    return-void
.end method

.method protected abstract getClientManager()Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<TCI;*>;"
        }
    .end annotation
.end method

.method public final getInterfaceRequest(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)Lorg/chromium/mojo/system/Pair;
    .locals 4
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/Core;",
            "TCI;)",
            "Lorg/chromium/mojo/system/Pair",
            "<TP;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<TI;>;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lorg/chromium/mojo/bindings/InterfaceWithClient$Manager;, "Lorg/chromium/mojo/bindings/InterfaceWithClient$Manager<TI;TP;TCI;>;"
    .local p2, "client":Lorg/chromium/mojo/bindings/Interface;, "TCI;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lorg/chromium/mojo/system/Core;->createMessagePipe(Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;)Lorg/chromium/mojo/system/Pair;

    move-result-object v0

    .line 101
    .local v0, "handles":Lorg/chromium/mojo/system/Pair;, "Lorg/chromium/mojo/system/Pair<Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/system/MessagePipeHandle;>;"
    iget-object v2, v0, Lorg/chromium/mojo/system/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-virtual {p0, v2, p2}, Lorg/chromium/mojo/bindings/InterfaceWithClient$Manager;->attachProxy(Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/bindings/Interface;)Lorg/chromium/mojo/bindings/InterfaceWithClient$Proxy;

    move-result-object v1

    .line 102
    .local v1, "proxy":Lorg/chromium/mojo/bindings/InterfaceWithClient$Proxy;, "TP;"
    new-instance v3, Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v2, v0, Lorg/chromium/mojo/system/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-direct {v3, v2}, Lorg/chromium/mojo/bindings/InterfaceRequest;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V

    invoke-static {v1, v3}, Lorg/chromium/mojo/system/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lorg/chromium/mojo/system/Pair;

    move-result-object v2

    return-object v2
.end method
