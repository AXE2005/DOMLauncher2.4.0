.class public interface abstract Lorg/chromium/mojom/mojo/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/ServiceProvider$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/mojo/ServiceProvider;",
            "Lorg/chromium/mojom/mojo/ServiceProvider$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lorg/chromium/mojom/mojo/ServiceProvider_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/mojo/ServiceProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract connectToService(Ljava/lang/String;Lorg/chromium/mojo/system/MessagePipeHandle;)V
.end method
