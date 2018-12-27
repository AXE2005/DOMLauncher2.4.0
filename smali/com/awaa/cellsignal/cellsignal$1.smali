.class Lcom/awaa/cellsignal/cellsignal$1;
.super Landroid/telephony/PhoneStateListener;
.source "cellsignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/awaa/cellsignal/cellsignal;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/awaa/cellsignal/cellsignal;


# direct methods
.method constructor <init>(Lcom/awaa/cellsignal/cellsignal;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/awaa/cellsignal/cellsignal$1;->this$0:Lcom/awaa/cellsignal/cellsignal;

    .line 21
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 27
    const/4 v0, -0x1

    .line 28
    .local v0, "strengthDbm":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit16 v0, v1, -0x8c

    .line 36
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/awaa/cellsignal/cellsignal$1;->this$0:Lcom/awaa/cellsignal/cellsignal;

    invoke-static {v1, v0}, Lcom/awaa/cellsignal/cellsignal;->access$0(Lcom/awaa/cellsignal/cellsignal;I)V

    .line 37
    return-void

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 33
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    goto :goto_0
.end method
