.class Lorg/chromium/mojom/mojo/Shell_Internal;
.super Ljava/lang/Object;
.source "Shell_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;,
        Lorg/chromium/mojom/mojo/Shell_Internal$Stub;,
        Lorg/chromium/mojom/mojo/Shell_Internal$Proxy;
    }
.end annotation


# static fields
.field private static final CONNECT_TO_APPLICATION_ORDINAL:I

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
    .line 15
    new-instance v0, Lorg/chromium/mojom/mojo/Shell_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/Shell_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/mojo/Shell_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method
