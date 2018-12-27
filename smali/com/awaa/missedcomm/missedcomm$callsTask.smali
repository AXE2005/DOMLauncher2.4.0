.class Lcom/awaa/missedcomm/missedcomm$callsTask;
.super Ljava/util/TimerTask;
.source "missedcomm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/awaa/missedcomm/missedcomm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "callsTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/awaa/missedcomm/missedcomm;


# direct methods
.method constructor <init>(Lcom/awaa/missedcomm/missedcomm;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/awaa/missedcomm/missedcomm$callsTask;->this$0:Lcom/awaa/missedcomm/missedcomm;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/awaa/missedcomm/missedcomm$callsTask;->this$0:Lcom/awaa/missedcomm/missedcomm;

    iget-object v1, p0, Lcom/awaa/missedcomm/missedcomm$callsTask;->this$0:Lcom/awaa/missedcomm/missedcomm;

    iget-object v1, v1, Lcom/awaa/missedcomm/missedcomm;->callsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/awaa/missedcomm/missedcomm;->access$1(Lcom/awaa/missedcomm/missedcomm;Ljava/lang/String;)V

    .line 101
    return-void
.end method
