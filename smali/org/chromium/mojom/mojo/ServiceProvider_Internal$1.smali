.class final Lorg/chromium/mojom/mojo/ServiceProvider_Internal$1;
.super Lorg/chromium/mojo/bindings/Interface$Manager;
.source "ServiceProvider_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/ServiceProvider_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Manager",
        "<",
        "Lorg/chromium/mojom/mojo/ServiceProvider;",
        "Lorg/chromium/mojom/mojo/ServiceProvider$Proxy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Interface$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic buildArray(I)[Lorg/chromium/mojo/bindings/Interface;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lorg/chromium/mojom/mojo/ServiceProvider_Internal$1;->buildArray(I)[Lorg/chromium/mojom/mojo/ServiceProvider;

    move-result-object v0

    return-object v0
.end method

.method public buildArray(I)[Lorg/chromium/mojom/mojo/ServiceProvider;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 32
    new-array v0, p1, [Lorg/chromium/mojom/mojo/ServiceProvider;

    return-object v0
.end method

.method public bridge synthetic buildProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)Lorg/chromium/mojo/bindings/Interface$Proxy;
    .locals 1
    .param p1, "x0"    # Lorg/chromium/mojo/system/Core;
    .param p2, "x1"    # Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojom/mojo/ServiceProvider_Internal$1;->buildProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)Lorg/chromium/mojom/mojo/ServiceProvider_Internal$Proxy;

    move-result-object v0

    return-object v0
.end method

.method public buildProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)Lorg/chromium/mojom/mojo/ServiceProvider_Internal$Proxy;
    .locals 1
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "messageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    .prologue
    .line 24
    new-instance v0, Lorg/chromium/mojom/mojo/ServiceProvider_Internal$Proxy;

    invoke-direct {v0, p1, p2}, Lorg/chromium/mojom/mojo/ServiceProvider_Internal$Proxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-object v0
.end method

.method public bridge synthetic buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)Lorg/chromium/mojo/bindings/Interface$Stub;
    .locals 1
    .param p1, "x0"    # Lorg/chromium/mojo/system/Core;
    .param p2, "x1"    # Lorg/chromium/mojo/bindings/Interface;

    .prologue
    .line 16
    check-cast p2, Lorg/chromium/mojom/mojo/ServiceProvider;

    .end local p2    # "x1":Lorg/chromium/mojo/bindings/Interface;
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojom/mojo/ServiceProvider_Internal$1;->buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/mojo/ServiceProvider;)Lorg/chromium/mojom/mojo/ServiceProvider_Internal$Stub;

    move-result-object v0

    return-object v0
.end method

.method public buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/mojo/ServiceProvider;)Lorg/chromium/mojom/mojo/ServiceProvider_Internal$Stub;
    .locals 1
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "impl"    # Lorg/chromium/mojom/mojo/ServiceProvider;

    .prologue
    .line 28
    new-instance v0, Lorg/chromium/mojom/mojo/ServiceProvider_Internal$Stub;

    invoke-direct {v0, p1, p2}, Lorg/chromium/mojom/mojo/ServiceProvider_Internal$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/mojo/ServiceProvider;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "mojo::ServiceProvider"

    return-object v0
.end method
