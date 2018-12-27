.class public interface abstract Lorg/chromium/mojo/bindings/InterfaceWithClient;
.super Ljava/lang/Object;
.source "InterfaceWithClient.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/InterfaceWithClient$Manager;,
        Lorg/chromium/mojo/bindings/InterfaceWithClient$AbstractProxy;,
        Lorg/chromium/mojo/bindings/InterfaceWithClient$Proxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CI::",
        "Lorg/chromium/mojo/bindings/Interface;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/chromium/mojo/bindings/Interface;"
    }
.end annotation


# virtual methods
.method public abstract setClient(Lorg/chromium/mojo/bindings/Interface;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCI;)V"
        }
    .end annotation
.end method
