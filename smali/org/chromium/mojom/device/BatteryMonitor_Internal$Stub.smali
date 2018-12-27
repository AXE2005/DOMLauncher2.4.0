.class final Lorg/chromium/mojom/device/BatteryMonitor_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "BatteryMonitor_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/device/BatteryMonitor_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub",
        "<",
        "Lorg/chromium/mojom/device/BatteryMonitor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/device/BatteryMonitor;)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "impl"    # Lorg/chromium/mojom/device/BatteryMonitor;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 64
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 1
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 10
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;
    .param p2, "receiver"    # Lorg/chromium/mojo/bindings/MessageReceiver;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    .line 76
    .local v2, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    .line 77
    .local v1, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 90
    .end local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v3

    .line 80
    .restart local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v3, v4

    .line 87
    goto :goto_0

    .line 82
    :pswitch_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusParams;

    .line 83
    invoke-virtual {p0}, Lorg/chromium/mojom/device/BatteryMonitor_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v3

    check-cast v3, Lorg/chromium/mojom/device/BatteryMonitor;

    new-instance v6, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/device/BatteryMonitor_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v7

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v8

    invoke-direct {v6, v7, p2, v8, v9}, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v3, v6}, Lorg/chromium/mojom/device/BatteryMonitor;->queryNextStatus(Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    .line 84
    goto :goto_0

    .line 89
    .end local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    move v3, v4

    .line 90
    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
