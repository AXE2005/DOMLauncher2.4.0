.class Lorg/apache/cordova/CordovaActivity$6;
.super Ljava/lang/Object;
.source "CordovaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/CordovaActivity;->showSplashScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/CordovaActivity;

.field private final synthetic val$that:Lorg/apache/cordova/CordovaActivity;

.field private final synthetic val$time:I


# direct methods
.method constructor <init>(Lorg/apache/cordova/CordovaActivity;Lorg/apache/cordova/CordovaActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/cordova/CordovaActivity$6;->this$0:Lorg/apache/cordova/CordovaActivity;

    iput-object p2, p0, Lorg/apache/cordova/CordovaActivity$6;->val$that:Lorg/apache/cordova/CordovaActivity;

    iput p3, p0, Lorg/apache/cordova/CordovaActivity$6;->val$time:I

    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/apache/cordova/CordovaActivity$6;)Lorg/apache/cordova/CordovaActivity;
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity$6;->this$0:Lorg/apache/cordova/CordovaActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1032
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$6;->this$0:Lorg/apache/cordova/CordovaActivity;

    iget-object v2, p0, Lorg/apache/cordova/CordovaActivity$6;->this$0:Lorg/apache/cordova/CordovaActivity;

    invoke-virtual {v2}, Lorg/apache/cordova/CordovaActivity;->getSplashLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/cordova/CordovaActivity;->splashLayout:Landroid/widget/LinearLayout;

    .line 1034
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$6;->this$0:Lorg/apache/cordova/CordovaActivity;

    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lorg/apache/cordova/CordovaActivity$6;->val$that:Lorg/apache/cordova/CordovaActivity;

    const v4, 0x1030010

    invoke-direct {v2, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, v1, Lorg/apache/cordova/CordovaActivity;->splashDialog:Landroid/app/Dialog;

    .line 1036
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$6;->this$0:Lorg/apache/cordova/CordovaActivity;

    const-string v2, "FullScreen"

    invoke-virtual {v1, v2, v5}, Lorg/apache/cordova/CordovaActivity;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1038
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$6;->this$0:Lorg/apache/cordova/CordovaActivity;

    iget-object v2, p0, Lorg/apache/cordova/CordovaActivity$6;->this$0:Lorg/apache/cordova/CordovaActivity;

    iget-object v2, v2, Lorg/apache/cordova/CordovaActivity;->splashDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/cordova/CordovaActivity;->access$1(Lorg/apache/cordova/CordovaActivity;Landroid/view/Window;)V

    .line 1040
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 1041
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$6;->this$0:Lorg/apache/cordova/CordovaActivity;

    iget-object v1, v1, Lorg/apache/cordova/CordovaActivity;->splashDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/apache/cordova/CordovaActivity$6$1;

    invoke-direct {v2, p0}, Lorg/apache/cordova/CordovaActivity$6$1;-><init>(Lorg/apache/cordova/CordovaActivity$6;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 1052
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$6;->this$0:Lorg/apache/cordova/CordovaActivity;

    iget-object v1, v1, Lorg/apache/cordova/CordovaActivity;->splashDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lorg/apache/cordova/CordovaActivity$6;->this$0:Lorg/apache/cordova/CordovaActivity;

    iget-object v2, v2, Lorg/apache/cordova/CordovaActivity;->splashLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1053
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$6;->this$0:Lorg/apache/cordova/CordovaActivity;

    iget-object v1, v1, Lorg/apache/cordova/CordovaActivity;->splashDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1054
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$6;->this$0:Lorg/apache/cordova/CordovaActivity;

    iget-object v1, v1, Lorg/apache/cordova/CordovaActivity;->splashDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1056
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$6;->this$0:Lorg/apache/cordova/CordovaActivity;

    iget-object v2, p0, Lorg/apache/cordova/CordovaActivity$6;->this$0:Lorg/apache/cordova/CordovaActivity;

    invoke-virtual {v2}, Lorg/apache/cordova/CordovaActivity;->getScreenOrientation()I

    move-result v2

    iput v2, v1, Lorg/apache/cordova/CordovaActivity;->mCurrentOrientation:I

    .line 1057
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$6;->this$0:Lorg/apache/cordova/CordovaActivity;

    new-instance v2, Lorg/apache/cordova/CordovaActivity$6$2;

    iget-object v3, p0, Lorg/apache/cordova/CordovaActivity$6;->val$that:Lorg/apache/cordova/CordovaActivity;

    .line 1058
    const/4 v4, 0x3

    invoke-direct {v2, p0, v3, v4}, Lorg/apache/cordova/CordovaActivity$6$2;-><init>(Lorg/apache/cordova/CordovaActivity$6;Landroid/content/Context;I)V

    .line 1057
    iput-object v2, v1, Lorg/apache/cordova/CordovaActivity;->splashOrientationListener:Landroid/view/OrientationEventListener;

    .line 1072
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$6;->this$0:Lorg/apache/cordova/CordovaActivity;

    iget-object v1, v1, Lorg/apache/cordova/CordovaActivity;->splashOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 1075
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1076
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lorg/apache/cordova/CordovaActivity$6$3;

    invoke-direct {v1, p0}, Lorg/apache/cordova/CordovaActivity$6$3;-><init>(Lorg/apache/cordova/CordovaActivity$6;)V

    .line 1080
    iget v2, p0, Lorg/apache/cordova/CordovaActivity$6;->val$time:I

    int-to-long v2, v2

    .line 1076
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1081
    return-void
.end method
