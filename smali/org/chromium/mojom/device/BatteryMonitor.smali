.class public interface abstract Lorg/chromium/mojom/device/BatteryMonitor;
.super Ljava/lang/Object;
.source "BatteryMonitor.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;,
        Lorg/chromium/mojom/device/BatteryMonitor$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/device/BatteryMonitor;",
            "Lorg/chromium/mojom/device/BatteryMonitor$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lorg/chromium/mojom/device/BatteryMonitor_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/device/BatteryMonitor;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract queryNextStatus(Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;)V
.end method
