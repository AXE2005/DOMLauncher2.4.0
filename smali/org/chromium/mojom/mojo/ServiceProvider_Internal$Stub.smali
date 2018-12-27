.class final Lorg/chromium/mojom/mojo/ServiceProvider_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "ServiceProvider_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/ServiceProvider_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub",
        "<",
        "Lorg/chromium/mojom/mojo/ServiceProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/mojo/ServiceProvider;)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "impl"    # Lorg/chromium/mojom/mojo/ServiceProvider;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 62
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 8
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    const/4 v5, 0x0

    .line 67
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v3

    .line 69
    .local v3, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 70
    .local v2, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 84
    .end local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v4

    .line 73
    .restart local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v4, v5

    .line 81
    goto :goto_0

    .line 75
    :pswitch_0
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojom/mojo/ServiceProvider_Internal$ServiceProviderConnectToServiceParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/ServiceProvider_Internal$ServiceProviderConnectToServiceParams;

    move-result-object v0

    .line 77
    .local v0, "data":Lorg/chromium/mojom/mojo/ServiceProvider_Internal$ServiceProviderConnectToServiceParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/ServiceProvider_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojom/mojo/ServiceProvider;

    iget-object v6, v0, Lorg/chromium/mojom/mojo/ServiceProvider_Internal$ServiceProviderConnectToServiceParams;->interfaceName:Ljava/lang/String;

    iget-object v7, v0, Lorg/chromium/mojom/mojo/ServiceProvider_Internal$ServiceProviderConnectToServiceParams;->pipe:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {v4, v6, v7}, Lorg/chromium/mojom/mojo/ServiceProvider;->connectToService(Ljava/lang/String;Lorg/chromium/mojo/system/MessagePipeHandle;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    const/4 v4, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "data":Lorg/chromium/mojom/mojo/ServiceProvider_Internal$ServiceProviderConnectToServiceParams;
    .end local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    move v4, v5

    .line 84
    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 1
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;
    .param p2, "receiver"    # Lorg/chromium/mojo/bindings/MessageReceiver;

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method
