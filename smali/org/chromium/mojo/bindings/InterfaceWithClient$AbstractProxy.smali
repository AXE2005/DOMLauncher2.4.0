.class public abstract Lorg/chromium/mojo/bindings/InterfaceWithClient$AbstractProxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "InterfaceWithClient.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/InterfaceWithClient$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/InterfaceWithClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CI::",
        "Lorg/chromium/mojo/bindings/Interface;",
        ">",
        "Lorg/chromium/mojo/bindings/Interface$AbstractProxy;",
        "Lorg/chromium/mojo/bindings/InterfaceWithClient$Proxy",
        "<TCI;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "messageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    .prologue
    .line 39
    .local p0, "this":Lorg/chromium/mojo/bindings/InterfaceWithClient$AbstractProxy;, "Lorg/chromium/mojo/bindings/InterfaceWithClient$AbstractProxy<TCI;>;"
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 40
    return-void
.end method


# virtual methods
.method public setClient(Lorg/chromium/mojo/bindings/Interface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCI;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/chromium/mojo/bindings/InterfaceWithClient$AbstractProxy;, "Lorg/chromium/mojo/bindings/InterfaceWithClient$AbstractProxy<TCI;>;"
    .local p1, "client":Lorg/chromium/mojo/bindings/Interface;, "TCI;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting the client on a proxy is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
