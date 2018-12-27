.class Lorg/chromium/media/AudioManagerAndroid$3;
.super Landroid/content/BroadcastReceiver;
.source "AudioManagerAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/AudioManagerAndroid;->registerForBluetoothScoIntentBroadcast()V
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
    .line 838
    iput-object p1, p0, Lorg/chromium/media/AudioManagerAndroid$3;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 841
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 850
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 861
    const-string v1, "Invalid state"

    invoke-static {v1}, Lorg/chromium/media/AudioManagerAndroid;->access$400(Ljava/lang/String;)V

    .line 866
    :goto_0
    :pswitch_0
    return-void

    .line 852
    :pswitch_1
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid$3;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/chromium/media/AudioManagerAndroid;->access$702(Lorg/chromium/media/AudioManagerAndroid;I)I

    goto :goto_0

    .line 855
    :pswitch_2
    iget-object v1, p0, Lorg/chromium/media/AudioManagerAndroid$3;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-static {v1, v2}, Lorg/chromium/media/AudioManagerAndroid;->access$702(Lorg/chromium/media/AudioManagerAndroid;I)I

    goto :goto_0

    .line 850
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
