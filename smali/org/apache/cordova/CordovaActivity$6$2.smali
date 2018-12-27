.class Lorg/apache/cordova/CordovaActivity$6$2;
.super Landroid/view/OrientationEventListener;
.source "CordovaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/CordovaActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/CordovaActivity$6;


# direct methods
.method constructor <init>(Lorg/apache/cordova/CordovaActivity$6;Landroid/content/Context;I)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/CordovaActivity$6$2;->this$1:Lorg/apache/cordova/CordovaActivity$6;

    .line 1057
    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "ori"    # I

    .prologue
    .line 1060
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$6$2;->this$1:Lorg/apache/cordova/CordovaActivity$6;

    invoke-static {v1}, Lorg/apache/cordova/CordovaActivity$6;->access$0(Lorg/apache/cordova/CordovaActivity$6;)Lorg/apache/cordova/CordovaActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/cordova/CordovaActivity;->splashDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$6$2;->this$1:Lorg/apache/cordova/CordovaActivity$6;

    invoke-static {v1}, Lorg/apache/cordova/CordovaActivity$6;->access$0(Lorg/apache/cordova/CordovaActivity$6;)Lorg/apache/cordova/CordovaActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/cordova/CordovaActivity;->splashDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$6$2;->this$1:Lorg/apache/cordova/CordovaActivity$6;

    invoke-static {v1}, Lorg/apache/cordova/CordovaActivity$6;->access$0(Lorg/apache/cordova/CordovaActivity$6;)Lorg/apache/cordova/CordovaActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/cordova/CordovaActivity;->getScreenOrientation()I

    move-result v0

    .line 1065
    .local v0, "orientation":I
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$6$2;->this$1:Lorg/apache/cordova/CordovaActivity$6;

    invoke-static {v1}, Lorg/apache/cordova/CordovaActivity$6;->access$0(Lorg/apache/cordova/CordovaActivity$6;)Lorg/apache/cordova/CordovaActivity;

    move-result-object v1

    iget v1, v1, Lorg/apache/cordova/CordovaActivity;->mCurrentOrientation:I

    if-eq v0, v1, :cond_0

    .line 1066
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$6$2;->this$1:Lorg/apache/cordova/CordovaActivity$6;

    invoke-static {v1}, Lorg/apache/cordova/CordovaActivity$6;->access$0(Lorg/apache/cordova/CordovaActivity$6;)Lorg/apache/cordova/CordovaActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/CordovaActivity$6$2;->this$1:Lorg/apache/cordova/CordovaActivity$6;

    invoke-static {v2}, Lorg/apache/cordova/CordovaActivity$6;->access$0(Lorg/apache/cordova/CordovaActivity$6;)Lorg/apache/cordova/CordovaActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/cordova/CordovaActivity;->getSplashLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/cordova/CordovaActivity;->splashLayout:Landroid/widget/LinearLayout;

    .line 1067
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$6$2;->this$1:Lorg/apache/cordova/CordovaActivity$6;

    invoke-static {v1}, Lorg/apache/cordova/CordovaActivity$6;->access$0(Lorg/apache/cordova/CordovaActivity$6;)Lorg/apache/cordova/CordovaActivity;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/cordova/CordovaActivity;->splashDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lorg/apache/cordova/CordovaActivity$6$2;->this$1:Lorg/apache/cordova/CordovaActivity$6;

    invoke-static {v2}, Lorg/apache/cordova/CordovaActivity$6;->access$0(Lorg/apache/cordova/CordovaActivity$6;)Lorg/apache/cordova/CordovaActivity;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/cordova/CordovaActivity;->splashLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1068
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$6$2;->this$1:Lorg/apache/cordova/CordovaActivity$6;

    invoke-static {v1}, Lorg/apache/cordova/CordovaActivity$6;->access$0(Lorg/apache/cordova/CordovaActivity$6;)Lorg/apache/cordova/CordovaActivity;

    move-result-object v1

    iput v0, v1, Lorg/apache/cordova/CordovaActivity;->mCurrentOrientation:I

    goto :goto_0
.end method
