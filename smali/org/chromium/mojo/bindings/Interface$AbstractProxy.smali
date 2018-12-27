.class public abstract Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.super Ljava/lang/Object;
.source "Interface.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/Interface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractProxy"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;


# direct methods
.method protected constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 1
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "messageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    .line 69
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->mCore:Lorg/chromium/mojo/system/Core;

    .line 70
    iput-object p2, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    .line 71
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    invoke-interface {v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->close()V

    .line 111
    return-void
.end method

.method protected getCore()Lorg/chromium/mojo/system/Core;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->mCore:Lorg/chromium/mojo/system/Core;

    return-object v0
.end method

.method protected getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    return-object v0
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 1
    .param p1, "e"    # Lorg/chromium/mojo/system/MojoException;

    .prologue
    .line 100
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    invoke-interface {v0, p1}, Lorg/chromium/mojo/bindings/ConnectionErrorHandler;->onConnectionError(Lorg/chromium/mojo/system/MojoException;)V

    .line 103
    :cond_0
    return-void
.end method

.method public setErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V
    .locals 0
    .param p1, "errorHandler"    # Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    .line 93
    return-void
.end method
