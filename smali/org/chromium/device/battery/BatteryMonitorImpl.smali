.class public Lorg/chromium/device/battery/BatteryMonitorImpl;
.super Ljava/lang/Object;
.source "BatteryMonitorImpl.java"

# interfaces
.implements Lorg/chromium/mojom/device/BatteryMonitor;


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final mFactory:Lorg/chromium/device/battery/BatteryMonitorFactory;

.field private mHasStatusToReport:Z

.field private mStatus:Lorg/chromium/mojom/device/BatteryStatus;

.field private mSubscribed:Z


# direct methods
.method public constructor <init>(Lorg/chromium/device/battery/BatteryMonitorFactory;)V
    .locals 1
    .param p1, "batteryMonitorFactory"    # Lorg/chromium/device/battery/BatteryMonitorFactory;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mFactory:Lorg/chromium/device/battery/BatteryMonitorFactory;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mCallbacks:Ljava/util/List;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mHasStatusToReport:Z

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mSubscribed:Z

    .line 31
    return-void
.end method

.method private unsubscribe()V
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mSubscribed:Z

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mFactory:Lorg/chromium/device/battery/BatteryMonitorFactory;

    invoke-virtual {v0, p0}, Lorg/chromium/device/battery/BatteryMonitorFactory;->unsubscribe(Lorg/chromium/device/battery/BatteryMonitorImpl;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mSubscribed:Z

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/chromium/device/battery/BatteryMonitorImpl;->unsubscribe()V

    .line 43
    return-void
.end method

.method didChange(Lorg/chromium/mojom/device/BatteryStatus;)V
    .locals 1
    .param p1, "batteryStatus"    # Lorg/chromium/mojom/device/BatteryStatus;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mStatus:Lorg/chromium/mojom/device/BatteryStatus;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mHasStatusToReport:Z

    .line 63
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lorg/chromium/device/battery/BatteryMonitorImpl;->reportStatus()V

    .line 66
    :cond_0
    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0
    .param p1, "e"    # Lorg/chromium/mojo/system/MojoException;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/chromium/device/battery/BatteryMonitorImpl;->unsubscribe()V

    .line 48
    return-void
.end method

.method public queryNextStatus(Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;)V
    .locals 1
    .param p1, "callback"    # Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-boolean v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mHasStatusToReport:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lorg/chromium/device/battery/BatteryMonitorImpl;->reportStatus()V

    .line 57
    :cond_0
    return-void
.end method

.method reportStatus()V
    .locals 3

    .prologue
    .line 69
    iget-object v2, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;

    .line 70
    .local v0, "callback":Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;
    iget-object v2, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mStatus:Lorg/chromium/mojom/device/BatteryStatus;

    invoke-interface {v0, v2}, Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    .end local v0    # "callback":Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;
    :cond_0
    iget-object v2, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 73
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mHasStatusToReport:Z

    .line 74
    return-void
.end method
