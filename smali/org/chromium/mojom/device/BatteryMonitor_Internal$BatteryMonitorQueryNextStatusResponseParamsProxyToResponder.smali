.class Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "BatteryMonitor_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/device/BatteryMonitor_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatteryMonitorQueryNextStatusResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "messageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiver;
    .param p3, "requestId"    # J

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 252
    iput-object p2, p0, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 253
    iput-wide p3, p0, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParamsProxyToResponder;->mRequestId:J

    .line 254
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 241
    check-cast p1, Lorg/chromium/mojom/device/BatteryStatus;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParamsProxyToResponder;->call(Lorg/chromium/mojom/device/BatteryStatus;)V

    return-void
.end method

.method public call(Lorg/chromium/mojom/device/BatteryStatus;)V
    .locals 8
    .param p1, "status"    # Lorg/chromium/mojom/device/BatteryStatus;

    .prologue
    .line 258
    new-instance v1, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;

    invoke-direct {v1}, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;-><init>()V

    .line 259
    .local v1, "_response":Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;
    iput-object p1, v1, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;->status:Lorg/chromium/mojom/device/BatteryStatus;

    .line 260
    iget-object v2, p0, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 267
    .local v0, "_message":Lorg/chromium/mojo/bindings/ServiceMessage;
    iget-object v2, p0, Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v2, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 268
    return-void
.end method
