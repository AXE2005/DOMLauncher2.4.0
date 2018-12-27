.class Lorg/chromium/mojom/mojo/ServiceProvider_Internal;
.super Ljava/lang/Object;
.source "ServiceProvider_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/ServiceProvider_Internal$ServiceProviderConnectToServiceParams;,
        Lorg/chromium/mojom/mojo/ServiceProvider_Internal$Stub;,
        Lorg/chromium/mojom/mojo/ServiceProvider_Internal$Proxy;
    }
.end annotation


# static fields
.field private static final CONNECT_TO_SERVICE_ORDINAL:I

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
    .line 15
    new-instance v0, Lorg/chromium/mojom/mojo/ServiceProvider_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/ServiceProvider_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/mojo/ServiceProvider_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method
