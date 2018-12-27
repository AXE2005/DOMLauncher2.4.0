.class Lcom/awaa/missedcomm/missedcomm$SMSTask;
.super Ljava/util/TimerTask;
.source "missedcomm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/awaa/missedcomm/missedcomm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SMSTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/awaa/missedcomm/missedcomm;


# direct methods
.method constructor <init>(Lcom/awaa/missedcomm/missedcomm;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/awaa/missedcomm/missedcomm$SMSTask;->this$0:Lcom/awaa/missedcomm/missedcomm;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/awaa/missedcomm/missedcomm$SMSTask;->this$0:Lcom/awaa/missedcomm/missedcomm;

    iget-object v1, p0, Lcom/awaa/missedcomm/missedcomm$SMSTask;->this$0:Lcom/awaa/missedcomm/missedcomm;

    iget-object v1, v1, Lcom/awaa/missedcomm/missedcomm;->smsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/awaa/missedcomm/missedcomm;->access$0(Lcom/awaa/missedcomm/missedcomm;Ljava/lang/String;)V

    .line 44
    return-void
.end method
