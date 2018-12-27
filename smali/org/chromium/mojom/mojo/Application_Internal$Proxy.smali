.class final Lorg/chromium/mojom/mojo/Application_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "Application_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/Application$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/Application_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Proxy"
.end annotation


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "messageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 45
    return-void
.end method


# virtual methods
.method public acceptConnection(Ljava/lang/String;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/ServiceProvider;)V
    .locals 5
    .param p1, "requestorUrl"    # Ljava/lang/String;
    .param p3, "exposedServices"    # Lorg/chromium/mojom/mojo/ServiceProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/mojo/ServiceProvider;",
            ">;",
            "Lorg/chromium/mojom/mojo/ServiceProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "services":Lorg/chromium/mojo/bindings/InterfaceRequest;, "Lorg/chromium/mojo/bindings/InterfaceRequest<Lorg/chromium/mojom/mojo/ServiceProvider;>;"
    new-instance v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;-><init>()V

    .line 61
    .local v0, "_message":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;
    iput-object p1, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->requestorUrl:Ljava/lang/String;

    .line 62
    iput-object p2, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->services:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 63
    iput-object p3, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->exposedServices:Lorg/chromium/mojom/mojo/ServiceProvider;

    .line 64
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Proxy;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Proxy;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 68
    return-void
.end method

.method public initialize(Lorg/chromium/mojom/mojo/Shell;[Ljava/lang/String;)V
    .locals 5
    .param p1, "shell"    # Lorg/chromium/mojom/mojo/Shell;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;-><init>()V

    .line 50
    .local v0, "_message":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;
    iput-object p1, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->shell:Lorg/chromium/mojom/mojo/Shell;

    .line 51
    iput-object p2, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->args:[Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Proxy;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Proxy;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 56
    return-void
.end method

.method public requestQuit()V
    .locals 5

    .prologue
    .line 72
    new-instance v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;-><init>()V

    .line 73
    .local v0, "_message":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Proxy;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Proxy;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 77
    return-void
.end method
