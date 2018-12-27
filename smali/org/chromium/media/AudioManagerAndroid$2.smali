.class Lorg/chromium/media/AudioManagerAndroid$2;
.super Landroid/content/BroadcastReceiver;
.source "AudioManagerAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/AudioManagerAndroid;->registerForBluetoothHeadsetIntentBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/AudioManagerAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/media/AudioManagerAndroid;)V
    .locals 0

    .prologue
    .line 769
    iput-object p1, p0, Lorg/chromium/media/AudioManagerAndroid$2;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 775
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 784
    .local v0, "profileState":I
    packed-switch v0, :pswitch_data_0

    .line 807
    const-string v1, "Invalid state"

    invoke-static {v1}, Lorg/chromium/media/AudioManagerAndroid;->access$400(Ljava/lang/String;)V

    .line 813
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid$2;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-static {v1}, Lorg/chromium/media/AudioManagerAndroid;->access$500(Lorg/chromium/media/AudioManagerAndroid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 814
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid$2;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-static {v1}, Lorg/chromium/media/AudioManagerAndroid;->access$600(Lorg/chromium/media/AudioManagerAndroid;)V

    .line 818
    :cond_0
    return-void

    .line 789
    :pswitch_1
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid$2;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-static {v1}, Lorg/chromium/media/AudioManagerAndroid;->access$100(Lorg/chromium/media/AudioManagerAndroid;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 791
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid$2;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-static {v1}, Lorg/chromium/media/AudioManagerAndroid;->access$200(Lorg/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v1

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-boolean v4, v1, v3

    .line 792
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 795
    :pswitch_2
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid$2;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-static {v1}, Lorg/chromium/media/AudioManagerAndroid;->access$100(Lorg/chromium/media/AudioManagerAndroid;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 797
    :try_start_1
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid$2;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-static {v1}, Lorg/chromium/media/AudioManagerAndroid;->access$200(Lorg/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v1

    const/4 v3, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 798
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 784
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
