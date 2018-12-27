.class public interface abstract Lorg/chromium/mojom/mojo/Shell;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/Shell$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/mojo/Shell;",
            "Lorg/chromium/mojom/mojo/Shell$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lorg/chromium/mojom/mojo/Shell_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/mojo/Shell;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract connectToApplication(Ljava/lang/String;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/ServiceProvider;)V
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
.end method
