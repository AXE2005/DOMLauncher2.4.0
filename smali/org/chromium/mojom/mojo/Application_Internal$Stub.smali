.class final Lorg/chromium/mojom/mojo/Application_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "Application_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/Application_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub",
        "<",
        "Lorg/chromium/mojom/mojo/Application;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/mojo/Application;)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "impl"    # Lorg/chromium/mojom/mojo/Application;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 85
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 10
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v3

    .line 92
    .local v3, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 93
    .local v2, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 118
    .end local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v4

    .line 96
    .restart local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v4, v5

    .line 115
    goto :goto_0

    .line 98
    :pswitch_0
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;

    move-result-object v0

    .line 100
    .local v0, "data":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojom/mojo/Application;

    iget-object v7, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->shell:Lorg/chromium/mojom/mojo/Shell;

    iget-object v8, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->args:[Ljava/lang/String;

    invoke-interface {v4, v7, v8}, Lorg/chromium/mojom/mojo/Application;->initialize(Lorg/chromium/mojom/mojo/Shell;[Ljava/lang/String;)V

    move v4, v6

    .line 101
    goto :goto_0

    .line 104
    .end local v0    # "data":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;
    :pswitch_1
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;

    move-result-object v0

    .line 106
    .local v0, "data":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojom/mojo/Application;

    iget-object v7, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->requestorUrl:Ljava/lang/String;

    iget-object v8, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->services:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v9, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->exposedServices:Lorg/chromium/mojom/mojo/ServiceProvider;

    invoke-interface {v4, v7, v8, v9}, Lorg/chromium/mojom/mojo/Application;->acceptConnection(Ljava/lang/String;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/ServiceProvider;)V

    move v4, v6

    .line 107
    goto :goto_0

    .line 110
    .end local v0    # "data":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;
    :pswitch_2
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/Application_Internal$ApplicationRequestQuitParams;

    .line 111
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojom/mojo/Application;

    invoke-interface {v4}, Lorg/chromium/mojom/mojo/Application;->requestQuit()V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    .line 112
    goto :goto_0

    .line 117
    .end local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    move v4, v5

    .line 118
    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 1
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;
    .param p2, "receiver"    # Lorg/chromium/mojo/bindings/MessageReceiver;

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method
